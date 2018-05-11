// Copyright 2018: Quoc Huy Dang, Moreno Schlageter, Kürsat Akmaz 
// HWP Code: Melody for arduino in backround
// Melody from : https://github.com/xitangg/-Pirates-of-the-Caribbean-Theme-Song/blob/master/Pirates_of_the_Caribbean_-_Theme_Song.ino

volatile uint32_t tCount;
volatile uint32_t sCount;
volatile uint8_t index;
boolean tone1 =true; 

int NOTE_C3  =131;
int NOTE_CS3 =139;
int NOTE_D3 = 147;
int NOTE_DS3 =156;
int NOTE_E3  =165;
int NOTE_F3  =175;
int NOTE_FS3 =185;
int NOTE_G3  =196;
int NOTE_GS3 =208;
int NOTE_A3  =220;
int NOTE_AS3 =233;
int NOTE_B3  =247;
int NOTE_C4  =262;
int NOTE_CS4 =277;
int NOTE_D4  =294;
int NOTE_DS4 =311;
int NOTE_E4  =330;
int NOTE_F4  =349;
int NOTE_FS4 =370;
int NOTE_G4  =392;
int NOTE_GS4 =415;
int NOTE_A4  =440;
int NOTE_AS4 =466;
int NOTE_B4  =494;
int NOTE_C5  =523;
int NOTE_CS5 =554;
int NOTE_D5  =587;
int NOTE_DS5 =622;
int NOTE_E5  =659;
int NOTE_F5  =698;
int NOTE_FS5 =740;
int NOTE_G5  =784;
int NOTE_GS5 =831;
int NOTE_A5  =880;
int NOTE_AS5 =932;
int NOTE_B5  =988;
int NOTE_C6  =1047;
int NOTE_CS6 =1109;
int NOTE_D6  =1175;
int NOTE_DS6 =1245;
int NOTE_E6  =1319;
int NOTE_F6  =1397;
int NOTE_FS6 =1480;
int NOTE_G6  =1568;
int NOTE_GS6 =1661;
int NOTE_A6  =1760;
int NOTE_AS6 =1865;
int NOTE_B6  =1976;

int melody[] = {
   NOTE_E4, NOTE_G4, NOTE_A4, NOTE_A4, 0, 
   NOTE_A4, NOTE_B4, NOTE_C5, NOTE_C5, 0, 
   NOTE_C5, NOTE_D5, NOTE_B4, NOTE_B4, 0,
   NOTE_A4, NOTE_G4, NOTE_A4, 0,
   
   NOTE_E4, NOTE_G4, NOTE_A4, NOTE_A4, 0, 
   NOTE_A4, NOTE_B4, NOTE_C5, NOTE_C5, 0, 
   NOTE_C5, NOTE_D5, NOTE_B4, NOTE_B4, 0,
   NOTE_A4, NOTE_G4, NOTE_A4, 0,
   
   NOTE_E4, NOTE_G4, NOTE_A4, NOTE_A4, 0, 
   NOTE_A4, NOTE_C5, NOTE_D5, NOTE_D5, 0, 
   NOTE_D5, NOTE_E5, NOTE_F5, NOTE_F5, 0,
   NOTE_E5, NOTE_D5, NOTE_E5, NOTE_A4, 0,
   
   NOTE_A4, NOTE_B4, NOTE_C5, NOTE_C5, 0, 
   NOTE_D5, NOTE_E5, NOTE_A4, 0, 
   NOTE_A4, NOTE_C5, NOTE_B4, NOTE_B4, 0,
   NOTE_C5, NOTE_A4, NOTE_B4, 0,

   NOTE_A4, NOTE_A4, 
   //Repeat of first part
   NOTE_A4, NOTE_B4, NOTE_C5, NOTE_C5, 0, 
   NOTE_C5, NOTE_D5, NOTE_B4, NOTE_B4, 0,
   NOTE_A4, NOTE_G4, NOTE_A4, 0,

   NOTE_E4, NOTE_G4, NOTE_A4, NOTE_A4, 0, 
   NOTE_A4, NOTE_B4, NOTE_C5, NOTE_C5, 0, 
   NOTE_C5, NOTE_D5, NOTE_B4, NOTE_B4, 0,
   NOTE_A4, NOTE_G4, NOTE_A4, 0,
   
   NOTE_E4, NOTE_G4, NOTE_A4, NOTE_A4, 0, 
   NOTE_A4, NOTE_C5, NOTE_D5, NOTE_D5, 0, 
   NOTE_D5, NOTE_E5, NOTE_F5, NOTE_F5, 0,
   NOTE_E5, NOTE_D5, NOTE_E5, NOTE_A4, 0,
   
   NOTE_A4, NOTE_B4, NOTE_C5, NOTE_C5, 0, 
   NOTE_D5, NOTE_E5, NOTE_A4, 0, 
   NOTE_A4, NOTE_C5, NOTE_B4, NOTE_B4, 0,
   NOTE_C5, NOTE_A4, NOTE_B4, 0,
   //End of Repeat

   NOTE_E5, 0, 0, NOTE_F5, 0, 0,
   NOTE_E5, NOTE_E5, 0, NOTE_G5, 0, NOTE_E5, NOTE_D5, 0, 0,
   NOTE_D5, 0, 0, NOTE_C5, 0, 0,
   NOTE_B4, NOTE_C5, 0, NOTE_B4, 0, NOTE_A4,

   NOTE_E5, 0, 0, NOTE_F5, 0, 0,
   NOTE_E5, NOTE_E5, 0, NOTE_G5, 0, NOTE_E5, NOTE_D5, 0, 0,
   NOTE_D5, 0, 0, NOTE_C5, 0, 0,
NOTE_B4, NOTE_C5, 0, NOTE_B4, 0, NOTE_A4
};

