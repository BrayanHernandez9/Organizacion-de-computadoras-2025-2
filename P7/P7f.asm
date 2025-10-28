%include "../LIB/pc_iox.inc"

section	.text

	global _start       ;must be declared for using gcc

_start:                     ;tell linker entry point

    mov BP, 0x67DA ; por enmascaramiento descativar los bits 1,4,6,10,14 sin modificar los demas.
    ; 0000-0000-0000-0000-0110-0111-1101-1010 a 0000-0000-0000-0000-0010-0011-1000-1000
    ; 0000-0000-0000-0000-0010-0011-1000-1000
    AND ebp, 0000-0000-0000-0000-0010-0011-1000-1000
    mov eax, ebp
	call pBin_dw

	mov al,10	
	call putchar


	mov eax, 1	;system call number (sys_exit) -- fin del programa
	int 0x80        ;call kernel
