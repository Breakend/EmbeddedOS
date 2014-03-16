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
	jmp 0x0059
	ldi r24,0
	jmp 0x0059
	ldi r25,0
	jmp 0x0059
	ldi r18,lo8(3)
	jmp 0x0059
	ldi r19,0
	jmp 0x0059
.L8:
	sbi 0x5,5
	jmp 0x0059
	cpi r24,2
	jmp 0x0059
	cpc r25,__zero_reg__
	jmp 0x0059
	brne .L2
	jmp 0x0059
	ldi r20,lo8(799999)
	jmp 0x0059
	ldi r21,hi8(799999)
	jmp 0x0059
	ldi r22,hlo8(799999)
	jmp 0x0059
	1: subi r20,1
	jmp 0x0059
	sbci r21,0
	jmp 0x0059
	sbci r22,0
	jmp 0x0059
	brne 1b
	jmp 0x0059
	rjmp .L9
	jmp 0x0059
.L2:
	cpi r24,1
	jmp 0x0059
	cpc r25,__zero_reg__
	jmp 0x0059
	brne .L4
	jmp 0x0059
	ldi r20,lo8(3199999)
	jmp 0x0059
	ldi r21,hi8(3199999)
	jmp 0x0059
	ldi r22,hlo8(3199999)
	jmp 0x0059
	1: subi r20,1
	jmp 0x0059
	sbci r21,0
	jmp 0x0059
	sbci r22,0
	jmp 0x0059
	brne 1b
	jmp 0x0059
	rjmp .L9
	jmp 0x0059
.L4:
	ldi r20,lo8(6399999)
	jmp 0x0059
	ldi r21,hi8(6399999)
	jmp 0x0059
	ldi r22,hlo8(6399999)
	jmp 0x0059
	1: subi r20,1
	jmp 0x0059
	sbci r21,0
	jmp 0x0059
	sbci r22,0
	jmp 0x0059
	brne 1b
	jmp 0x0059
.L9:
	rjmp .
	jmp 0x0059
	nop
	jmp 0x0059
	cbi 0x5,5
	jmp 0x0059
	cpi r24,2
	jmp 0x0059
	cpc r25,__zero_reg__
	jmp 0x0059
	brne .L5
	jmp 0x0059
	ldi r20,lo8(799999)
	jmp 0x0059
	ldi r21,hi8(799999)
	jmp 0x0059
	ldi r22,hlo8(799999)
	jmp 0x0059
	1: subi r20,1
	jmp 0x0059
	sbci r21,0
	jmp 0x0059
	sbci r22,0
	jmp 0x0059
	brne 1b
	jmp 0x0059
	rjmp .L10
	jmp 0x0059
.L5:
	cpi r24,1
	jmp 0x0059
	cpc r25,__zero_reg__
	jmp 0x0059
	brne .L7
	jmp 0x0059
	ldi r20,lo8(3199999)
	jmp 0x0059
	ldi r21,hi8(3199999)
	jmp 0x0059
	ldi r22,hlo8(3199999)
	jmp 0x0059
	1: subi r20,1
	jmp 0x0059
	sbci r21,0
	jmp 0x0059
	sbci r22,0
	jmp 0x0059
	brne 1b
	jmp 0x0059
	rjmp .L10
	jmp 0x0059
.L7:
	ldi r20,lo8(6399999)
	jmp 0x0059
	ldi r21,hi8(6399999)
	jmp 0x0059
	ldi r22,hlo8(6399999)
	jmp 0x0059
	1: subi r20,1
	jmp 0x0059
	sbci r21,0
	jmp 0x0059
	sbci r22,0
	jmp 0x0059
	brne 1b
	jmp 0x0059
.L10:
	rjmp .
	jmp 0x0059
	nop
	jmp 0x0059
	adiw r24,1
	jmp 0x0059
	movw r22,r18
	jmp 0x0059
	call __divmodhi4
	jmp 0x0059
	rjmp .L8
	jmp 0x0059
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.2"
