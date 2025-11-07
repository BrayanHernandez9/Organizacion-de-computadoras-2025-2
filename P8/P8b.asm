%include "../LIB/pc_iox.inc"

section	.text

	global _start      

section .data

    Letra db 'Es una letra' ,0xa, 0
    Numero db 'Es un numero', 0xa, 0

_start:                     
    call getche ; Letra o caracter [0-9] O [A-Z]
    mov bx, -1
    mov , 0
    mov , 'A0'



	mov eax, 1	
	int 0x80        