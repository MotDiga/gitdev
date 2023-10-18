global _start


section .text
_start:
    ; Salam and name qst
    MOV eax, 0x4
    MOV ebx, 0x1
    MOV ecx, frstq
    MOV edx, frstql
    INT 0x80

    ; read name
    MOV eax, 0x3
    MOV ebx, 0x0
    MOV ecx, name
    MOV edx, 20
    INT 0x80

    ; age qst
    MOV eax, 0x4
    MOV ebx, 0x1
    MOV ecx, scndq
    MOV edx, scndql
    INT 0x80

    ; read age
    MOV eax, 0x3
    MOV ebx, 0x0
    MOV ecx, age
    MOV edx, 2
    INT 0x80

    ; name ans
    MOV eax, 0x4
    MOV ebx, 0x1
    MOV ecx, frsta
    MOV edx, frstal
    INT 0x80

    ; name
    MOV eax, 0x4
    MOV ebx, 0x1
    MOV ecx, name
    MOV edx, 20
    INT 0x80

    ; age ans
    MOV eax, 0x4
    MOV ebx, 0x1
    MOV ecx, scnda
    MOV edx, scndal
    INT 0x80

    ; age
    MOV eax, 0x4
    MOV ebx, 0x1
    MOV ecx, age
    MOV edx, 2
    INT 0x80

    ; endl
    MOV eax, 0x4
    MOV ebx, 0x1
    MOV ecx, endl
    MOV edx, 1
    INT 0x80

    MOV eax, 0x1
    XOR ebx, ebx
    INT 0x80

section .data
    frstq DB "Salam Alicom", 0x0A, 0x0A, "Your name: "
    frstql EQU $-frstq
    scndq DB "Your age: "
    scndql EQU $-scndq

    frsta DB 0x0A, "Your name is "
    frstal EQU $-frsta
    scnda DB "And your age is "
    scndal EQU $-scnda

    endl DB 0xA

segment .bss
    name RESB 20
    age RESB 2
