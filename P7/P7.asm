%include "../LIB/pc_iox.inc"

section	.text

	global _start       ;must be declared for using gcc

_start:                     ;tell linker entry point

    mov eax, 0x22446688 ; resultado esperado 0x82244668
    Rol eax, 6
    call pHex_n


	mov eax, 1	;system call number (sys_exit) -- fin del programa
	int 0x80        ;call kernel
