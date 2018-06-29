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
uint32_t time_tmp;
uint32_t time_tmp_2;
int32_t heading_int;
uint32_t heading;
// initialization
void setup()
{
   Serial.begin(38400);
   // LCD has 4 lines with 20 chars
   lcd.begin(20, 4); 
   lcd.print("system ready");
   time_tmp = millis();
   time_tmp_2 = millis();
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
  lcd.print(374 - analogValue);
  lcd.setCursor(1,2);
  lcd.print("heading:");
  lcd.setCursor(12,2);
  lcd.print(heading_int);
  lcd.setCursor(1,3);
  lcd.print("heading:");
  lcd.setCursor(12,3);
  lcd.print(heading);
}

void heading_i(int16_t analogValue) 
{
  if (((374 - analogValue) < -15) or ((374 - analogValue) > 15)) {
      int add = (millis() - time_tmp_2)*(374 - analogValue);
      time_tmp_2 = millis();
      heading_int += add;
  }  
}

void degree(){
  if (heading_int < 0) {
    heading = 360 - (abs(heading_int/3200) % 360);
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
