#!/bin/bash
cd storage/downloads/11arm64

qemu-system-ppc \
 -accel tcg,tb-size=2048 \
 -machine mac99 \
 -prom-env "boot-args=" \
 -prom-env "vga-ndrv?=true" \
 -cpu g4 \
 -m 512 \
 -g 800x600x32 \
 -device VGA,edid=on,vgamem_mb=64,xres=800,yres=600 \
 -monitor stdio \
 -hda macos.img \
 -cdrom March2001DevToolsCD.dmg \
 -boot c \
 -vnc :0
