#!/bin/bash

cd storage/downloads/11arm64/m68k



qemu-system-m68k -boot c -L pc-bios -M q800 -m 64 -bios Quadra800.rom -drive file=pram-macos.img,format=raw,if=mtd -device scsi-hd,scsi-id=0,drive=hd0 -drive file=mainDisk.img,media=disk,format=raw,if=none,id=hd0 -device scsi-cd,scsi-id=3,drive=cd0 -drive file=8.1.iso,media=cdrom,if=none,id=cd0
