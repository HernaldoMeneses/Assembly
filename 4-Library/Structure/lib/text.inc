section .text
global _start

_start:
  mov EAX, DWORD[x]
  mov EBX, DWORD[y]

  cmp EAX, EBX 		; if - comparacao
  jge point_01 		; salto condicional EAX >= EBX

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
