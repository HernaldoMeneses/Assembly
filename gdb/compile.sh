#!/bin/bash
read file				; read file name
nasm -f elf64 -g -F dwarf $file.asm	; Compile with depure info
ld -o $file $file.o			; linkedit to run file
