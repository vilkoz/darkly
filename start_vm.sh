#!/bin/bash
qemu-system-i386 -cdrom ~/Downloads/Darkly_i386.iso -m 2G -hda gopa.img -net user,hostfwd=tcp::10080-:80 -net nic
