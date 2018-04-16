#!/bin/bash
# iptables -t nat -A OUTPUT -p tcp --destination 10.0.2.15/31 -j DNAT --to-destination 127.0.0.1:10080
qemu-system-i386 -cdrom ~/Downloads/Darkly_i386.iso -m 2G -hda gopa.img -net user,hostfwd=tcp::10080-:80 -net nic
