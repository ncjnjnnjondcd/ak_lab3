#!/bin/bash
# Запуск емуляції ядра та rootfs у QEMU
qemu-system-arm \
  -M virt \
  -cpu cortex-a7 \
  -m 512M \
  -no-reboot \
  -nographic \
  -kernel ../repos/linux-stable/arch/arm/boot/zImage \
  -initrd ../repos/busybox/rootfs.cpio.gz \
  -append "console=ttyAMA0 earlycon rdinit=/bin/sh root=/dev/ram0 panic=1"
