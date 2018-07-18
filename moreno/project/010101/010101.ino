#define VOLTAGE 3.3
/*
 * US sensor straight PIN: 12 2
 * US Sensor left PIN: 13 1    
 * US sensor right PIN: 3 3 (maybe broken)
 * Button a0
 */



void setup() {
  // (10, A1), (11, A2)
  pinMode(10, OUTPUT); // A1, backwards, left
  pinMode(11, OUTPUT); // A2, forward
  pinMode(6, OUTPUT); // B1, backwards, right 
  pinMode(9, OUTPUT); // B2 , forward
  Serial.begin(9600);
}
// declaring functions
void setMotorSpeed(boolean forward);
void driveForward(boolean forward, uint8_t speed,uint16_t time);
void driveCurve(boolean forward, uint8_t speed,uint16_t time, int curve_strength);
void button(float voltage);
void escape();
uint16_t measureDistance(uint8_t Pin);
void escape_longest_path();
void labyrinth();
void serialp();

// LOOP READING BUTTON
  uint16_t left = measureDistance(12);

void loop() {
  // put your main code here, to run repeatedly:
 int value = analogRead(A0);
 float voltage = (float) (value * VOLTAGE/1023.0);
 button(voltage);
}

// PRINTS VALUES ON SERIAL MONITOR

void serialp() {
  uint16_t straight = measureDistance(13);
  uint16_t right = measureDistance(8);
  Serial.print("-------------------\n");
  Serial.print(left);
  Serial.print("\n");
  Serial.print(straight);
  Serial.print("\n");
  Serial.print(right);
  Serial.print("\n");
  Serial.print("-------------------\n");
  delay(400);
}

// DIFFERENT IMPLEMENTATIONS FOR ESCAPING

void escape_longest_path() {
  while(true) {
    uint16_t left = measureDistance(12);
    uint16_t straight = measureDistance(13);
    uint16_t right = measureDistance(8);
    if (straight < 18) {
      if (left > right) {
        driveCurve(true, 60, 260, 90);
      }
      else {
        driveCurve(true, 60, 260, -90);
      }
    }
    else if (left < 15) {
      driveCurve(true, 60, 230, -90);
    }
    else if (right < 15) {
      driveCurve(true, 60, 230, 90); 
    }
    else {
      driveForward(true, 60, 100); 
    }
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
    escape_longest_path();
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
  uint16_t p_1 = millis();
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
