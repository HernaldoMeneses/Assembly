%include "library.inc"

section .data               ;constantes
    msg db "Entre com seu nome ", LF, NULL
    tam equ $- msg
section .bss                ;variáveis
    nome resb 1             ;criada variável de caracters
section .text
global _start
    _start:
        mov eax, SYS_WRITE
        mov ebx, STD_OUT
        mov ecx, msg
        mov edx, tam
        int SYS_CALL

        mov eax, SYS_READ
        mov ebx, STD_IN
        mov ecx, nome
        mov edx, 0xA
        int SYS_CALL
    _end:
        mov eax, SYS_EXIT
        mov ebx, RET_EXIT
        int SYS_CALL
