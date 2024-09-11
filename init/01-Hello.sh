#!/bin/bash
# Nome do Script: nome_do_script.sh
# Descrição: compila o 01-Hello.asm para 01-Hello.o e chama o linkeditor 
# Autor: Hernaldo Meneses
# Data: 10-09-2024

#chmod +x 01-Hello.sh

nasm -f elf64 01-Hello.asm
./01-Linkeditar-Hello.sh