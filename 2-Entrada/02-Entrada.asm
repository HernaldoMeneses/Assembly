segment .data
    LF          equ 0xA     ; Line Feed (quebra de linha)
    NULL        equ 0xD     ; Final da String
    SYS_CALL    equ 0x80    ; Envia informação ao SO
    
    ; eax
    SYS_EXIT    equ 0x1     ; Codigo de chamada para finalizar
    SYS_READ    equ 0x3     ; Operacao realizada com sucesso
    SYS_WRITE   equ 0x4     ; Operação de Leitura

    ; ebx
    RET_EXIT    equ 0x0     ; Operação de Escrita
    STD_IN      equ 0x0     ; Entrada padrao
    STD_OUT     equ 0x1     ; Saida padrao

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