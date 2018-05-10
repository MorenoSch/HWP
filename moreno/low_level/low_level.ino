void setup() {
  // put your setup code here, to run once:
  pinMode(11, OUTPUT);
}

void loop(){
  Asm();
}

void setPin11(boolean high){
  if(high == true){
    PORTB |= 0b0001000;  
  }else{
    PORTB &= 0b1110111;  
  }  
}

void Asm(){
 asm volatile (
 "start:"
 "sbi _SFR_IO_ADDR(PORTB), PORTB3\n\t" // 2 clocks
 :
 );
}

