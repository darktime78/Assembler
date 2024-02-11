;hello4.asm
extern printf       ; for build
section .data
    msg     db  "Hello, world!",0
    fmtstr  db  "This is our string: %s",10,0 ; Format output string
section .bss
section .text
    global main
main:
    push    rbp
    mov     rbp, rsp
    mov     rdi, fmtstr
    mov     rsi, msg
    xor     rax, rax ; set 0 fast then mov rax, 0
    ;call    printf wrt ..plt
    call    printf
    mov     rsp, rbp
    pop     rbp
    mov     rax, 60
    xor     rdi, rdi ; set 0 fast then mov rdi, 0
    syscall
