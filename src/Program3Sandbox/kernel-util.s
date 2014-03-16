.global _asm_jump 

_asm_jump: 
	mov r7,r24  ; move argument to r7 
	ld.w r8,r7 
	mov pc,r8   ; not sure if this is legal but try anyways