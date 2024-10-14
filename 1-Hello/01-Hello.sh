#!/bin/bash
# Nome do Script: nome_do_script.sh
# Descrição: compila o 01-Hello.asm para 01-Hello.o e chama o linkeditor 
# Autor: Hernaldo Meneses
# Data: 10-09-2024

#chmod +x 01-Hello.sh

nasm -f elf64 01-Hello.asm		 # turn to  bin
sleep 5                   		 # waiting for binary
ld -s -o 01-HelloExec 01-Hello.o         # linked libriry OS 
./01-HelloExec                           # Executa o programa

