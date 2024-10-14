section .bss
  ; Uninitialized variables

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

;resb 10 - Reserve tenfold quadword
;res  16 - Reserve double quadword
