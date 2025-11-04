%include "../LIB/pc_iox.inc"

section	.text

	global _start       ;must be declared for using gcc

section .data
    mensaje db 'Tamaño del arreglo (0 al 9)', 0xa, 0
    N       dw 0
    guardado db 'Vector guardado' , 0xa, 0


_start:                     ;tell linker entry point
  ;Almacenar un vector de tamaño N de tipo byte en rango de 0 a 9
  ;lugar de memoria del vector EBX, Tamaño del vector N
  ;Maximo 10 caracteres  mov CX, N

    mov edx, mensaje
    call puts

    call getche
    mov [N], al
    push ax
    mov al, 10
    call putchar
    pop ax

    mov cx, 5
    mov ebx, -1

    .ciclo: add ebx, 1
    call getche
    push ax
    mov al,10
    call putchar
    pop ax

    loop .ciclo

    mov edx, guardado
    call puts

    


	mov eax, 1	;system call number (sys_exit) -- fin del programa
	int 0x80        ;call kernel