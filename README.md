# baremetal-avr
Highly documented and colorized baremetal examples with atmega328p

### Requirements
avr-gcc
avrdude
qemu for avr emulation

### Download this repo
```shell
git clone https://github.com/mguclu/baremetal-avr.git
```
```shell
cd baremetal-avr
```
## Compile 
```shell
make
```

## Using Flash Script
```shell
chmod +x avr-flash
```

```shell
./avr-flash boot/bin/boot.hex
```

