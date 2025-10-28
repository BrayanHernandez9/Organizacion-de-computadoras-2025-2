%include "../LIB/pc_iox.inc"

section	.text

	global _start       ;must be declared for using gcc

section .data
    menor db 'Es menor a 5' ,0xa, 0
    mayor db 'Es mayor a 5', 0xa, 0

_start:                     ;tell linker entry point
    
    call getche
    push ax

    mov al, 10
    call putchar

    pop ax

    mov dl, 5
    CMP al, dl
    
    JB .MENOR

    mov edx,mayor
    call puts
    jmp .fin

    .MENOR: mov edx,menor
    call puts

   

	mov eax, 1	;system call number (sys_exit) -- fin del programa
	int 0x80        ;call kernel