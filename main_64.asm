; Author: Cake

section .text
    global _start

_start:

    mov rax, 0x1                            ;/ sys_write
    mov rdi, 1                              ;| stdout
    mov rsi, message                        ;| message
    mov rdx, message_len                    ;| message length

    syscall                                 ;| syscall

    mov rax, 0x60                           ;| sys_exit
    mov rbx, 0                              ;| exit code

    syscall                                 ;| syscall

section .data
    message db "Hello, World!", 0xa, 0x00   ;| Message
    message_len equ $ - message             ;\ Message length
