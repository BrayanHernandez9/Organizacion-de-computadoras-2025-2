%include "../LIB/pc_iox.inc"

section .data
N      db 0

section	.text

	global _start       ;must be declared for using gcc

_start:                     ;tell linker entry point
   
    mov ebx, 0x5C4B2A60
    ADD ebx, 0x02202783
    push bx 
    
    mov eax, ebx

    mov al, 8
    mul bl

    mov word[N], ax

    inc dword[N]

    mov eax, dword [N]
    mov ax, 0xFF
    div bx

    idiv bx
    add word[N], 0x0000031D

    POP ax
    call pHex_dw
    mov al,10
	call putchar
    

	mov eax, 1	;system call number (sys_exit) -- fin del programa
	int 0x80        ;call kernel

