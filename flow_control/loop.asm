global _start

section .text
_start:
	mov ebx, 1	; start ebx at 1
	mov ecx, 6	; number of iterations
start:
	add ebx, ebx	; abx += ebx
	dec ecx		; ecx -= 1
	cmp ecx, 0	; compare ecx with 0
	jg start

	mov eax, 1
	int 0x80
