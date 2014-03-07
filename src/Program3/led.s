	.file	"program2-led.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
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
	sbi 0x4,5
	jmp 0x0
	ldi r24,0
	jmp 0x0
	ldi r25,0
	jmp 0x0
	ldi r18,lo8(3)
	jmp 0x0
	ldi r19,0
	jmp 0x0
.L8:
	sbi 0x5,5
	jmp 0x0
	cpi r24,2
	jmp 0x0
	cpc r25,__zero_reg__
	jmp 0x0
	brne .L2
	jmp 0x0
	ldi r20,lo8(799999)
	jmp 0x0
	ldi r21,hi8(799999)
	jmp 0x0
	ldi r22,hlo8(799999)
	jmp 0x0
	1: subi r20,1
	jmp 0x0
	sbci r21,0
	jmp 0x0
	sbci r22,0
	jmp 0x0
	brne 1b
	jmp 0x0
	rjmp .L9
	jmp 0x0
.L2:
	cpi r24,1
	jmp 0x0
	cpc r25,__zero_reg__
	jmp 0x0
	brne .L4
	jmp 0x0
	ldi r20,lo8(3199999)
	jmp 0x0
	ldi r21,hi8(3199999)
	jmp 0x0
	ldi r22,hlo8(3199999)
	jmp 0x0
	1: subi r20,1
	jmp 0x0
	sbci r21,0
	jmp 0x0
	sbci r22,0
	jmp 0x0
	brne 1b
	jmp 0x0
	rjmp .L9
	jmp 0x0
.L4:
	ldi r20,lo8(6399999)
	jmp 0x0
	ldi r21,hi8(6399999)
	jmp 0x0
	ldi r22,hlo8(6399999)
	jmp 0x0
	1: subi r20,1
	jmp 0x0
	sbci r21,0
	jmp 0x0
	sbci r22,0
	jmp 0x0
	brne 1b
	jmp 0x0
.L9:
	rjmp .
	jmp 0x0
	nop
	jmp 0x0
	cbi 0x5,5
	jmp 0x0
	cpi r24,2
	jmp 0x0
	cpc r25,__zero_reg__
	jmp 0x0
	brne .L5
	jmp 0x0
	ldi r20,lo8(799999)
	jmp 0x0
	ldi r21,hi8(799999)
	jmp 0x0
	ldi r22,hlo8(799999)
	jmp 0x0
	1: subi r20,1
	jmp 0x0
	sbci r21,0
	jmp 0x0
	sbci r22,0
	jmp 0x0
	brne 1b
	jmp 0x0
	rjmp .L10
	jmp 0x0
.L5:
	cpi r24,1
	jmp 0x0
	cpc r25,__zero_reg__
	jmp 0x0
	brne .L7
	jmp 0x0
	ldi r20,lo8(3199999)
	jmp 0x0
	ldi r21,hi8(3199999)
	jmp 0x0
	ldi r22,hlo8(3199999)
	jmp 0x0
	1: subi r20,1
	jmp 0x0
	sbci r21,0
	jmp 0x0
	sbci r22,0
	jmp 0x0
	brne 1b
	jmp 0x0
	rjmp .L10
	jmp 0x0
.L7:
	ldi r20,lo8(6399999)
	jmp 0x0
	ldi r21,hi8(6399999)
	jmp 0x0
	ldi r22,hlo8(6399999)
	jmp 0x0
	1: subi r20,1
	jmp 0x0
	sbci r21,0
	jmp 0x0
	sbci r22,0
	jmp 0x0
	brne 1b
	jmp 0x0
.L10:
	rjmp .
	jmp 0x0
	nop
	jmp 0x0
	adiw r24,1
	jmp 0x0
	movw r22,r18
	jmp 0x0
	call __divmodhi4
	jmp 0x0
	rjmp .L8
	jmp 0x0
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.2"
