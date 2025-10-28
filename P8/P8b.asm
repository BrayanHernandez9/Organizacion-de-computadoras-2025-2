%include "../LIB/pc_iox.inc"

section	.text

	global _start       ;must be declared for using gcc

section .data

    Letra db 'Es una letra' ,0xa, 0
    Numero db 'Es un numero', 0xa, 0

_start:                     ;tell linker entry point
    call getche ; Letra o caracter [0-9] O [A-Z]
    mov bx, -1
    mov , 0
    mov , 'A'



	mov eax, 1	;system call number (sys_exit) -- fin del programa
	int 0x80        ;call kernel