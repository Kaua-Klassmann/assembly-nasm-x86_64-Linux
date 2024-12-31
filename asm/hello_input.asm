section .data
	input db "Digite seu nome: "
	len_input equ $ - input

	hello db "Hello "
	len_hello equ $ - hello

section .bss
	name resb 64

section .text
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, input
	mov rdx, len_input
	syscall

	mov rax, 0
	mov rdi, 0
	mov rsi, name
	mov rdx, 64
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, hello
	mov rdx, len_hello
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, name
	mov rdx, 64
	syscall
	
	mov rax, 1
	mov rdi, 1
	mov rsi, "!\n"
	mov rdx, 2
	syscall

	jmp _exit

_exit:
	mov rax, 60
	mov rdi, 0
	syscall
