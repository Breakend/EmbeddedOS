// #include <avr/io.h>
// #include <util/delay.h>
 
int main (void)
{
 
  /* Note this works with ARM so may need to change */

  // /* 8-bit address*/
  // unsigned int address = 0xb000; 

  // //pointer to the address
  // typedef void (*funcPtr)(void); 

  // funcPtr ptr = (funcPtr)address; 

  // /* Essentially a jump to that address */
  // ptr(); 

  //Attempt #2
  /* No return saves from pointing to return address*/
  // typedef void (*AppPtr_t)(void) __attribute__ ((noreturn)); 

  // AppPtr_t AppStartPtr = (AppPtr_t)0x00b0; 
  // AppStartPtr();

//Attempt #3
// ((void (*)())0x00b0)();

  //Attempt #5
  // void (*fptr)(void);
 
  //  fptr = (void (*)(void))0x00c0;
  //  fptr();
  void * address = (void *)0x00cf;

  address = (char*) address + 1;

  // __asm__ __volatile__ (
  //   "jmp %1" : "=r" ( address )
  //   );

  asm volatile("jmp %0" : : "r" (address));

 return 0;
}