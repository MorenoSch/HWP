

void setup() {
  // put your setup code here, to run once:
  pinMode(11, OUTPUT);
  Serial.begin(9600);
  timer();
}

void loop(){
  
}

//Setting pin 11 to high or low, non assambler
void setPin11(boolean high){
  if(high == true){
    PORTB |= 0b0001000;  
  }else{
    PORTB &= 0b1110111;  
  }  
}

//Setting pin 11 to high or low, assambler
void setPin11Asm(boolean high){
   if(high == true){
     asm volatile(
       "sbi %0, %1\n\t" // 2 clocks
       :: "I" (_SFR_IO_ADDR(PORTB)), "I" (PORTB3)
     );
   }else{
     asm volatile(
       "cbi %0, %1\n\t" // 2 clocks
       :: "I" (_SFR_IO_ADDR(PORTB)), "I" (PORTB3)
     );
   }
}

void timer(){
  //non Assembler part
  uint32_t p = millis();
  uint32_t  i = 0;
  while(i < 100000){
    setPin11(true);
    setPin11(false); 
    i+=1;      
  }
  uint32_t erg = millis()-p;

  //Assembler part
  p = millis();
  i = 0;
  while(i < 100000){
    setPin11Asm(true);
    setPin11Asm(false);
    i+=1;      
  }
  uint32_t erg1 = millis()-p;
  
  Serial.println(erg);
  Serial.println(erg1);  
}

