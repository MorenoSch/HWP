void __attribute__((optimize("O0"))) setPin11(boolean high);
void __attribute__((optimize("O0"))) setPin11Asm(boolean high);
uint32_t timeSetPin11highlvl();
uint32_t timeSetPin11lowlvl();
uint32_t timeSetPin11Asm();

/*
Aufgabe 3:
high level time (mit digitalWrite): 1746 ms
low level time (mit Register PORTB): 138 ms
asm time (mit Assembler): 125 ms

Aufgabe 4:
high level time (mit digitalWrite): 1746 ms
low level time (mit Register PORTB): 1131 ms
asm time (mit Assembler): 905 ms
*/

void setup() {
  // put your setup code here, to run once:
  pinMode(11, OUTPUT);
  Serial.begin(9600);
  Serial.print("high level time: ");
  Serial.println(timeSetPin11highlvl());
  Serial.print("low level time: ");
  Serial.println(timeSetPin11lowlvl());
  Serial.print("asm time: ");
  Serial.println(timeSetPin11Asm());
}

void loop(){
  setPin11Asm(true);
  delay(1000);
  setPin11Asm(false);
  delay(1000);
}

void __attribute__((optimize("O0"))) setPin11(boolean high){
  if(high == true){
    PORTB |= 0b0001000;  
  }else{
    PORTB &= 0b1110111;  
  }  
}

void __attribute__((optimize("O0"))) setPin11Asm(boolean high){
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

uint32_t timeSetPin11Asm(){
  uint32_t start_time = millis();
  for(uint32_t i = 0; i < 100000; i++){
    setPin11Asm(true);
    setPin11Asm(false);
  }
  uint32_t end_time = millis();
  return end_time - start_time;
}
