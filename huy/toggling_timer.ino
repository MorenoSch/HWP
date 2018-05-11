// Copyright 2015: Jan Burchard
// HWP Code: Low Level Pin Toggling with timer



volatile uint32_t tCount = 0;
uint32_t duration[] = {
  1000, 500, 1000, 2000, 1000, 500, 1000, 1500, 2000, 2500
};
volatile uint32_t sCount = 0;
volatile uint32_t index = 0;
uint32_t melody[] = {
  
};

void setup() {
  
  // pin as output
  pinMode(12, OUTPUT);
  pinMode(11, OUTPUT);

  setupTimer2();
  setupTimer1();

  Serial.begin(115200);
}

void loop() {
  // put your main code here, to run repeatedly:
  Serial.print("sCount: ");
  Serial.println(sCount);
  delay(1000);
}

// interrupt service routine for timer 2 compare match
ISR(TIMER2_COMPA_vect) {
  // toggle pin
  // PINB |= (1 << 4);
  
  if(tCount >= sCount){
    index += 1;
    index = index % 10;
    sCount = tCount + duration[index];
    
    // toggle pin
    PINB |= (1 << PINB3);
  }
}

// interrupt service routine for timer 1 compare match
ISR(TIMER1_COMPA_vect) {
  tCount += 1;
}


void Pin12freq(uint16_t freq){
  uint32_t interrupt = 125000/(freq * 2);
  if(interrupt > 255){
    TCCR2B |= (1 << CS21);
    interrupt = 125000/((freq * 2)*4);
  }
  else{
    TCCR2B &= ~(1 << CS21);
  }
  OCR2A = interrupt;
}

void setupTimer2(){
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
  TCCR2B |= (1 << CS21);
  // set mode (CTC)
  TCCR2A |= (1 << WGM21);
    
  // set output compare register A
  OCR2A = 156;
    
  // enable interrupt
  TIMSK2 |= (1 << OCIE2A);    
  
  // enable all interrupts
  sei();
}

void setupTimer1(){
  // disable all interrupts
  cli();
  
  // reset control registers
  TCCR1A = 0;     
  TCCR1B = 0;    
  
  // set clock prescaler: 64
  TCCR1B &= ~(1 << CS12);
  TCCR1B |= (1 << CS11);
  TCCR1B |= (1 << CS10);
  // set mode (CTC)
  TCCR1B |= (1 << WGM12);
    
  // set output compare register A
  OCR1A = 124;
    
  // enable interrupt
  TIMSK1 |= (1 << OCIE1A);    
  
  // enable all interrupts
  sei();
}

