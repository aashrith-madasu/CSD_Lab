obj: matrix_add.c vector_add.c vector_dot.c user.c
	gcc -c matrix_add.c vector_add.c vector_dot.c user.c

arch: matrix_add.o vector_add.o vector_dot.o
	ar -rc libutils.a *.o

comp_arch: user.c libutils.a
	gcc -g user.c -L . -l utils -o a1.out

comp: matrix_add.o vector_add.o vector_dot.o user.o
	gcc user.o vector_add.o vector_dot.o matrix_add.o

arch_all: matrix_add.c vector_add.c vector_dot.c user.c
	make obj
	make arch
	make comp_arch

all: matrix_add.c vector_add.c vector_dot.c
	make obj
	make comp

dump_all: matrix_add.o vector_add.o vector_dot.o a.out
	objdump -d matrix_add.o > matrix_add.dump
	objdump -d vector_add.o > vector_add.dump
	objdump -d vector_dot.o > vector_dot.dump
	objdump -d user.o > user.dump
	objdump -d a.out > a.dump
	objdump -d a1.out > a1.dump
clean:
	rm -rf *.o *.a *.out *.dump