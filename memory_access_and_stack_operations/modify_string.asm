global _start

section .data
	addr db "yellow"
	new_line db 0x0a

	hex_small db 0x2f	; db is 1 byte
	dec_medium dw 1000	; dw is 2 bytes
	dec_large dd 100000	; dd is 4 bytes

section .text
_start:
	mov [addr], byte 'H'	; write 'H' to memory pointed by addr
	mov [addr+5], byte '!'	; write '!' to memory pointed by addr+5
	mov eax, 4	; sys_write system call
	mov ebx, 1	; stdout file descriptor
	mov ecx, addr	; bytes to write
	mov edx, 6	; number of bytes to write
	int 0x80	; perform system call

	mov eax, 4
	mov ebx, 1
	mov ecx, hex_small
	mov edx, 1
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, new_line
	mov edx, 1
	int 0x80

	mov eax, 1	; sys_exit system call
	mov ebx, 0	; exit status is 0
	int 0x80
