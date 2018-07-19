#define VOLTAGE 3.3
// Serial Speed
#define SERIAL_SPEED 38400

// Software Serial library
#include <SoftwareSerial.h>

// Define the Software Serial Pins like this
#define PIN_SOFT_RX 3
#define PIN_SOFT_TX 4
#define RESET 5
#define SOFT_SERIAL_SPEED 9600
// Software serial object instantiation
SoftwareSerial softSerial(PIN_SOFT_RX, PIN_SOFT_TX);

// Input buffer (of size BUF_SIZE). stores a single line
#define BUF_SIZE 30
char charBuf[BUF_SIZE];
unsigned int bufPos = 0;
char charBufSoft[BUF_SIZE];
unsigned int bufPosSoft = 0;
unsigned int state = 0;


void setup() {
  // (10, A1), (11, A2)
  pinMode(10, OUTPUT); // A1, backwards, left
  pinMode(11, OUTPUT); // A2, forward
  pinMode(6, OUTPUT); // B1, backwards, right 
  pinMode(9, OUTPUT); // B2 , forward
   // Inititate serial communication
  Serial.begin(SERIAL_SPEED);
  // Same with softserial
  softSerial.begin(SOFT_SERIAL_SPEED);

  // clear the char buf
  for (int i = 0; i < BUF_SIZE; i++) {
    charBuf[i] = ' ';
  }

  for (int i = 0; i < BUF_SIZE; i++) {
    charBufSoft[i] = ' ';
  }

  pinMode(RESET, OUTPUT);
  //digitalWrite(RESET, LOW);
  //delay(200);
  digitalWrite(RESET, HIGH);
  // Indicate end of setup
  Serial.println("Setup done");
}
// declaring functions
void setMotorSpeed(boolean forward);
void driveForward(boolean forward, uint8_t speed,uint16_t time);
void driveCurve(boolean forward, uint8_t speed,uint16_t time, int curve_strength);
void button(float voltage);
uint16_t measureDistance(uint8_t Pin);
void labyrinth2();
void sendCodeToFPGA();


// LOOP READING BUTTON

void loop() {
  // Wait for Serial data available
  if (Serial.available() > 0) {
    // Read single character
    char temp = Serial.read();
    // If it is n line break
    if (temp != '\r' && temp != '\n') {
      // Start by buffering the data
      charBuf[bufPos] = temp;
      // Prevent overflow
      bufPos = (bufPos + 1) % BUF_SIZE;
      // append end of string character
      charBuf[bufPos] = '\0';
    // If we have a line break character
    } else {
      // Test the string using stringcompare function: strcmp returns 0 on match
      if (strcmp(charBuf, "Hello!") == 0) {
        Serial.print("Hello\r\n");
        state = 1;
      // Can implement some sort of state machine here
      } else if (state == 1) {
        if (charBuf[0] == 'c') {
          sendCodeToFPGA();
        }
      }
      // Clear data
      bufPos = 0;
      for (int i = 0; i < BUF_SIZE; i++) charBuf[i] = ' ';
      charBuf[bufPos] = '\0';
    }
  }
  // You can also do exact the same for a SoftwareSerial
  if (softSerial.available()) {
    char temp = softSerial.read();
    //Serial.print(temp); // Testing softSerial
    //Serial.print("\r\n");
    if (temp != '\r' && temp != '\n') {
      if (state == 2) {
        // Start by buffering the data
        charBufSoft[bufPosSoft] = temp;
        // Prevent overflow
        bufPosSoft = (bufPosSoft + 1) % BUF_SIZE;
        // append end of string character
        charBufSoft[bufPosSoft] = '\0';
        /*
        if (bufPosSoft == 6) {
          Serial.print(charBufSoft);
          Serial.print("\r\n");
          state = 0;
        }
        */
      }
    } else {
      Serial.print(charBufSoft);
      Serial.print("\r\n");
      // Clear data
      bufPosSoft = 0;
      for (int i = 0; i < BUF_SIZE; i++) charBufSoft[i] = ' ';
      charBufSoft[bufPosSoft] = '\0';
    }
  }
 int value = analogRead(A0);
 float voltage = (float) (value * VOLTAGE/1023.0);
 button(voltage);
}

// DIFFERENT IMPLEMENTATIONS FOR ESCAPING

