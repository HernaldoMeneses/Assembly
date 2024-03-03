;O mais simples dos programas (um programa vazio?)
;Progrmas Assembly => 3 Sections ou sessoes
;section .data (Constantes)
;section .bss (Variaveis)
;section .text (inicio)
;   global _start (definicao ponteiro inicial) (obrigatorio)
;        _start;
;           mov eax, 1 (registratoderes) movimenta 1 para eax ou EAX =1
; 1 em base exadecial 0x1
;1 2 3 4 5 6 7 8 9 A B C D E F
;1 2 3 4 5 6 7 8 9 A B C D E F 10 11 12 13 14 15 16 17 18 19 1A

section .data
section .text
    global _start
        mov eax, 0x1
        mov ebx, 0x0 ; return 0 - System Operacional finish
        int 0x80 ; SO - Process ALL

;Agora só compilar - turn binary .o
;call sys-nasm-compiler.cmd
;after this
;We need linkeditar (Juntar com as bibliotecas do SO) turn .exe
;call sys-nasm-linker.cmd