uint32_t durations[] = {
125, 125, 250, 125, 125, 
  125, 125, 250, 125, 125,
  125, 125, 250, 125, 125,
  125, 125, 375, 125, 
  
  125, 125, 250, 125, 125, 
  125, 125, 250, 125, 125,
  125, 125, 250, 125, 125,
  125, 125, 375, 125, 
  
  125, 125, 250, 125, 125, 
  125, 125, 250, 125, 125,
  125, 125, 250, 125, 125,
  125, 125, 125, 250, 125,

  125, 125, 250, 125, 125, 
  250, 125, 250, 125, 
  125, 125, 250, 125, 125,
  125, 125, 375, 375,

  250, 125,
  //Rpeat of First Part
  125, 125, 250, 125, 125,
  125, 125, 250, 125, 125,
  125, 125, 375, 125, 
  
  125, 125, 250, 125, 125, 
  125, 125, 250, 125, 125,
  125, 125, 250, 125, 125,
  125, 125, 375, 125, 
  
  125, 125, 250, 125, 125, 
  125, 125, 250, 125, 125,
  125, 125, 250, 125, 125,
  125, 125, 125, 250, 125,

  125, 125, 250, 125, 125, 
  250, 125, 250, 125, 
  125, 125, 250, 125, 125,
  125, 125, 375, 375,
  //End of Repeat
  
  250, 125, 375, 250, 125, 375,
  125, 125, 125, 125, 125, 125, 125, 125, 375,
  250, 125, 375, 250, 125, 375,
  125, 125, 125, 125, 125, 500,

  250, 125, 375, 250, 125, 375,
  125, 125, 125, 125, 125, 125, 125, 125, 375,
  250, 125, 375, 250, 125, 375,
  125, 125, 125, 125, 125, 500
// len 97
};
// ------------------------------------------------------------------------------------------
void setup() {

  Serial.begin(115200);  
  // pin as output
  pinMode(12, OUTPUT);
  pinMode(11, OUTPUT);
  // settting index and scount and tcount to zero
  tCount = 0;
  sCount = 0;
  index = 0;
  
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
  TCCR1B |= (1 << CS11) | (1 << CS10) ;
  


  // set mode (CTC) for timer 1 and 2
  TCCR2A |= (1 << WGM21);
  TCCR1B |= (1 << WGM12);

  // set output compare register A for timer1 and 2
  OCR2A = 39;
  OCR1A = 124; 
  // enable interrupt 
  TIMSK2 |= (1 << OCIE2A);

  //enalbe interrupt on ORC1A for timer one
  TIMSK1 |= (1 << OCIE1A);
  
  // eable all interrupts
  sei();
}

void loop() {
}

// interrupt service routine for timer 2 compare match
ISR(TIMER2_COMPA_vect) {
  
  // toggle pin 12
  if(tone1 == true){
    PINB |= (1 << 4);
  }
}

// timer one compare match
ISR(TIMER1_COMPA_vect) {
  
  tCount += 1;
  
  if(tCount >= sCount){
    index += 1;
    // toggle pin 11
    PINB |= (1 << 3);
    index %= 160;
    sCount = tCount + durations[index];
    Pin12freq(melody[index]); 
  }
}

// kann 100HZ bis 2KHZ erzeugen
void Pin12freq(uint16_t freq){
  uint16_t interrupt = 125000/(freq * 2);
  // wenn iterrupt größer 255 ist, bedeutet das, dass es nicht mehr in das 8 bit register passt.
  // also nimmt man bei niedrigen freuenzen einfach einen höheren prescaler und passt den interrupt value an. 
  tone1 = true;
  if(freq == 0){
    tone1 = false;  
  }
  else if(interrupt > 255){
    // vergrößere den prescaler
    TCCR2B |= (1 << CS21);
    interrupt = 125000/((freq * 2)*256);
  }
  OCR2A = interrupt;
}
  
