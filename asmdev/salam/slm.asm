; Salam Alicom
; ASM_x86
; nasm -f elf32 -o slm.o slm.asm
; ld -m elf_i386 -o slm slm.o

global _start

section .text
_start:
    mov eax, 0x4    ; write syscall
    mov ebx, 0x1    ; stdout
    mov ecx, msg    ; message buffer
    mov edx, msgl   ; message lenght
    int 0x80        ; syscall

    mov eax, 0x1    ; exit syscall
    mov ebx, 0x0    ; return 0
    int 0x80        ; syscall

section .data
    msg db 'Salam Alicom', 0xA
    msgl equ $-msg
