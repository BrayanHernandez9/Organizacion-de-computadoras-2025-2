%include "../LIB/pc_iox.inc"

section	.text

	global _start       ;must be declared for using gcc

_start:                     ;tell linker entry point

    mov CH, 0xA7 ; por enmascaramiento activar los bits 3 y 6 sin modificar los demas.
    ;0000-0000-0000-0000-1010-0111-0000-0000 a 0000-0000-0000-0000-0000-0000-0100-1000
    XOR ecx, 0000-0000-0000-0000-0000-0000-0100-1000
    mov eax, ecx
	call pHex_dw

	mov al,10	
	call putchar


	mov eax, 1	;system call number (sys_exit) -- fin del programa
	int 0x80        ;call kernel
