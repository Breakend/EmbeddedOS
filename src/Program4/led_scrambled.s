	.file	"program2-led.c"
__SP_H__ = 0x83e
__SP_L__ = 0x83d
__SREG__ = 0x83f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.startup,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	;scrambled iterations 5
	;unscramble iterations 7
	;---------------------------------------------------------
	sbi 0x4,5
	;---------------------------------------------------------
	jmp 0x01ec; 
	;the actual second part of the kernel starts at EE, 
	;but the avr-gcc linker looks for half that in jmps, something to do with words
	;anyways, might want to put nop or something at the various kernel section to know 
	;where they start, I just look at the code in a simulator and look for the ijmps
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	nop ;pad to make it sqrt friendly, part of program
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	movw r22,r18
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
.L7:
	ldi r20,lo8(6399999) ;instruction
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	cpc r25,__zero_reg__ ;instruction
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	brne .X1
	;---------------------------------------------------------
	jmp 0x01ec ; double what its supposed to be because of gcc compiler 
.X1:
	ldi r28, lo8(gs(.L5)) ;use the same one to disturb the least amount of registers
	push r28
	ldi r28, hi8(gs(.L5))
	push r28
	jmp 0x02D4
	;---------------------------------------------------------
	ldi r22,hlo8(6399999) ;instruction
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	ldi r20,lo8(3199999) ;instruction
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	ldi r21,hi8(799999) ;instruction
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	call __divmodhi4	;instruction
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;

	;---------------------------------------------------------
	ldi r21,hi8(6399999)	;instruction
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	brne .X2
	;---------------------------------------------------------
	jmp 0x01ec ; double what its supposed to be because of gcc compiler 
.X2:
	ldi r28, lo8(gs(.L7)) ;use the same one to disturb the least amount of registers
	push r28
	ldi r28, hi8(gs(.L7))
	push r28
	jmp 0x02D4

	;---------------------------------------------------------
	ldi r20,lo8(799999)		;instruction
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;

.S3: 
	;---------------------------------------------------------
	subi r20,1				;instruction
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;

	;---------------------------------------------------------
	ldi r21,hi8(3199999)	;instruction
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;

	;---------------------------------------------------------
	ldi r22,hlo8(799999)	;instruction
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;

	;---------------------------------------------------------
	ldi r24,0 				;instruction
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;

	;---------------------------------------------------------
	brne .X3
	;---------------------------------------------------------
	jmp 0x01ec ; double what its supposed to be because of gcc compiler 
.X3:
	ldi r28, lo8(gs(.L8)) ;use the same one to disturb the least amount of registers
	push r28
	ldi r28, hi8(gs(.L8))
	push r28
	jmp 0x02D4	

	;---------------------------------------------------------
	ldi r20,lo8(3199999)	;instruction
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;

	;---------------------------------------------------------
	ldi r21,hi8(799999)		;instruction
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;

	;---------------------------------------------------------
	sbci r21,0 				;instruction
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;

	;---------------------------------------------------------
	ldi r22,hlo8(3199999) ;instruction
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	
	;---------------------------------------------------------
.S1: 
	subi r20,1
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;

	;---------------------------------------------------------	
	ldi r25,0
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;

	;---------------------------------------------------------	
	nop
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;

	;---------------------------------------------------------
.S6: 
	subi r20,1
	;---------------------------------------------------------	
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;

	;---------------------------------------------------------
	ldi r22,hlo8(6399999)
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;

	;---------------------------------------------------------
	sbci r22,0
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;

	;---------------------------------------------------------
.S2: 
	subi r20,1
	;---------------------------------------------------------	
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;

	;---------------------------------------------------------
	sbci r21,0
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;

	;---------------------------------------------------------
	ldi r18,lo8(3)
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;

	;---------------------------------------------------------
	nop
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	
	;---------------------------------------------------------
	sbci r21,0
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;

	;---------------------------------------------------------
	ldi r22,hlo8(3199999)
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;

	;---------------------------------------------------------
	ldi r21,hi8(3199999)
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;

	;---------------------------------------------------------
	ldi r22,hlo8(799999)
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;

	;---------------------------------------------------------
	sbci r22,0
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;

	;---------------------------------------------------------
	ldi r19,0
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	nop
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	sbci r22,0
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
.S5:
	subi r20,1
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	sbci r21,0
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
.S4:
	subi r20,1
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	brne .X5
	;---------------------------------------------------------
	jmp 0x01ec ; double what its supposed to be because of gcc compiler 
.X5:
	ldi r28, lo8(gs(.S3)) ;use the same one to disturb the least amount of registers
	push r28
	ldi r28, hi8(gs(.S3))
	push r28
	jmp 0x02D4

	;---------------------------------------------------------
	sbci r21,0
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	nop
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	brne .X4
	;---------------------------------------------------------
	jmp 0x01ec ; double what its supposed to be because of gcc compiler 
