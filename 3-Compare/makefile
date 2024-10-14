NOME = 03-Compare

all: $(NOME).o
	ld -s -o $(NOME) $(NOME).o

%.o: %.asm
	nasm -f elf64 $<
