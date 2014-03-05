#include <avr/io.h>
#include <util/delay.h>
 
enum {
 BLINK_DELAY_MS_MAX = 2000,
 BLINK_DELAY_MS_MID = 1000,
 BLINK_DELAY_MS_MIN = 250
};
 
int main (void)
{
 /* set pin 5 of PORTB for output*/
 DDRB |= _BV(DDB5);
 int delay_choice = 0;
 
 while(1) {
  /* set pin 5 high to turn led on */
  PORTB |= _BV(PORTB5); 
  /* _BV is a macro find in /usr/lib/avr/include/avr/iom328p.h
  		It uses cbi and sbi (assembly instructions) to change the instructions
  		of the port, bit by bit
  */

  /* MADE THREE CHOICES TO MAKE SURE Arduino working and using code, implemented
  this way because _delay_ms only takes in a constant */
  		
  if(delay_choice == 2) _delay_ms(BLINK_DELAY_MS_MIN);
  else if(delay_choice == 1) _delay_ms(BLINK_DELAY_MS_MID);
  else _delay_ms(BLINK_DELAY_MS_MAX);

  /* set pin 5 low to turn led off */
  PORTB &= ~_BV(PORTB5);

  if(delay_choice == 2) _delay_ms(BLINK_DELAY_MS_MIN);
  else if(delay_choice == 1) _delay_ms(BLINK_DELAY_MS_MID);
  else _delay_ms(BLINK_DELAY_MS_MAX);

  delay_choice = (delay_choice+1)%3;

 }
 
 return 0;
}