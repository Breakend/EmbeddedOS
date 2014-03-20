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
	lsl r24
	rol r25
	lsl r24
	rol r25
	ret
	.size	calc_address, .-calc_address
.global	calc_vaddress
	.type	calc_vaddress, @function
calc_vaddress:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lsr r25
	ror r24
	lsr r25
	ror r24
	ret
	.size	calc_vaddress, .-calc_vaddress
	.section	.text.startup,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sts v_pc+1,__zero_reg__
	sts v_pc,__zero_reg__
	ldi r24,0
	ldi r25,lo8(1)
	sts offset+1,r25
	sts offset,r24
	lds r20,tmpaddr
	lds r21,tmpaddr+1
	lds r24,v_pc
	lds r25,v_pc+1
	lds r18,offset
	lds r19,offset+1
	add r24,r20
	adc r25,r21
	add r24,r18
	adc r25,r19
	sts tmpaddr+1,r25
	sts tmpaddr,r24
	lds r24,v_pc
	lds r25,v_pc+1
/* #APP */
 ;  55 "program2-kernel.c" 1
	sts 0x0200, r24
 ;  0 "" 2
/* #NOAPP */
	lds r24,v_pc
	lds r25,v_pc+1
/* #APP */
 ;  56 "program2-kernel.c" 1
	sts 0x0201, r25
 ;  0 "" 2
/* #NOAPP */
	lds r24,tmpaddr
	lds r25,tmpaddr+1
/* #APP */
 ;  60 "program2-kernel.c" 1
	mov r30, r24
	mov r31, r25
	
 ;  0 "" 2
 ;  63 "program2-kernel.c" 1
	ijmp
 ;  0 "" 2
 ;  70 "program2-kernel.c" 1
	lds r24, 0x0200
 ;  0 "" 2
/* #NOAPP */
	sts v_pc+1,r25
	sts v_pc,r24
	lds r24,v_pc
	lds r25,v_pc+1
	adiw r24,1
	sts v_pc+1,r25
	sts v_pc,r24
	lds r24,v_pc
	lds r25,v_pc+1
/* #APP */
 ;  78 "program2-kernel.c" 1
	sts 0x0200, r24
 ;  0 "" 2
/* #NOAPP */
	lds r24,v_pc
	lds r25,v_pc+1
/* #APP */
 ;  79 "program2-kernel.c" 1
	sts 0x0201, r25
 ;  0 "" 2
/* #NOAPP */
	lds r24,v_pc
	lds r25,v_pc+1
	lsl r24
	rol r25
	lsl r24
	rol r25
	sts tmpaddr+1,r25
	sts tmpaddr,r24
	lds r18,tmpaddr
	lds r19,tmpaddr+1
	lds r24,offset
	lds r25,offset+1
	add r24,r18
	adc r25,r19
	sts tmpaddr+1,r25
	sts tmpaddr,r24
	lds r24,tmpaddr
	lds r25,tmpaddr+1
/* #APP */
 ;  93 "program2-kernel.c" 1
	mov r30, r24
	mov r31, r25
	
 ;  0 "" 2
 ;  96 "program2-kernel.c" 1
	ijmp
 ;  0 "" 2
 ;  118 "program2-kernel.c" 1
	pop r31
 ;  0 "" 2
 ;  119 "program2-kernel.c" 1
	pop r30
 ;  0 "" 2
 ;  121 "program2-kernel.c" 1
	mov r24, r30
	mov r25, r31
	
 ;  0 "" 2
/* #NOAPP */
	sts tmpaddr+1,r25
	sts tmpaddr,r24
	lds r24,tmpaddr
	lds r25,tmpaddr+1
	lds r18,offset
	lds r19,offset+1
	sub r24,r18
	sbc r25,r19
	sts tmpaddr+1,r25
	sts tmpaddr,r24
	lds r24,tmpaddr
	lds r25,tmpaddr+1
	lsr r25
	ror r24
	lsr r25
	ror r24
	sts v_pc+1,r25
	sts v_pc,r24
/* #APP */
 ;  130 "program2-kernel.c" 1
	ijmp
 ;  0 "" 2
/* #NOAPP */
	ldi r24,0
	ldi r25,0
	ret
	.size	main, .-main
	.comm	v_pc,2,1
	.comm	offset,2,1
	.comm	tmpaddr,2,1
	.ident	"GCC: (GNU) 4.8.2"
.global __do_clear_bss
