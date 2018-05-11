// Copyright 2015: Jan Burchard
// HWP Code: Low Level Pin Toggling with timer

void setup() {
  
  // pin as output
  pinMode(12, OUTPUT);
  
  // how about a tone with 400 Hz
  // -> counter has to overflow 800x /second
  // set divider at 64
  // -> counter increased at 125000 Hz
  // -> count to 156.25 -> 156
  
  // disable all interrupts
  cli();
  
  // reset control registers
  TCCR2A = 0;     
  TCCR2B = 0;    
  
  // set clock prescaler: 256
  TCCR2B |= (1 << CS22);
  // set mode (CTC)
  TCCR2A |= (1 << WGM21);
    
  // set output compare register A
  OCR2A = 39;
    
  // enable interrupt
  TIMSK2 |= (1 << OCIE2A);    
  
  // eable all interrupts
  sei();
}

void loop() {
  // put your main code here, to run repeatedly:
  delay(1000);
  Pin12freq(800);
  delay(1000);
  Pin12freq(100);
  
}

// interrupt service routine for timer 2 compare match
ISR(TIMER2_COMPA_vect) {
  
  // toggle pin 13
  PINB |= (1 << 4);
}


void Pin12freq(uint16_t freq){
  uint16_t interrupt = 125000/(freq * 2);
  // wenn iterrupt größer 255 ist, bedeutet das, dass es nicht mehr in das 8 bit register passt.
  // also nimmt man bei niedrigen freuenzen einfach einen höheren prescaler und passt den interrupt value an. 
  if(interrupt > 255){
    // vergrößere den prescaler
    TCCR2B |= (1 << CS21);
    interrupt = 125000/((freq * 2)*256);
  }
  OCR2A = interrupt;
}
  
