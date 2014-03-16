	.file	"program2-kernel.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	calc_address
	.type	calc_address, @function
calc_address:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	add r24,r22
	adc r25,r23
	ret
	.size	calc_address, .-calc_address
	.section	.text.startup,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,jmpAddress
	lds r25,jmpAddress+1
	lds r18,v_pc
	lds r19,v_pc+1
	add r24,r18
	adc r25,r19
	sts jmpAddress+1,r25
	sts jmpAddress,r24
/* #APP */
 ;  39 "program2-kernel.c" 1
	push r24
 ;  0 "" 2
 ;  52 "program2-kernel.c" 1
	pop r30
 ;  0 "" 2
 ;  53 "program2-kernel.c" 1
	ijmp
 ;  0 "" 2
/* #NOAPP */
	ldi r24,0
	ldi r25,0
	ret
	.size	main, .-main
.global	v_pc
	.data
	.type	v_pc, @object
	.size	v_pc, 2
v_pc:
	.word	1
.global	jmpAddress
	.type	jmpAddress, @object
	.size	jmpAddress, 2
jmpAddress:
	.word	207
	.ident	"GCC: (GNU) 4.8.2"
.global __do_copy_data
