section .data
    hello db 'Hello, World!', 0

section .text
    global main

extern ExitProcess
extern GetStdHandle
extern WriteConsoleA

main:
    ; Obtém o identificador do console
    mov r8, -11             ; STD_OUTPUT_HANDLE
    call GetStdHandle
    mov rcx, rax            ; Handle do console em rcx

    ; Escreve a string no console
    mov r9, hello           ; Ponteiro para a string
    mov rdx, 13             ; Comprimento da string
    mov r8, 0               ; Não usado
    mov rax, 0x00404606     ; WriteConsoleA syscall number
    call syscall

    ; Sai do programa
    mov rax, 0              ; Código de saída 0
    call ExitProcess

; Função para chamar a syscall WriteConsoleA
syscall:
    sub rsp, 28             ; Ajuste do stack para a syscall
    call rax                ; Chama a syscall
    add rsp, 28             ; Restaura o stack
    ret