.X4:
	ldi r28, lo8(gs(.S6)) ;use the same one to disturb the least amount of registers
	push r28
	ldi r28, hi8(gs(.S6))
	push r28
	jmp 0x02D4
	;---------------------------------------------------------
	sbci r21,0
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	sbci r22,0
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	nop
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
.L9:
	jmp .
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	sbci r22,0
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	ldi r28, lo8(gs(.S1)) ;use the same one to disturb the least amount of registers
	push r28
	ldi r28, hi8(gs(.S1))
	push r28
	jmp 0x02D4
	nop;
	nop;
	nop;
	;---------------------------------------------------------
	;---------------------------------------------------------
.L8:
	sbi 0x5,5
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	sbci r22,0
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	brne .X7
	jmp 0x01ec ; double what its supposed to be because of gcc compiler 
.X7:
	ldi r28, lo8(gs(.S4)) ;use the same one to disturb the least amount of registers
	push r28
	ldi r28, hi8(gs(.S4))
	push r28
	jmp 0x02D4
	;---------------------------------------------------------
	cbi 0x5,5
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	ldi r28, lo8(gs(.L9)) ;use the same one to disturb the least amount of registers
	push r28
	ldi r28, hi8(gs(.L9))
	push r28
	jmp 0x02D4
	nop;
	nop;
	nop;
	;---------------------------------------------------------
	;---------------------------------------------------------
	brne .X9
	jmp 0x01ec ; double what its supposed to be because of gcc compiler 
.X9:
	ldi r28, lo8(gs(.S2)) ;use the same one to disturb the least amount of registers
	push r28
	ldi r28, hi8(gs(.S2))
	push r28
	jmp 0x02D4
	;---------------------------------------------------------
	ldi r28, lo8(gs(.L9)) ;use the same one to disturb the least amount of registers
	push r28
	ldi r28, hi8(gs(.L9))
	push r28
	jmp 0x02D4
	nop;
	nop;
	nop;
	;---------------------------------------------------------
	;---------------------------------------------------------
	cpi r24,2
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	nop
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
.L10:
	jmp .
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
 	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	cpi r24,2
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
.L4:
	ldi r20,lo8(6399999)
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	cpc r25,__zero_reg__
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
.L2:
	cpi r24,1
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	cpc r25,__zero_reg__
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	nop
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	nop
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	brne .X10
	jmp 0x01ec ; double what its supposed to be because of gcc compiler 
.X10:
	ldi r28, lo8(gs(.S5)) ;use the same one to disturb the least amount of registers
	push r28
	ldi r28, hi8(gs(.S5))
	push r28
	jmp 0x02D4
	;---------------------------------------------------------
	;---------------------------------------------------------
	ldi r28, lo8(gs(.L10)) ;use the same one to disturb the least amount of registers
	push r28
	ldi r28, hi8(gs(.L10))
	push r28
	jmp 0x02D4
	nop;
	nop;
	nop;
	;---------------------------------------------------------
	;---------------------------------------------------------
	brne .X11
	jmp 0x01ec ; double what its supposed to be because of gcc compiler 
.X11:
	ldi r28, lo8(gs(.L4)) ;use the same one to disturb the least amount of registers
	push r28
	ldi r28, hi8(gs(.L4))
	push r28
	jmp 0x02D4
	;---------------------------------------------------------
	;---------------------------------------------------------
	ldi r20,lo8(799999)
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	brne .X12
	jmp 0x01ec ; double what its supposed to be because of gcc compiler 
.X12:
	ldi r28, lo8(gs(.L2)) ;use the same one to disturb the least amount of registers
	push r28
	ldi r28, hi8(gs(.L2))
	push r28
	jmp 0x02D4
	;---------------------------------------------------------
	nop
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	adiw r24,1
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	;---------------------------------------------------------
	ldi r28, lo8(gs(.L10)) ;use the same one to disturb the least amount of registers
	push r28
	ldi r28, hi8(gs(.L10))
	push r28
	jmp 0x02D4
	nop;
	nop;
	nop;
	;---------------------------------------------------------
	;---------------------------------------------------------
.L5:
	cpi r24,1
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;	
	;---------------------------------------------------------
	cpc r25,__zero_reg__
			jmp 0x01ec; 
	;---------------------------------------------------------
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	ldi r21,hi8(6399999)
	;---------------------------------------------------------
	jmp 0x01ec; 
	nop ;part of padding for kernel
	nop;
	nop;
	nop ;
	nop ;
	nop ;
	;---------------------------------------------------------
	;kept this unscrambled for the linker
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.2"
