;Welcome!!!!!
section .data                   ; variáveis inicializadas  (object)
    msg db 'Hello World!', 0xA  ; declara var msg define-byet  
    tam equ $- msg              ; declara var tam equal tamanho de  msg

section .bss		; variáveis não-inicializadas 	(smpty-space)
    ;do nothing.

section .text           ; comands section 
    global _start	; ponto de entrada (. 01010101 - 1B)
    _start:	; init_
        mov eax, 0x4    ; receb 0x4  
        mov ebx, 0x1   	; Standard-out
        mov ecx, msg    ; recebe a msg "Hello World! \n" 01010101
        mov edx, tam    ; recebe o tamanho de msg
        int 0x80        ; do

    _out:
        mov eax, 0x1    ; Sys estou terminando o programa
        mov ebx, 0x0    ; Sys o valor de retorno é 0
        int 0x80        ; Sys Processa
;0 1 2 3 4 5 6 7 8 9 A B C D E F 10
;0				 16
