section .text
global _start

_start:
  mov EAX, DWORD[x]
  mov EBX, DWORD[y]
  ; if - comparacao
  cmp EAX, EBX
  ; salto condicional
  jge maior ; EAX >= EBX

  ;jl menor ; EAX < EBX
  ; je = , jg > , jge >= , jle <= , jne !=
  ; jump equal 
  ; jump greatem
  ; jump less equal

  mov ECX, msg2
  mov EDX, tam2
  jmp final

  maior:
    mov ECX, msg1
    mov EDX, tam1

  final:
    mov EAX, SYS_WRITE
    mov EBX, STD_OUT
    int SYS_CALL

    mov EAX, SYS_EXIT
    xor EBX, EBX ; mov EBX, RET_EXIT      AND OR XOR
    int SYS_CALL


;n	8421	AND	OR	XOR	XOR
;
;7	0111	0111	0111	0111	EBX
;5	0101	0101	0101	0101	EBX
;=	____________________________
;		0101	0111	0010	0
;		5	7	2	0
