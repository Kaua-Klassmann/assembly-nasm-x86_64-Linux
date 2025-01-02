section .data
	hello db "Hello", 0xA
	len_hello equ $ - hello

section .text
	global _start

_start:
	call .print
	call .print

	jmp .exit

.print:
	mov rax, 1
	mov rdi, 1
	mov rsi, hello
	mov rdx, len_hello
	syscall
	ret

.exit:
	mov rax, 60
	mov rdi, 0
	syscall
