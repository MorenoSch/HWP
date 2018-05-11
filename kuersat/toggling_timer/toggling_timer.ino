// Copyright 2015: Jan Burchard
// HWP Code: Low Level Pin Toggling with timer
volatile uint32_t tCount = 0;
void setup() {
  Serial.begin(115200);  
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
  
  //reset control register for timer 1
  TCCR1A = 0;
  TCCR1B = 0;

  // set clock prescaler timer 2: 64
  TCCR2B |= (1 << CS22);
  
<<<<<<< HEAD
  // set clock prescaler timer 1  : 64
  TCCR1B |= (1 << CS11);
  TCCR1B |= (1 << CS10);
=======
  // set clock prescaler timer 1  : 64 and enable interrupt
  TCCR1B |= (1 << CS11) | (1 << CS10) ;
  
>>>>>>> 44675cb109cc276ba8f51d40dcaf942e315a7528


  // set mode (CTC) for  Timer 2
  TCCR2A |= (1 << WGM21);
<<<<<<< HEAD

  // set mode (CTC) for timer 1
  TCCR1B |= (1 << WGM12);
    
  // set output compare register A for timer1 and 2
  OCR2A = 39;
  OCR1A = 124;

  
  // enable interrupt
=======
  TCCR1B |= (1 << WGM12);

  // set output compare register A for timer1 and 2
  OCR2A = 39;
  OCR1A = 124; 
  // enable interrupt 
>>>>>>> 44675cb109cc276ba8f51d40dcaf942e315a7528
  TIMSK2 |= (1 << OCIE2A);

  //enalbe interrupt on ORC1A for timer one
  TIMSK1 |= (1 << OCIE1A);
  
  // eable all interrupts
  sei();
}

void loop() {
<<<<<<< HEAD
    Serial.println(tCount);
    delay(1000);
  }
=======
  Serial.println(tCount);
  uint32_t p = millis();
  while(millis() - p < 1000){}
}
>>>>>>> 44675cb109cc276ba8f51d40dcaf942e315a7528

// interrupt service routine for timer 2 compare match
ISR(TIMER2_COMPA_vect) {
  
  // toggle pin 13
  PINB |= (1 << 4);
}

// timer one compare match
ISR(TIMER1_COMPA_vect) {
  tCount += 1;
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
  
