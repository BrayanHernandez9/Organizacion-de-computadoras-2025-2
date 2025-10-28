%include "../LIB/pc_iox.inc"

section	.text

	global _start       ;must be declared for using gcc

_start:                     ;tell linker entry point

    mov esi, 0x20D685F3 ; por enmascaramiento invertir los bits 0, 5, 13, 18 y 30
	; 0010-0000-1101-0110-1000-0101-1111-0011 
	;a 0110-0000-1101-0010-1010-0101-1101-0010

	XOR esi, 0110-0000-1101-0010-1010-0101-1101-0010
    mov eax, esi
	call pHex_dw

	mov al,10	
	call putchar


	mov eax, 1	;system call number (sys_exit) -- fin del programa
	int 0x80        ;call kernel
