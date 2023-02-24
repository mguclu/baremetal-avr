

all:	
	make -C boot/
	make -C io/
clean:
	make clean -C boot/
	make clean -C io/
qemu:

	qemu-system-avr -machine uno -bios ./boot/bin/boot.bin
