bits 64

extern ExitProcess
extern Sleep
extern SendMessageA

section .text
global main

main:
    sub rsp, 40

    mov rcx, 1000
    call Sleep

    mov rcx, 0xFFFF
    mov rdx, 0x0112
    mov r8, 0xF170
    mov r9, 2
    call SendMessageA

    xor rcx, rcx
    call ExitProcess
