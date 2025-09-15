#!/bin/bash
#Linkeditar o programa compilado
#Tranforma-lo em um executável
#Trazer as bibliotecas fundamentais
#Compilar -> Linguagem de Máquina
#Linkeditar -> Executável by Sys.OP
echo "Digite o nome do programa a ser Linkeditado sem Extensão"
read file
ld -s -o $file $file.o
