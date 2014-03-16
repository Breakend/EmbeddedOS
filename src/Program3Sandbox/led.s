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
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	ldi r24,0
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	ldi r25,0
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	ldi r18,lo8(3)
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	ldi r19,0
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
.L8:
	sbi 0x5,5
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	cpi r24,2
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	cpc r25,__zero_reg__
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	brne .L2
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	ldi r20,lo8(799999)
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	ldi r21,hi8(799999)
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	ldi r22,hlo8(799999)
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	1: subi r20,1
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	sbci r21,0
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	sbci r22,0
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	brne 1b
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	rjmp .L9
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
.L2:
	cpi r24,1
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	cpc r25,__zero_reg__
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	brne .L4
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	ldi r20,lo8(3199999)
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	ldi r21,hi8(3199999)
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	ldi r22,hlo8(3199999)
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	1: subi r20,1
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	sbci r21,0
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	sbci r22,0
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	brne 1b
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	rjmp .L9
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
.L4:
	ldi r20,lo8(6399999)
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	ldi r21,hi8(6399999)
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	ldi r22,hlo8(6399999)
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	1: subi r20,1
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	sbci r21,0
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	sbci r22,0
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	brne 1b
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
.L9:
	rjmp .
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	nop
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	cbi 0x5,5
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	cpi r24,2
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	cpc r25,__zero_reg__
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	brne .L5
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	ldi r20,lo8(799999)
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	ldi r21,hi8(799999)
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	ldi r22,hlo8(799999)
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	1: subi r20,1
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	sbci r21,0
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	sbci r22,0
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	brne 1b
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	rjmp .L10
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
.L5:
	cpi r24,1
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	cpc r25,__zero_reg__
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	brne .L7
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	ldi r20,lo8(3199999)
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	ldi r21,hi8(3199999)
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	ldi r22,hlo8(3199999)
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	1: subi r20,1
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	sbci r21,0
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	sbci r22,0
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	brne 1b
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	rjmp .L10
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
.L7:
	ldi r20,lo8(6399999)
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	ldi r21,hi8(6399999)
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	ldi r22,hlo8(6399999)
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	1: subi r20,1
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	sbci r21,0
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	sbci r22,0
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	brne 1b
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
.L10:
	rjmp .
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	nop
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	adiw r24,1
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	movw r22,r18
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	call __divmodhi4
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	rjmp .L8
	ldi r30, 0x0059
	ldi r31, 0x0000
	ijmp
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.2"
