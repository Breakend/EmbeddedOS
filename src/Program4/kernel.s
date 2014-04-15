	.file	"program2-kernel.c"
__SP_H__ = 0x83e
__SP_L__ = 0x83d
__SREG__ = 0x83f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	calc_address
	.type	calc_address, @function
calc_address:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	ldi r22,lo8(9)
	ldi r23,0
	call __udivmodhi4
	movw r30,r22
	ldi r28,lo8(5)
	ldi r29,0
	ldi r21,lo8(9)
	mov r14,r21
	mov r15,__zero_reg__
.L3:
	movw r18,r30
	lsl r18
	rol r19
	add r18,r24
	adc r19,r25
	movw r24,r18
	movw r22,r14
	call __udivmodhi4
	movw r16,r24
	movw r24,r18
	sub r24,r30
	sbc r25,r31
	movw r22,r14
	call __udivmodhi4
	sbiw r28,1
	sbiw r28,0
	breq .L2
	movw r30,r16
	rjmp .L3
.L2:
	ldi r20,lo8(9)
	mul r20,r16
	movw r18,r0
	mul r20,r17
	add r19,r0
	clr __zero_reg__
	add r18,r24
	adc r19,r25
	ldi r24,lo8(7)
	mov r20,r24
	mul r20,r18
	movw r24,r0
	mul r20,r19
	add r25,r0
	clr __zero_reg__
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	calc_address, .-calc_address
.global	calc_vaddress
	.type	calc_vaddress, @function
calc_vaddress:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	ldi r22,lo8(9)
	ldi r23,0
	call __udivmodhi4
	movw r30,r22
	ldi r28,lo8(7)
	ldi r29,0
	ldi r23,lo8(9)
	mov r14,r23
	mov r15,__zero_reg__
.L7:
	movw r18,r30
	lsl r18
	rol r19
	add r18,r24
	adc r19,r25
	movw r24,r18
	movw r22,r14
	call __udivmodhi4
	movw r16,r24
	movw r24,r18
	sub r24,r30
	sbc r25,r31
	movw r22,r14
	call __udivmodhi4
	sbiw r28,1
	sbiw r28,0
	breq .L6
	movw r30,r16
	rjmp .L7
.L6:
	ldi r20,lo8(9)
	mul r20,r16
	movw r18,r0
	mul r20,r17
	add r19,r0
	clr __zero_reg__
	add r18,r24
	adc r19,r25
	movw r24,r18
	ldi r22,lo8(7)
	ldi r23,0
	call __udivmodhi4
	movw r24,r22
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
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
	ldi r25,lo8(2)
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
 ;  85 "program2-kernel.c" 1
	sts 0x0200, r24
 ;  0 "" 2
/* #NOAPP */
	lds r24,v_pc
	lds r25,v_pc+1
/* #APP */
 ;  86 "program2-kernel.c" 1
	sts 0x0201, r25
 ;  0 "" 2
/* #NOAPP */
	lds r24,tmpaddr
	lds r25,tmpaddr+1
/* #APP */
 ;  90 "program2-kernel.c" 1
	mov r30, r24
	mov r31, r25
	
 ;  0 "" 2
 ;  93 "program2-kernel.c" 1
	ijmp
 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(64)
	ldi r25,lo8(2)
	sts offset+1,r25
	sts offset,r24
/* #APP */
 ;  101 "program2-kernel.c" 1
	pop r0
 ;  0 "" 2
 ;  111 "program2-kernel.c" 1
	lds r24, 0x0200
	lds r25, 0x0201
	
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
 ;  120 "program2-kernel.c" 1
	sts 0x0200, r24
 ;  0 "" 2
/* #NOAPP */
	lds r24,v_pc
	lds r25,v_pc+1
/* #APP */
 ;  121 "program2-kernel.c" 1
	sts 0x0201, r25
 ;  0 "" 2
/* #NOAPP */
	lds r24,v_pc
	lds r25,v_pc+1
	call calc_address
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
 ;  135 "program2-kernel.c" 1
	mov r30, r24
	mov r31, r25
	
 ;  0 "" 2
 ;  138 "program2-kernel.c" 1
	ijmp
 ;  0 "" 2
 ;  160 "program2-kernel.c" 1
	pop r31
 ;  0 "" 2
 ;  161 "program2-kernel.c" 1
	pop r30
 ;  0 "" 2
 ;  163 "program2-kernel.c" 1
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
	call calc_vaddress
	sts v_pc+1,r25
	sts v_pc,r24
	lds r24,v_pc
	lds r25,v_pc+1
/* #APP */
 ;  171 "program2-kernel.c" 1
	sts 0x0200, r24
 ;  0 "" 2
/* #NOAPP */
	lds r24,v_pc
	lds r25,v_pc+1
/* #APP */
 ;  172 "program2-kernel.c" 1
	sts 0x0201, r25
 ;  0 "" 2
 ;  177 "program2-kernel.c" 1
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
