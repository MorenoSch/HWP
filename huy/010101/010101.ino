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
void labyrinth2();
void serialp();

// LOOP READING BUTTON

void loop() {
  // put your main code here, to run repeatedly:
 int value = analogRead(A0);
 float voltage = (float) (value * VOLTAGE/1023.0);
 button(voltage);
 //serialp();
}

// PRINTS VALUES ON SERIAL MONITOR

void serialp() {
  uint16_t left = measureDistance(12);
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
  delay(200);
}

// DIFFERENT IMPLEMENTATIONS FOR ESCAPING

void escape_longest_path() {
  while(true) {
    uint16_t left = measureDistance(11);
    uint16_t straight = measureDistance(12);
    uint16_t right = measureDistance(13);
    if (left > 500) {
      driveCurve(true, 75, 200, -60);
    }
    else if (right > 500) {
       driveCurve(true, 75, 200, 60);
    }
    if (straight > left && straight > right) {
      driveForward(true, 125, 100);
    }
    else if (left > straight && left > right) {
       driveCurve(true, 75, 200, 60);
          // if (right > 13) {
           // driveForward(true, 75, 150);
          // }
    }
    else if (right > straight && right > left) {
      driveCurve(true, 75, 200, -60);
         // if (right > 13) {
           // driveForward(true, 75, 150);
         // }
    }
  }
}

void escape() {
  while(true) {
    uint16_t left = measureDistance(11);
    uint16_t straight = measureDistance(12);
    uint16_t right = measureDistance(13);
    if (straight < 15) {
       driveCurve(false , 155, 200, 90);
       int tmp_left = measureDistance(13);
       driveCurve(false, 155, 400, -90);
       int tmp_right = measureDistance(3);
       if (tmp_right > tmp_left) {
          driveCurve(false, 155, 200, -70);
          driveForward(false, 100, 200);
       }
       else if (tmp_left < tmp_right) {
          driveCurve(false, 155, 400, 90);
          driveCurve(false, 155, 200, 70);
          driveForward(false, 100, 200);
       }
    }
    if (left != -1 && right != -1) {
      if (left > (right)) {
          driveCurve(false, 100, 200, 90);
          if (right > 13) {
            driveForward(false, 100, 250);
          }
      }
      else if (right > left) {
         driveCurve(false, 100, 200, -90);
         if (left > 13) {
          driveForward(false, 100, 250);
         }
      }
      else { driveForward(false, 75, 200);
      }
    }
    else { driveForward(false, 75, 200); }
  }
}

void labyrinth() {
  uint16_t last_left = measureDistance(13);
  uint16_t last_right = measureDistance(3);
  while(true) {
    uint16_t left = measureDistance(13);
    uint16_t mid = measureDistance(8);
    uint16_t right = measureDistance(3);

    if (left - last_left > 20) { // big change left
      while(mid > 40) {
        driveForward(true, 80, 100);
        mid = measureDistance(8);
      }
      driveCurve(true, 80, 500, -90);
      last_left = measureDistance(13);
      last_right = measureDistance(3);
    } else if (right - last_right > 20) { // big change right
      while(mid > 40) {
        driveForward(true, 80, 100);
        mid = measureDistance(8);
      }
      driveCurve(true, 80, 500, 90);
      last_left = measureDistance(13);
      last_right = measureDistance(3);
    }
    else { // on the path
      // hold on the path
      if (abs(left - right) <= 90) {
        driveCurve(true, 80, 50, left - right);
      } else if (left - right > 90) {
        driveCurve(true, 80, 50, 90);
      } else if (right - left > 90) {
        driveCurve(true, 80, 50, -90);
      }
      last_left = left;
      last_right = right;
    }
  }
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
