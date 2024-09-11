section .data                   ;constantes 
    msg db 'Hello World!', 0xA  ; declaração do ponteiro msg e de seu tamanho com caracter de saltar linha 
    tam equ $- msg              ; declara ponteiro com tamanho da quantidade de caracteris contida em msg
section .bss                    ;variaveis
section .text                   ;inicio programa
    global _start               ;declaração do ponteiro de entrada (obrigatório)
    _start:             ;inicilialização do ponteiro
        mov eax, 0x4    ; receb 0x4
        mov abx, 0x1    ; Saida padrão
        mov ecx, msg    ; recebe a msg
        mov edx, tam    ; recebe o tamanho de msg
        int 0x80        ; Executa

    _out:
        ;0 1 2 3 4 5 6 7 8 9 A B C D E F 10
        ;0                               16
        mov eax, 0x1    ; Sys estou terminando o programa
        mov ebx, 0x0    ; Sys o valor de retorno é 0
        int 0x80        ; Sys Processa