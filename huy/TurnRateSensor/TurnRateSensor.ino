// TurnRate Sensor: read data from analog gyroscope, output heading on lcd

/* Connections:
 R/S : Pin 11
 R/W : not connected
 E   : Pin 12
 DB4 : Pin 13
 DB5 : Pin A0
 DB6 : Pin A1
 DB7 : Pin A2
 
 
 Turn-Rate Sensor: A3
*/
// include LCD functions:
#include <LiquidCrystal.h> 

// define the LCD screen
LiquidCrystal lcd(11, 12, 13, A0, A1, A2);
uint64_t time_tmp;
uint64_t time_tmp_2;
uint64_t time_tmp_3;
int32_t heading_int;
uint32_t heading;
uint32_t start_analog_value;
// initialization
void setup()
{
   Serial.begin(38400);
   // LCD has 4 lines with 20 chars
   lcd.begin(20, 4); 
   lcd.print("system ready");
   delay(2000);
   start_analog_value = analogRead(A3);
   time_tmp = millis();
   time_tmp_2 = millis();
   time_tmp_3 = millis();
   heading_int = 0;
   heading = 0;
}

void loop()
{  
   // read the current analog value on a3
   int16_t analogValue = analogRead(A3);
   heading_i(analogValue);
   degree();
  if (millis() - time_tmp > 150){
      time_tmp = millis();
      printvalues(analogValue);
  }
  if (millis() - time_tmp_3 > 2) {
      time_tmp_3 = millis();
      byte heading_in = heading/2;
      Serial.write(heading_in);
  }
  
   // implement your code here:
}

void printvalues(int16_t analogValue)
{
  lcd.clear();
  lcd.print("Analog 3:");
  lcd.setCursor(12,0);
  lcd.print(analogValue);
  lcd.setCursor(1,1);
  lcd.print("turn-rate:");
  lcd.setCursor(12,1);
  lcd.print(start_analog_value - analogValue);
  lcd.setCursor(1,2);
  lcd.print("heading_int:");
  lcd.setCursor(12,2);
  lcd.print(heading_int);
  lcd.setCursor(1,3);
  lcd.print("heading:");
  lcd.setCursor(12,3);
  lcd.print(heading);
}

void heading_i(int16_t analogValue) 
{
  if (((start_analog_value - analogValue) < -15) or ((start_analog_value - analogValue) > 15)) {
      int add = (millis() - time_tmp_2)*(start_analog_value - analogValue);
      time_tmp_2 = millis();
      heading_int += add;
  }  
}

void degree(){
  if (heading_int < 0) {
    heading = (360 - (abs(heading_int/3200) % 360)) % 360;
  }
  else {
    heading = abs(heading_int/3200) % 360; 
  }
}
/* Usefull LCD functions:
set the current write position of the lcd to specific line and row:
  lcd.setCursor(row, line);  

write onto lcd, starting at current position:
  lcd.print("abc");
*/
