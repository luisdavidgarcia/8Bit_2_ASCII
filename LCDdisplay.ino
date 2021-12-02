#include <ButtonDebounce.h>
#include <LiquidCrystal.h>
/* Create object named lcd of the class LiquidCrystal */
LiquidCrystal lcd(13, 12, 11,10,9,8,7,6,5,4,3);  /* For 8-bit mode */
//LiquidCrystal lcd(13, 12, 11, 6, 5, 4, 3);  /* For 4-bit mode */

//variables & arrays
int switches[8] = {23,25,27,29,31,33,35,37};
int switches_val = 0, shift_cursor = 0, row = 0, column = 0;
int column2 = 0, next_letter_val = 0, clear_screen_val = 0, next_word_val = 0;
int word_count = 0, done_val = 0;
double ascii_val = 0;
double array[8];

int clear_screen = 51, next_word = 49, next_letter = 47, done = 45;

//functions

int i;  
char s;

void setup() {
  //Start Up Serial Monitor if Needed for Testing
  Serial.begin(9600);
  
  //LCD Instructions
  lcd.begin(16,2);  /* Initialize 16x2 LCD */
  lcd.print("Howdy!!!!"); /* Print data on display */
  //delay(2000);
  lcd.clear();  /* Clear the LCD */
  
  //Set Switches for Reading
  pinMode(switches[0],INPUT);
  pinMode(switches[1],INPUT);
  pinMode(switches[2],INPUT);
  pinMode(switches[3],INPUT);
  pinMode(switches[4],INPUT);
  pinMode(switches[5],INPUT);
  pinMode(switches[6],INPUT);
  pinMode(switches[7],INPUT);
  pinMode(next_letter, INPUT);
  pinMode(clear_screen,INPUT);
  pinMode(next_word,INPUT);
  pinMode(done, INPUT);
}


void loop() {

    next_letter_val = digitalRead(next_letter);
    clear_screen_val = digitalRead(clear_screen);
    next_word_val = digitalRead(next_word);
    done_val = digitalRead(done);
   
    if(next_letter_val){
      //Convert Binary digits to ASCII
      for(int i = 0; i < 8; i++) {
        switches_val = digitalRead(switches[i]);
        array[i] = switches_val;
        ascii_val = (array[i] * pow(2,i)) + ascii_val;
        //Testing Methods
        Serial.print("ASCII Value = ");
        Serial.println(ascii_val);
      }
    
      s = ascii_val + 1;
      
      if(column < 5 && !row){
        lcd.setCursor(column, row);
        lcd.print(s);
        ascii_val = 0;
        column++;
      }
      else if(column2 < 5){
        row = 1;
        lcd.setCursor(column2,row);
        lcd.print(s);
        ascii_val = 0;
        column2++;
      }
      else {
        row = 1;
        s = 32;
        lcd.setCursor(column2,row);
        lcd.print(s);
        ascii_val = 0;
        column2++;
        }
    }
    if(clear_screen_val){
      lcd.clear();
      row = column = column2 = 0;
    }
    if(next_word_val){row = 1;}
    if(done_val){column = column2 = 5;}
}

 
