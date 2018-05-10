void setup() {
  // put your setup code here, to run once:
  pinMode(11, OUTPUT);
}

void loop(){
  setPin11Asm(true);
  delay(1000);
  setPin11Asm(false);
  delay(1000);
}

void setPin11(boolean high){
  if(high == true){
    PORTB |= 0b0001000;  
  }else{
    PORTB &= 0b1110111;  
  }  
}

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
