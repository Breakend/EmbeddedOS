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
  volatile uint16_t offset;
  volatile uint16_t v_pc;

/*
  Keep track of the virtual PC
*/
    // uint16_t v_pc = 0x01;

  // uint16_t calc_vaddress(uint16_t v_pc){

  // }

  //Calculates real address based on virtual addr
  uint16_t calc_address(uint16_t vpc){
    //For now this is hard coded, but it should change
    //iterations to scramble... 5
    //iterations to unscramble... 7
    //number of lines 81, so n = 9
    uint16_t x = vpc/9;
    uint16_t y = vpc%9;
    uint16_t x_prime;
    uint16_t y_prime;
    int i;
    for( i =0;i<5;i++){ //5 iterations
      x_prime = (2*x + y) % 9;
      y_prime = (x + y) % 9;
      x = x_prime;
      y = y_prime;
    }



      return (9*x+y) * 0x0007; //for the padding
  }

  uint16_t calc_vaddress(uint16_t rpc){
    uint16_t x = rpc/9;
    uint16_t y = rpc%9;
    uint16_t x_prime;
    uint16_t y_prime;
    int i;
    for( i =0;i<7;i++){ //7 iterations to unscramble?
      x_prime = (2*x + y) % 9;
      y_prime = (x + y) % 9;
      x = x_prime;
      y = y_prime;
    }

      return (9*x+y) / 0x0007; //for the padding
   }

// void jump_to(uint16_t addr){
//   asm("jmp %0" :: "r" (addr)); 
// }

int main (void)
{

  /*
    Part I
    Here is the initialization of the initial starting address of the program etc.
  */

  v_pc = 0x0000; //virtual address
  offset = 0x0240;

  //Initial address to start program
  tmpaddr += v_pc + offset;

  //TODO: probably shouldn't hardcode this so it doesn't get overwritten, but 
  //making assumption it's not going to be for now
  __asm__ __volatile__ ("sts 0x0200, %A0" : : "r" (v_pc));
  __asm__ __volatile__ ("sts 0x0201, %B0" : : "r" (v_pc));


  //Start after initialization
  __asm__ __volatile__ ("mov r30, %A0" "\n\t"
                        "mov r31, %B0" "\n\t"
                        : : "r" (tmpaddr));
  __asm__ __volatile__ ("ijmp");

  /*
    Part I.II
    This is a temporary solution because of some extra code the linker adds, the first jump back
    should reset the kernel to the position of the scrambled code...
  */
  offset = 0x0240;
  // asm("pop r0"); //not sure if need both registers or if this is the right order
//idk trying this
  // __asm__ __volatile__ ("sts 0x0200, %A0" : : "r" (v_pc));
  // __asm__ __volatile__ ("sts 0x0201, %B0" : : "r" (v_pc));

  /*
    Part II
    Increment current v_pc, calculate "real" PC
  */

  __asm__ __volatile__ ("lds %A0, 0x0200" "\n\t"
                        "lds %B0, 0x0201" "\n\t" : "=r" (v_pc) :);

  //This calculates the address based on starting address = 0x0000, when jumping
  //to the address add the offset value

  v_pc += 0x0001;

  //save vpc
  __asm__ __volatile__ ("sts 0x0200, %A0" :: "r" (v_pc));
  __asm__ __volatile__ ("sts 0x0201, %B0" :: "r" (v_pc));


  //inline to avoid stack for now
  // tmpaddr = calc_address(v_pc);
     uint16_t x = v_pc/0x09;
    uint16_t y = v_pc%0x09;
    uint16_t x_prime;
    uint16_t y_prime;
    int i;
    for( i =0;i<5;i++){ //5 iterations
      x_prime = (0x02*x + y) % 0x09;
      y_prime = (x + y) % 0x09;
      x = x_prime;
      y = y_prime;
    }



  tmpaddr = (0x09*x+y) * 0x0009; //for the padding
  tmpaddr += offset;

  /*
    Part III
    jmp to real address
    NOTE THIS CASE DOESN'T INCLUDE JUMPS AND BRANCHES IN THE ORIGINAL PROGRAM
    THAT CASE WILL BE HANDLED BY THE SECOND PART OF THIS KERNEL WHICH WON'T 
    BE REACHED WITHOUT AN EXPLICIT JUMP THERE
  */

  //Start after initialization
  __asm__ __volatile__ ("mov r30, %A0" "\n\t"
                        "mov r31, %B0" "\n\t"
                        : : "r" (tmpaddr));
  __asm__ __volatile__ ("ijmp");


  /*
    Part IV
    NOTE: Any instructions with a "real" jump will push the address
    to the stack instead and jump here, if label then its okay and 
    we can actually just keep the branch or jump except if it doesn't use a label
    though in this case still need to push address to stack so can update the next
    real address...?

    //push onto the stack using
    push LOW(LABEL)
    push HIGH(LABEL)

    pop virtual address from stack
    Using "virtual address" calculate "real" address
  */


   //get "virtual" value from real value

    asm("pop r31"); //not sure if need both registers or if this is the right order
    asm("pop r30"); 

    __asm__ __volatile__("mov %A0, r30" "\n\t"
                         "mov %B0, r31" "\n\t"
                        : "=r" (tmpaddr));
    uint16_t r_addr = tmpaddr;
    // tmpaddr += -0x0240;
    __asm__ __volatile__("subi %A0, 0x40" "\n\t"
                         "subi %B0, 0x02" "\n\t" : "=r" (tmpaddr)); //this is REALLY bad, but sbci looks like its broken...
    tmpaddr /= 0x0009;


    
    // v_pc = calc_vaddress(tmpaddr); //update virtual counter
    
    //Inline to prevent pushes to the stack
    uint16_t xn = tmpaddr/9;
    uint16_t yn = tmpaddr%9;
    uint16_t xn_prime;
    uint16_t yn_prime;
    int j;
    for( j =0;j<7;j++){ //6 iterations to unscramble?
      xn_prime = (0x0002*xn + yn) % 9;
      yn_prime = (xn + yn) % 9;
      xn = xn_prime;
      yn= yn_prime;
    }

    v_pc = (9*xn+yn); //for the padding

    // v_pc += 0x0001;
    //save vpc
    __asm__ __volatile__ ("sts 0x0200, %A0" :: "r" (v_pc));
    __asm__ __volatile__ ("sts 0x0201, %B0" :: "r" (v_pc));

  __asm__ __volatile__ ("mov r30, %A0" "\n\t"
                        "mov r31, %B0" "\n\t"
                        : : "r" (r_addr));
    //can assume in this case (i.e. with a label it should be 
    //the real address so can just jump there since they're already 
    //loaded into the z-register (or at least should be :0)
    __asm__ __volatile__ ("ijmp");   

    //TODO: 
    //    NEED TO ADD NOPs to space out to account for the jumps where branches are.... 
    //    NEED TO ALSO need to save and restore registers before jumping back....



 return 0;
}

