#!/bin/sh

set -e -x
cd /home/vagrant
mount -o loop linux.iso /mnt
tar xzf /mnt/VMwareTools*.tar.gz
umount /mnt

cd vmware-tools-distrib

# The -f is needed to override the 'you should use open-vm-tools' prompt.
# open-vm-tools lack the hgfs driver vagrant needs.
./vmware-install.pl -d -f

# https://dantehranian.wordpress.com/2014/08/19/vagrant-vmware-resolving-waiting-for-hgfs-kernel-module-timeouts/
echo "answer AUTO_KMODS_ENABLED yes" | sudo tee -a /etc/vmware-tools/locations

exit 0

