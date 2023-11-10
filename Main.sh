apt update && apt upgrade -y
pkg install x11-repo
termux-setup-storage
pkg install qemu-system-x86-64-headless -y
pkg install qemu-system-x86_64
qemu-system-x86_64 \
-hda /storage/emulated/0/Download/Windows-10.qcow2 \
-cpu max \
-smp cpus=4,cores=4,threads=1,sockets=1 \
-m 2030M \
-machine pc \
-vga vmware -full-screen \
-overcommit mem-lock=off \
-accel tcg,thread=single \
-rtc base=localtime \
-net user -net nic,model=rtl8139 \
-drive file=fat:rw:/storage/emulated/0/Download/Disk \
-vnc 127.0.0.1:1
