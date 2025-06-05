#!/bin/bash

qemu-system-x86_64 -m 3072M -cpu max -smp 4 -hda storage/downloads/11arm64/tiny10.vhd -vga std -net user -net nic,model=rtl8139 -usb -usbdevice tablet -accel tcg,thread=multi,tb-size=386 -smp 4,cores=4,sockets=1,threads=1 -M pc -monitor stdio -k en-us -device ac97 -vnc :0
