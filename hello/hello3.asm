;hello2.asm
section .data
    msg  db  "Hello, world",10,0 ; Message with new line 
section .bss
section .text
    global main
main:
    mov    rax, 1                ; Write = 1
    mov    rdi, 1                ; set stdout
    mov    rsi, msg              ; set message
    mov    rdx, 13               ; set message length  without 0
    syscall                      ; Call output message
    mov    rax, 60               ; Exit = 60
    mov    rdi, 0                ; Set return code
    syscall                      ; Call Exit 

