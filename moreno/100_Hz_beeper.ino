void setup() {
  
  // pin as output
  pinMode(13, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  musicPin12();
}

// interrupt service routine for timer 2 compare match
ISR(TIMER2_COMPA_vect) {
  
  // toggle pin
  PINB |= (1 << 5);
}

void musicPin12(){
  // disable all interrupts
  cli();
  
  // reset control registers
  TCCR2A = 0;     
  TCCR2B = 0;    
  
  // set clock prescaler: 64
  TCCR2B |= (1 << CS22);
  // set mode (CTC)
  TCCR2A |= (1 << WGM21);
    
  // set output compare register A
  OCR2A = 625;
    
  // enable interrupt
  TIMSK2 |= (1 << OCIE2A);    
  
  // eable all interrupts
  sei();
}

