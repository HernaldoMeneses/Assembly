segment .data
    LF          equ 0xA     ; Line Feed (quebra de linha)
    NULL        equ 0xD     ; Final da String
    SYS_CALL    equ 0x80    ; Envia informação ao SO
    
    ; eax
    SYS_EXIT    equ 0x1     ; Codigo de chamada para finalizar
    SYS_READ    equ 0x3     ; Operacao de Leitura
    SYS_WRITE   equ 0x4     ; Operação de Escrita

    ; ebx
    RET_EXIT    equ 0x0     ; Sucefully!
    STD_IN      equ 0x0     ; Entrada padrao
    STD_OUT     equ 0x1     ; Saida padrao
