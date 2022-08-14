global _start

section .data
	msg db "Hello World!", 0x0a	; 0x0a=10=\n
	len equ $ - msg			; automatic calculation of msg length

section .text
_start:
	mov eax, 4	; sys_write system call
	mov ebx, 1	; stdout file descriptor
	mov ecx, msg	; bytes to write, msg - pointer to text
	mov edx, len	; number of bytes to write
	int 0x80	; interrupt, 0x80 - perform system call

	mov eax, 1	; sys_exit system call
	mov ebx, 0	; exit status of sys_exit
	int 0x80
