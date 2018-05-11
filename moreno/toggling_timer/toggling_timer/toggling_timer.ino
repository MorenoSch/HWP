void setup() {
  
  // pin as output
  pinMode(12, OUTPUT);
  
  // starting frequency is 400 Hz
  // 8.000.000/(frequency*2)*prescaler)
  // so it should interruot if the timer is at 156
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
  OCR2A = 156;
    
  // enable interrupt
  TIMSK2 |= (1 << OCIE2A);    
  
  // eable all interrupts
  sei();
}

void loop() {
  // put your main code here, to run repeatedly:
  delay(1000);
  Pin12freq(2000);
  delay(1000);
  Pin12freq(400);
  delay(1000);
  Pin12freq(100);
 }

// interrupt service routine for timer 2 compare match
ISR(TIMER2_COMPA_vect) {
  
  // toggle pin
  PINB |= (1 << 4);
}


void Pin12freq(uint16_t freq){
  // reset prescaler to 64
  TCCR2B &= (0 << CS21);
  TCCR2B |= (1 << CS22);
  uint16_t interrupt = 125000/(freq * 2);
  if(interrupt > 255){
    // if the timer would overflow with a 64 prescaler before
    // it would get an interrupt, the prescaler gets set to 256 and 
    // the interrupt gets calculated with the new prescaler.
    TCCR2B |= (1 << CS21);
    interrupt = 8000000/((freq * 2)*256);
  }
  uint8_t inter = interrupt;
  OCR2A = inter;
}

