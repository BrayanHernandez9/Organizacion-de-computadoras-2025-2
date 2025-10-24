%include "../LIB/pc_iox.inc"

section	.text

	global _start       ;must be declared for using gcc

_start:                     ;tell linker entry point

    mov eax, 0x22446688 ; resultado esperado 0x82244668
	rol eax, 6

	;ROl eax, 2
	;ror al, 2
	;ror ah, 2
	;rol al, 3
	;rol [al], 1
	call pHex_dw

	mov al,10	
	call putchar


	mov eax, 1	;system call number (sys_exit) -- fin del programa
	int 0x80        ;call kernel
