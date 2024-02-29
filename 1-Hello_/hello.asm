section .data
    hello db 'Hello, World!', 0

section .text
    global _start

_start:
    ; Escreve a string no console
    mov eax, 4              ; Número da chamada de sistema para escrever no console
    mov ebx, 1              ; Descritor de arquivo padrão para saída (stdout)
    mov ecx, hello          ; Ponteiro para a string
    mov edx, 13             ; Comprimento da string
    int 0x80                ; Chama a interrupção 0x80

    ; Sai do programa
    mov eax, 1              ; Número da chamada de sistema para sair
    xor ebx, ebx            ; Código de saída 0
    int 0x80                ; Chama a interrupção 0x80



