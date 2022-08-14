global _start

section .text
_start:
	mov ecx, 9
	mov ebx, 0
	cmp ecx, 10	; compare ecx to 10 and write result somewhere in the memory
	jl skip		; jump if cmp says ecx is less than 10, don't jump otherwhise
	mov ebx, 1
skip:
	mov eax, 1
	int 0x80

	je A, B		; Jump if A equal to B
	jne A, B	; Jump if A not equal to B
	jg A, B		; Jump if A greater than B
	jge A, B	; Jump if A greater than or equal to B
	jl A, B		; Jump if A less than B
	jle A, B	; Jump if A less than or equal to B
