NOME = 02-Entrada

all: $(NOME).o
	ld -s -o $(NOME) $(NOME).o

%.o: %.asm
	nasm -f elf64 $<