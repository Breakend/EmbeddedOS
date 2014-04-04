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
	ldi r30, 0x0087 ;note these three lines (ijmp) can be replaced with a single jmp
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	ldi r24,0
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	ldi r25,0
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	ldi r18,lo8(3)
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	ldi r19,0
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
.L8:
	sbi 0x5,5
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	cpi r24,2
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	cpc r25,__zero_reg__
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	brne .X1
	jmp 0x010E ; double what its supposed to be because of gcc compiler 
.X1:
	ldi r28, lo8(gs(.L2)) ;use the same one to disturb the least amount of registers
	push r28
	ldi r28, hi8(gs(.L2))
	push r28
	jmp 0x019A
	ldi r20,lo8(799999)
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	ldi r21,hi8(799999)
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	ldi r22,hlo8(799999)
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
.S1:  
	subi r20,1
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	sbci r21,0
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	sbci r22,0
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	brne .S1
	ldi r30, 0x00D3
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	rjmp .L9
	ldi r30, 0x00D3
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
.L2:
	cpi r24,1
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	cpc r25,__zero_reg__
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	brne .L4
	ldi r30, 0x00D3
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	ldi r20,lo8(3199999)
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	ldi r21,hi8(3199999)
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	ldi r22,hlo8(3199999)
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
.S2: 
	subi r20,1
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	sbci r21,0
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	sbci r22,0
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	brne .S2
	ldi r30, 0x00D3
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	rjmp .L9
	ldi r30, 0x00D3
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
.L4:
	ldi r20,lo8(6399999)
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	ldi r21,hi8(6399999)
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	ldi r22,hlo8(6399999)
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
.S3: 
	subi r20,1
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	sbci r21,0
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	sbci r22,0
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	brne .S3
	ldi r30, 0x00D3
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
.L9:
	rjmp .
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	nop
	nop
	nop
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	cbi 0x5,5
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	cpi r24,2
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	cpc r25,__zero_reg__
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	brne .L5
	ldi r30, 0x00D3
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	ldi r20,lo8(799999)
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	ldi r21,hi8(799999)
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	ldi r22,hlo8(799999)
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
.S4: 
	subi r20,1
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	sbci r21,0
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	sbci r22,0
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	brne .S4
	ldi r30, 0x00D3
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	rjmp .L10
	ldi r30, 0x00D3
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
.L5:
	cpi r24,1
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	cpc r25,__zero_reg__
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	brne .L7			
	ldi r30, 0x00D3
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	ldi r20,lo8(3199999)
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	ldi r21,hi8(3199999)
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	ldi r22,hlo8(3199999)
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
.S5: 
	subi r20,1
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	sbci r21,0
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	sbci r22,0
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	brne .S5
	ldi r30, 0x00D3
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	rjmp .L10
	ldi r30, 0x00D3
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
.L7:
	ldi r20,lo8(6399999)
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	ldi r21,hi8(6399999)
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	ldi r22,hlo8(6399999)
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
.S6: 
	subi r20,1
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	sbci r21,0
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	sbci r22,0
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	brne .S6
	ldi r30, 0x00D3
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
.L10:
	rjmp .
	ldi r30, 0x00D3
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	nop
	nop
	nop
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	adiw r24,1
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	movw r22,r18
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	call __divmodhi4 ;try leaving this here, it should be an internal service routine??
	ldi r30, 0x008D
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	rjmp .L8
	ldi r30, 0x00D3
	ldi r31, 0x0000
	ijmp
	nop
	nop
	nop
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.2"
