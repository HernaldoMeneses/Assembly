NOME = entrada

all: $(NOME).o
	ld -s -o $(NOME) $(NOME).o

%.o: %.asm
	nasm -f elf64 $<