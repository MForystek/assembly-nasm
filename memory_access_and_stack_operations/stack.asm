global _start

_start:
	; place string to stack manually
	sub esp, 5
	mov [esp], byte 'H'
	mov [esp+1], byte 'e'
	mov [esp+2], byte 'y'
	mov [esp+3], byte '!'
	mov [esp+4], byte 0x0a

	; write to stdout
	mov eax, 4
	mov ebx, 1
	mov ecx, esp
	mov edx, 5
	int 0x80

	; exit the program
	mov eax, 1
	mov ebx, 0
	int 0x80
