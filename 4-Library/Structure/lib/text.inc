section .text
global _start

_start:
  mov EAX, DWORD[x]
  mov EBX, DWORD[y]
  ; if - comparacao
  cmp EAX, EBX
  ; salto condicional
  jge point_01 ; EAX >= EBX

  mov ECX, msg2
  mov EDX, tam2
  jmp point_02

  point_01:
    mov ECX, msg1
    mov EDX, tam1

  point_02:
    mov EAX, SYS_WRITE
    mov EBX, STD_OUT
    int SYS_CALL

;DWORD[] - mov values of section .data to registers on section .text


;cmp - Compare registers
;jl  - jump less		<
;je  - jump egual		=
;jg  - jump greaten		>
;jle - jump less equal		<=
;jge - jump greaten equal	>=
;jne - jump not equal		!=
