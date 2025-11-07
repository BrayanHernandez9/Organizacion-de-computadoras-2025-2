%include "../LIB/pc_iox.inc"

section .text

    global _start

 section .data
    final dw 'Fin del programa', 0xa, 0
    asterisco dw '*', 0xa, 0
    

_start:

    call getche

    push ax
    mov al, 10
    call putchar
    pop ax
     

    sub al, 0x30
    mov cx, ax

   

    .ciclo:
    mov edx, asterisco
    call puts

    push ax
    mov al, 10
    call putchar
    pop ax

    inc edx
    loop .ciclo

    mov eax, 1
    int 0x80