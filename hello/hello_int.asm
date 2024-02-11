;hello_int
section .data
    msg       db  "hello, world",10
    msg_len  equ  $-msg
section .bss
section .text
    global main
main:
    mov    eax, 4           ; call write
    mov    ebx, 1           ; stdout
    mov    ecx, msg
    mov    edx, msg_len
    int    80h              ; slow opeartion only 32-bit, deprecated for x86_64
    mov    eax, 1           ; call _exit
    mov    ebx, 0
    int    80h
