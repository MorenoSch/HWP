void setPin11(boolean high);
void setPin11asm(boolean high);
uint32_t timeSetPin11highlvl();
uint32_t timeSetPin11lowlvl();
uint32_t timeSetPin11asm();

/*
Aufgabe 3:
high level time (mit digitalWrite): 1746 ms
low level time (mit Register PORTB): 1747 ms
asm time (mit Assembler): 1747 ms
*/

void setup() {
  // put your setup code here, to run once:
  pinMode(11, OUTPUT);
  Serial.begin(9600);
  Serial.print("high level time: ");
  Serial.println(timeSetPin11highlvl());
  Serial.print("low level time: ");
  Serial.println(timeSetPin11highlvl());
  Serial.print("asm time: ");
  Serial.println(timeSetPin11highlvl());
}

void loop(){
  setPin11asm(true);
  delay(1000);
  setPin11asm(false);
  delay(1000);
}

void setPin11(boolean high){
  if(high == true){
    PORTB |= 0b0001000;  
  }else{
    PORTB &= 0b1110111;  
  }  
}

void setPin11asm(boolean high){
  if(high == true){
    asm volatile(
    "sbi %0, %1\n\t" // 2 clocks
    :: "I" (_SFR_IO_ADDR(PORTB)), "I" (PORTB3)
    );  
  }
  else{
    asm volatile(
    "cbi %0, %1\n\t" // 2 clocks
    :: "I" (_SFR_IO_ADDR(PORTB)), "I" (PORTB3)
    );  
  }
}

uint32_t timeSetPin11highlvl(){
  uint32_t start_time = millis();
  for(uint32_t i = 0; i < 100000; i++){
    digitalWrite(11, HIGH);
    digitalWrite(11, LOW);
  }
  uint32_t end_time = millis();
  return end_time - start_time;
}

uint32_t timeSetPin11lowlvl(){
  uint32_t start_time = millis();
  for(uint32_t i = 0; i < 100000; i++){
    setPin11(true);
    setPin11(false);
  }
  uint32_t end_time = millis();
  return end_time - start_time;
}

uint32_t timeSetPin11asm(){
  uint32_t start_time = millis();
  for(uint32_t i = 0; i < 100000; i++){
    setPin11asm(true);
    setPin11asm(false);
  }
  uint32_t end_time = millis();
  return end_time - start_time;
}
