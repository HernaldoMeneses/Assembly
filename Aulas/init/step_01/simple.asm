
section .data
section .text
global _start
_start:
	mov eax, 0x1 ; Sys finish
	mov ebx, 0x0 ; Sys return 0 for noone
	int 0x80

