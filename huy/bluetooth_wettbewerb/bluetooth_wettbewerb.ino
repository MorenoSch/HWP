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

void sendCodeToFPGA();

void setup() {
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


void loop () {
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
}

void sendCodeToFPGA() {
  uint8_t charBufTmp[BUF_SIZE];
  for (int i = 1; i < 7; i++) {
    charBufTmp[i-1] = charBuf[i];
  }

  for (int i = 0; i < 6; i++) {
    softSerial.write(charBufTmp[i]);
  }
  // Serial.print("\r\n");
  
  /*
  // Test HWP_18
  uint8_t data = 229;
  softSerial.write(data);
  //Serial.print("\r\n");
  data = 234;
  softSerial.write(data);
  //Serial.print("\r\n");
  data = 235;
  softSerial.write(data);
  //Serial.print("\r\n");
  data = 150;
  softSerial.write(data);
  //Serial.print("\r\n");
  data = 3;
  softSerial.write(data);
  //Serial.print("\r\n");
  data = 100;
  softSerial.write(data);
  //softSerial.print("\r\n");
  */
  state = 2;
}

