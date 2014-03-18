// #include <avr/io.h>
// #include <util/delay.h>
 

typedef unsigned short uint16_t;

/*
  So we know that the jmpAddress is in the data section and doesn't modify
  the stack (hopefully)
*/
    //THIS ISN'T INITIALIZING CORRECTLY.... UGH
    // volatile uint16_t jmpAddress = 0x00ff;
  volatile uint16_t tmpaddr;

/*
  Keep track of the virtual PC
*/
    // uint16_t v_pc = 0x01;

  //Calculates real address based on virtual addr
  uint16_t calc_address(uint16_t jmp){
      return jmp + 0x0004;
  }

// void jump_to(uint16_t addr){
//   asm("jmp %0" :: "r" (addr)); 
// }

int main (void)
{

/*
  Attempting to jmp using inline variable
*/
  // uint16_t v_pc;

  //Test saving to sram
  uint16_t jmpAddress = 0x00ff;


  __asm__ __volatile__ ("sts 0x0200, %A0" : : "r" (jmpAddress));
  __asm__ __volatile__ ("sts 0x0201, %B0" : : "r" (jmpAddress));

  // __asm__ __volatile__ ("sts 0x0201, %0" : : "r" (jmpAddress));
  // v_pc = 0x01;

  //For marking where to go
  // __asm__ __volatile__ ("nop");
  // cont:
  //Test loading from sram
  // __asm__ __volatile__ ("lds __tmp_reg__, 0x0200" :::);
  // __asm__ __volatile__ ("mov %0, __tmp_reg__" : "=r" (tmpaddr) :);
  __asm__ __volatile__ ("lds %0, 0x0200" : "=r" (tmpaddr) :);

  // uint16_t tmpaddr = jmpAddress;

  tmpaddr = calc_address(tmpaddr);
  __asm__ __volatile__ ("sts 0x0200, %A0" :: "r" (tmpaddr));
  __asm__ __volatile__ ("sts 0x0201, %B0" :: "r" (tmpaddr));

  //TODO: maybe instead of pushing and popping just do sts lds
  asm("push %A0" "\n\t"
      "push %B0" "\n\t"
      : : "r" (tmpaddr));
  // jmpAddress = tmpaddr;

  // __asm__ __volatile__(
  //     // "mov __tmp_reg__, %0"  "\n\t"
  //     "jmp %0"        "\n\t"
  //     : 
  //     :
  //     : "p" (jmpAddress) 
  //   );

    /*
      THIS WORKS!!!, i'm not really sure why
    */
    asm("pop r31");
    asm("pop r30");
    asm("ijmp");

    // goto cont;

    // asm("jmp 0x0058" :: ); 

    // uint16_t n_addr = 0x0059;
    // asm("ijmp" :: "z" (n_addr)); 


 return 0;
}

