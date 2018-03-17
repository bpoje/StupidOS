all: stupidOS

stupidOS: linker.ld boot.o kernel.o
	i686-pc-elf-gcc -T linker.ld -o stupidOS.bin -ffreestanding -O2 -nostdlib boot.o kernel.o -lgcc

boot.o: boot.s
	i686-pc-elf-as boot.s -o boot.o

kernel.o: kernel.c
	i686-pc-elf-gcc -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

clean:
	rm *.o stupidOS.bin
