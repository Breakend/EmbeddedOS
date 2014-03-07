	.file	"program2-kernel.c"
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
	ldi r24,lo8(-48)
	ldi r25,0
/* #APP */
 ;  43 "program2-kernel.c" 1
	jmp r24
 ;  0 "" 2
/* #NOAPP */
	ldi r24,0
	ldi r25,0
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.2"
