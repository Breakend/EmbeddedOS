	.file	"program1.c"
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
	ldi r24,0
	ldi r25,0
	ldi r18,lo8(3)
	ldi r19,0
.L8:sbi 0x5,5
	cpi r24,2
	cpc r25,__zero_reg__
	brne .L2
	ldi r20,lo8(799999)
	ldi r21,hi8(799999)
	ldi r22,hlo8(799999)
.S1: subi r20,1
	sbci r21,0
	sbci r22,0
	brne .S1
	rjmp .L9
.L2:cpi r24,1
	cpc r25,__zero_reg__
	brne .L4
	ldi r20,lo8(3199999)
	ldi r21,hi8(3199999)
	ldi r22,hlo8(3199999)
.S2: subi r20,1
	sbci r21,0
	sbci r22,0
	brne .S2
	rjmp .L9
.L4:ldi r20,lo8(6399999)
	ldi r21,hi8(6399999)
	ldi r22,hlo8(6399999)
.S3: subi r20,1
	sbci r21,0
	sbci r22,0
	brne S3
.L9:rjmp .
	nop
	cbi 0x5,5
	cpi r24,2
	cpc r25,__zero_reg__
	brne .L5
	ldi r20,lo8(799999)
	ldi r21,hi8(799999)
	ldi r22,hlo8(799999)
.S4: subi r20,1
	sbci r21,0
	sbci r22,0
	brne .S4
	rjmp .L10
.L5:cpi r24,1
	cpc r25,__zero_reg__
	brne .L7
	ldi r20,lo8(3199999)
	ldi r21,hi8(3199999)
	ldi r22,hlo8(3199999)
.S5: subi r20,1
	sbci r21,0
	sbci r22,0
	brne .S5
	rjmp .L10
.L7:
	ldi r20,lo8(6399999)
	ldi r21,hi8(6399999)
	ldi r22,hlo8(6399999)
.S6: subi r20,1
	sbci r21,0
	sbci r22,0
	brne 1b
.L10:
	rjmp .
	nop
	adiw r24,1
	movw r22,r18
	call __divmodhi4
	rjmp .L8
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.2"
