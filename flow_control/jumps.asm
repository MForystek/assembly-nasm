global _start


section .text
_start:	
	mov eax, 1	; sys_exit system call
	jmp skip	; jmp - unconditional jump of EIP pointer to the specified label
			; skip - name of label to which processor will jump
			; EIP - pointer to the place in machine code which processor will be executing
	mov ebx, 99
skip:
	mov ebx, 0	; exit status
	int 0x80
