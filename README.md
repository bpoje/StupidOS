# Operating System & Stuff
Write a simple kernel for 32-bit x86 and boot it.
Experimenting with bare bones from osdev.org

```
Install docker:
sudo apt-get install -y docker.io
    
sudo docker search i686-elf | less
sudo docker pull xenos1984/cross-i686-pc-elf
sudo docker images
    
sudo docker run -i -t xenos1984/cross-i686-pc-elf /bin/bash
root@a0155f986599:/#
	git clone https://github.com/bpoje/stupidOS.git
	cd stupidOS/
	i686-pc-elf-as boot.s -o boot.o
	i686-pc-elf-gcc -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
	i686-pc-elf-gcc -T linker.ld -o stupidOS.bin -ffreestanding -O2 -nostdlib boot.o kernel.o -lgcc
	
	apt-get update
	apt-get install qemu-system-i386
	qemu-system-x86_64 -kernel stupidOS.bin -curses
	Press: alt + 2
	Press: q
	
	exit
	
sudo docker ps -a
sudo docker cp <containerId>:/file/path/within/container /host/path/target
sudo docker cp a0155f986599:/stupidOS/stupidOS.bin .
```

