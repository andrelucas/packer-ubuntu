#!/bin/sh

set -e -x
cd /home/vagrant
mount -o loop VBoxGuestAdditions.iso /mnt
cd /mnt
./VBoxLinuxAdditions.run || true
cd /
umount /mnt
exit 0
