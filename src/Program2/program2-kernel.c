#include <avr/io.h>
#include <util/delay.h>
 
int main (void)
{
 
  /* Note this works with ARM so may need to change */

  /* 8-bit address*/
  unsigned int address = 0x8002; 

  //pointer to the address
  typedef void (*funcPtr)(void); 

  funcPtr ptr = (funcPtr)address; 

  /* Essentially a jump to that address */
  ptr(); 

 return 0;
}