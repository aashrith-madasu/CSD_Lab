pp: main.c utils.c utils.h sort.c
	cpp main.c > main.i
	cpp utils.c > utils.i
	cpp utils.h > utils.h.i
	cpp sort.c > sort.i

compile: main.i utils.i utils.h.i sort.i
	gcc -S main.i
	gcc -S utils.i
	gcc -S utils.h.i
	gcc -S sort.i

asm: main.s utils.s utils.h.s sort.s
	as main.s -o main.o
	as utils.s -o utils.o
	as utils.h.s -o utils.h.o
	as sort.s -o sort.o

link: main.o utils.o utils.h.o sort.o
	gcc main.o utils.o utils.h.o sort.o

dump: main.o utils.o utils.h.o sort.o a.out
	objdump -d main.o > main_objdump.txt
	objdump -d utils.o > utils_objdump.txt
	objdump -d utils.h.o > utils_header_objdump.txt
	objdump -d sort.o > sort_objdump.txt
	objdump -d a.out > a_objdump.txt

	objdump -t main.o > main_symtab.txt
	objdump -t utils.o > utils_symtab.txt
	objdump -t utils.h.o > utils_header_symtab.txt
	objdump -t sort.o > sort_symtab.txt
	objdump -t a.out > a_symtab.txt

all: main.c utils.c utils.h sort.c
	make pp	
	make compile
	make asm
	make link
	make dump
	./a.out
	
clean:
	rm *.i && rm *.s && rm *.o && rm *.txt && rm a.out