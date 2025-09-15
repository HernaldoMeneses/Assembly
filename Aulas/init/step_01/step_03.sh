#!/bin/bash
#Compile
echo "Digite o arquivo a ser compilado sem extensão"
read file
nasm -f elf64 $file.asm
