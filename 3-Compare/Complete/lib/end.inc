section .end
    mov EAX, SYS_EXIT
    xor EBX, EBX
    int SYS_CALL
