%include "../LIB/pc_iox.inc"

section	.text

	global _start       

section .data
    menor db 'Es menor a 5' ,0xa, 0
    mayor db 'Es mayor o igual 5', 0xa, 0
    finprograma db 'Fin del programa', 0xa, 0

_start:                    

    call getche
    push ax

    mov al, 10
    call putchar

    pop ax
    sub al,0x30

    mov dl, 5
    CMP al, dl
    
    JB .MENOR

    mov edx,mayor
    call puts
    jmp .fin

    .MENOR: mov edx,menor
    call puts
  
    .fin:mov edx, finprograma
    call puts

	mov eax, 1	
	int 0x80        