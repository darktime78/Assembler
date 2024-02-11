;hello2.asm
section .data
    msg    db    "Hello, world",0
    nl     db    0xa ; Code ASCII symbol new line
section .bss
section .text
    global main
main:
    mov    rax, 1
    mov    rdi, 1
    mov    rsi, msg
    mov    rdx, 12
    syscall
    mov    rax, 1
    mov    rdi, 1
    mov    rsi, nl
    mov    rdx, 1
    syscall         ; Second syscall for lew line
    mov    rax, 60
    mov    rdi, 0
    syscall

