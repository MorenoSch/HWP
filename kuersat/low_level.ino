void setup() {
  // put your setup code here, to run once:
  pinMode(11, OUTPUT);
}

void loop(){
  setPin11(true);
  delay(1000);
  setPin11(false);
  delay(1000);
}

void setPin11(boolean high){
  if(high == true){
    PORTB |= 0b0001000;  
  }else{
    PORTB &= 0b1110111;  
  }  
}
