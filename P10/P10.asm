%include "../LIB/pc_iox.inc"
    global _suma;

section .text

    global _suma

section .data


_suma:

    ;precedimiento que sume dos numeros int suma( int num1, int num 2)

    push ebp
    mov ebp, esp
    mov eax, [ebp + 8]
    add eax, [ebp + 12]
    pop ebp
    ret
