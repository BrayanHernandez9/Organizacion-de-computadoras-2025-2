%include "../LIB/pc_iox.inc"

section	.text

	global _start       ;must be declared for using gcc

_start:                     ;tell linker entry point

    mov cx, 0x3F48 ; resultado esperado 0xFA40
	shr cx, 1
	shl cl, 1
    ;shr cx, 2
	;shl cx, 1
	;shr ch, 1
	;shl cx, 1
    
    add eax, ecx
	call pHex_dw

	mov al,10	
	call putchar


	mov eax, 1	;system call number (sys_exit) -- fin del programa
	int 0x80        ;call kernel
