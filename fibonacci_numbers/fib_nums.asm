global _start

section .text
	prompt db "Enter a number between 0 and 9: "
	lenPrompt equ $-prompt
	nl db 0x0a

section .bss
	num resb 1

section .text
_start:
	; Prompt message to user
	mov rcx, prompt
	mov rdx, lenPrompt
	call write

	; Read number from user
	mov rax, 3
	mov rbx, 2
	mov rcx, num
	mov rdx, 4
	int 0x80

	; Initialize fib numbers
	mov r8, 0
	mov r9, 0

	; Write 0 to the console
	mov rcx, num
	mov rdx, 1
	call write
	call newline

	cmp r8, [num]
	je exit

	; Write 1 to the console
	mov rcx, r9
	mov rdx, 1
	call write
	call newline

	cmp r9, [num]
	je exit

	; Exit with error
	mov rax, 1
	mov rbx, 8
	int 0x80

exit:
	; Exit program
	mov rax, 1
	mov rbx, 0
	int 0x80

write:
	mov rax, 4
	mov rbx, 1
	int 0x80
	ret

newline:
	mov rax, 4
	mov rbx, 1
	mov rcx, nl
	mov rdx, 1
	int 0x80
	ret
