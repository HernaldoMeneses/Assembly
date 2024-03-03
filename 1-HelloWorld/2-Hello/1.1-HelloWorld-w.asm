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
    msg db 'Hello World', 0 ; Null-terminated string

section .text
    global _start

_start:
    ; Write to standard output
    mov rax, 0x1 ; System call number for sys_write
    mov rdi, 0x1 ; File descriptor for standard output
    mov rsi, msg ; Pointer to the message
    mov rdx, 12 ; Length of the message
    syscall ; Invoke the system call

    ; Exit the program
    mov rax, 0x60 ; System call number for sys_exit
    xor rdi, rdi ; Return 0 - program exit status
    syscall ; Invoke the system call


;Agora só compilar - turn binary .o
;call sys-nasm-compiler.cmd
;after this
;We need linkeditar (Juntar com as bibliotecas do SO) turn .exe
;call sys-nasm-linker.cmd
