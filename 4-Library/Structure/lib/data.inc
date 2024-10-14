section .data
  x dd 05
  y dd 10
  msg1 db 'X maior que Y', LF, NULL
  tam1 equ $ - msg1
  msg2 db 'Y maior que X', LF, NULL
  tam2 equ $ - msg2

;Storage			 Size(bits)		Size(bytes)
;db - Byte			  8-bits		 1 byte
;dw - Word			 16-bits		 2 bytes
;dd - Double-word		 32-bits		 4 bytes
;dq - Quadword	 		 64-bits		 8 bytes
;dt - Tenfold quadword		 80-bits		10 bytes
;dy - Double quadword		128-bits		16 bytes

;resb - Reserve bytes (not initialized)
;resw - Reserve words (not initialized)
;resd - Reserve double-words (not initialized)
;resq - Reserve quadwords (not initialized)
