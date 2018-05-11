volatile uint32_t sCount = 0;
volatile uint32_t tCount = 0;
volatile uint8_t index = 0;
uint32_t duration[10] = {500, 500, 500, 500, 500, 500, 500, 500, 500, 500};
void setup() {
  
  // pin as output
  pinMode(12, OUTPUT);
  pinMode(11, OUTPUT);
  
  // starting frequency is 400 Hz
  // 8.000.000/(frequency*2)*prescaler)
  // so it should interruot if the timer is at 156
    // disable all interrupts
  cli();
  
  // reset control registers
  TCCR2A = 0;     
  TCCR2B = 0;    
  
  //reset control register for timer 1
  TCCR1A = 0;
  TCCR1B = 0;

  // set clock prescaler timer 2: 64
  TCCR2B |= (1 << CS22);
  
  // set clock prescaler timer 1  : 64
  TCCR1B |= (1 << CS11);
  TCCR1B |= (1 << CS10);


  // set mode (CTC) for  Timer 2
  TCCR2A |= (1 << WGM21);

  // set mode (CTC) for timer 1
  TCCR1B |= (1 << WGM12);
    
  // set output compare register A for timer1 and 2
  OCR2A = 39;
  OCR1A = 124;

  
  // enable interrupt
  TIMSK2 |= (1 << OCIE2A);
  TIMSK1 |= (1 << OCIE1A);
  
  // eable all interrupts
  sei();
}

void loop() {
  // put your main code here, to run repeatedly:
  Serial.println(tCount);
  delay(1000);
 }

// interrupt service routine for timer 2 compare match
ISR(TIMER2_COMPA_vect) {
  
  // toggle pin
  PINB |= (1 << 4);
  if(tCount >= sCount){
    if(index < 9){
    index += 1;
    }
    else{
      index = 0;
    }
    sCount = tCount + duration[index];
  }
}

ISR(TIMER1_COMPA_vect) {
  tCount += 1;
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

