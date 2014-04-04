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
	;scrambled iterations 5
	;unscramble iterations 7
	sbi 0x4,5
	nop ;pad to make it sqrt friendly
	movw r22,r18
.L7:ldi r20,lo8(6399999)
	cpc r25,__zero_reg__
	brne .L5
	ldi r22,hlo8(6399999)
	ldi r20,lo8(3199999)
	ldi r21,hi8(799999)
	call __divmodhi4
	ldi r21,hi8(6399999)
	brne .L7
	ldi r20,lo8(799999)
.S3: subi r20,1
	ldi r21,hi8(3199999)
	ldi r22,hlo8(799999)
	ldi r24,0
	rjmp .L8
	ldi r20,lo8(3199999)
	ldi r21,hi8(799999)
	sbci r21,0
	ldi r22,hlo8(3199999)
.S1: subi r20,1
	ldi r25,0
	.size	main, .-main
.S6: subi r20,1
	ldi r22,hlo8(6399999)
	sbci r22,0
.S2: subi r20,1
	sbci r21,0
	ldi r18,lo8(3)
	.ident	"GCC: (GNU) 4.8.2"
	sbci r21,0
	ldi r22,hlo8(3199999)
	ldi r21,hi8(3199999)
	ldi r22,hlo8(799999)
	sbci r22,0
	ldi r19,0
	nop
	sbci r22,0
.S5: subi r20,1
	sbci r21,0
.S4: subi r20,1
	brne S3
	sbci r21,0
	nop
	brne 1b
	sbci r21,0
	sbci r22,0
	nop
.L9:rjmp .
	sbci r22,0
	brne .S1
.L8:sbi 0x5,5
	sbci r22,0
	brne .S4
	cbi 0x5,5
	rjmp .L9
	brne .S2
	rjmp .L9
	cpi r24,2
	nop
.L10:rjmp .
	cpi r24,2
.L4:ldi r20,lo8(6399999)
	cpc r25,__zero_reg__
.L2:cpi r24,1
	cpc r25,__zero_reg__
	nop
	nop
	brne .S5
	rjmp .L10
	brne .L4
	ldi r20,lo8(799999)
	brne .L2
	nop
	adiw r24,1
	rjmp .L10
.L5:cpi r24,1
	cpc r25,__zero_reg__
	ldi r21,hi8(6399999)
