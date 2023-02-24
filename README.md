baremetal-avr
======
Highly documented and colorized baremetal examples for atmega328p. This repo demonstrates compiling Assembly and C files and linking them using custom linker scripts. You can also use qemu or avr-flash script to either emulate or flash your code. 



## Requirements

GNU Cross Compiler for AVR **gcc-avr, binutils, avr-libc**.

`
apt-get install gcc-avr binutils-avr avr-libc
`

Downloader/Uploader for AVR microcontrollers **avrdude**.

`
apt-get install avrdude
`

Qemu AVR Emulator **qemu-system-avr**.

`
apt-get install qemu-system-avr
`

## Clone this repo
```shell
git clone https://github.com/mguclu/baremetal-avr.git && cd baremetal-avr/
```

## Compile 
```shell
make
```
## Emulate using QEMU
If you want to emulate atmega328p use this command:

```shell
qemu-system-avr -machine uno -bios ./boot/bin/boot.bin
```
or simply use `make qemu`

Some useful commands:
* `info registers` Show current status of registers
* `xp /10w 0x0` Show 10 Words from starting address (0x0)

## Using flash script
You can customize and use this script for flashing various binary files to various Atmel MCU's.
```shell
chmod +x avr-flash
```

```shell
./avr-flash boot/bin/boot.hex
```

