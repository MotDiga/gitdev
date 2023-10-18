; Salam Alicom
; ASM_64
; nasm -f elf64 -o msg.o msg.asm
; ld -m elf_x86_64 -o msg msg.o

global _start

section .text
_start:
	MOV rax, 0x0
	MOV rdi, 0x0
	MOV rsi, msg
	MOV rdx, msgl
	SYSCALL

	MOV rax, 0x1
	MOV rdi, 0x1
	MOV rsi, msg
	MOV rdx, msgl
	SYSCALL

	MOV rax, 0x3C
	MOV rdi, 0x0
	SYSCALL


section .data
	msg: DB " ", 0x0
	msgl: EQU 20
