# Процедура завантаження системи

1. Завантажувач: U-Boot SPL (MLO) -> U-Boot (u-boot.img).
2. Ядро: Linux Kernel zImage + Device Tree (am335x-boneblack.dtb).
3. Корінь: Initramfs (rootfs.cpio.gz) на базі BusyBox із динамічною компоновкою glibc.
4. Ініціалізація: /bin/sh через параметр ядра rdinit=/bin/sh або запуск /etc/init.d/rcS.