void sendCodeToFPGA() {
  uint8_t charBufTmp[BUF_SIZE];
  for (int i = 1; i < 7; i++) {
    charBufTmp[i-1] = charBuf[i];
  }

  for (int i = 0; i < 6; i++) {
    softSerial.write(charBufTmp[i]);
  }
    state = 2;
}


void labyrinth2() {
  while(true) {
    uint16_t left = measureDistance(12);
    uint16_t mid = measureDistance(13);
    uint16_t right = measureDistance(8);

    float left_factor = left;
    float mid_factor = (40.0/mid)*(40.0/mid);
    float right_factor = right;

    float total_factor = (left_factor - right_factor)* mid_factor;

    if (left < 20) {
      total_factor = -90;
    } else if (right < 20) {
      total_factor = 90;
    } else if (mid < 20) {
      if (left > right) {
        total_factor = 90;
      } else {
        total_factor = -90;
      }
    }
    
    if (total_factor > 90) {
      total_factor = 90;
    } else if (total_factor < -90) {
      total_factor = -90;
    }

    int direction = total_factor;
    if (left != 1 && mid != 1 && right != 1) {
      driveCurve(true, 80, 200, direction); 
    }
    //driveForward(true, 60, 50);
  }
}

// BELOW HERE ARE FUNCTIONS FOR CONTROLLING MOTORS AND SENSORS

void setMotorSpeed(boolean forward, uint8_t speed, char motor){
  // driving forward
  if(forward == true){
    if(motor == 'A'){
      analogWrite(10, 0);
      analogWrite(11, speed);
    }
    else if(motor == 'B'){
      analogWrite(6, 0);
      analogWrite(9, speed);
    }
  // driving forward
  }
  else{
    if(motor == 'A'){
      analogWrite(11, 0);
      analogWrite(10, speed);
    }
    else if(motor == 'B'){
      analogWrite(9, 0);
      analogWrite(6, speed);
    }
  }
}
void driveForward(boolean forward, uint8_t speed, uint16_t time){
  setMotorSpeed(forward, speed,'A');
  setMotorSpeed(forward, speed,'B');
  delay(time);
  setMotorSpeed(forward, 0,'A');
  setMotorSpeed(forward, 0,'B');
  }

// left = positive direction
void driveCurve(boolean forward, uint8_t speed,uint16_t time, int curve_strength){
  if (curve_strength == 0){
    setMotorSpeed(forward, speed,'A');
    setMotorSpeed(forward, speed,'B');
    delay(time);
   }
  else if(curve_strength > 0 && curve_strength <= 45){
    int speed_left = map(curve_strength,0 , 45, speed, 0);
    setMotorSpeed(forward, speed_left ,'A');
    setMotorSpeed(forward, speed,'B');
    delay(time);
  }
  else if(curve_strength > 45){
    int speed_left = map(curve_strength ,45 , 90, 0, speed);
    setMotorSpeed(not forward, speed_left ,'A');
    setMotorSpeed(forward, speed,'B');
    delay(time);
  }
  else if(curve_strength < 0 && curve_strength >= -45){
    int speed_right = map(curve_strength,0 , -45, speed, 0);
    setMotorSpeed(forward, speed_right ,'B');
    setMotorSpeed(forward, speed,'A');
    delay(time);
  }
  else if(curve_strength < -45){
    int speed_right = map(curve_strength,-45 , -90, 0, speed);
    setMotorSpeed(not forward, speed_right ,'B');
    setMotorSpeed(forward, speed,'A');
    delay(time);
  }
  setMotorSpeed(forward, 0,'A');
  setMotorSpeed(forward, 0,'B');
 }


// BUTTON THAT IS USED TO START ESCAPE

void button(float voltage) {
  if((1.2 < voltage) && (voltage< 1.7)){
    labyrinth2();
  }
}

uint16_t measureDistance(uint8_t Pin){
  uint64_t impuls_length;
  uint16_t distance = -1;
  pinMode(Pin, OUTPUT);
  digitalWrite(Pin, LOW);
  uint64_t p = micros();
  digitalWrite(Pin, HIGH);
  while( micros()-p < 50){
    }
  digitalWrite(Pin, LOW);
  pinMode(Pin, INPUT);
  uint64_t p_1 = millis();
  while(digitalRead(Pin) == LOW && (millis() - p_1) < 30){
    p = micros(); 
  }
  if(digitalRead(Pin) == HIGH){
    while(digitalRead(Pin) == HIGH){
    }
    impuls_length = micros() - p;
    distance = impuls_length/60;
  }
  return distance;
} 
