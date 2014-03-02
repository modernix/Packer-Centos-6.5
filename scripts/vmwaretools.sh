#!/bin/bash -eux

yum erase -y fuse

# Install VMWare Tools 
echo "Installing VMWare Tools..."
cd /tmp
mkdir -p /mnt/cdrom
mount -o loop /home/vagrant/linux.iso /mnt/cdrom
tar zxf /mnt/cdrom/VMwareTools-*.tar.gz -C /tmp/
/tmp/vmware-tools-distrib/vmware-install.pl --default
rm /home/vagrant/linux.iso
umount /mnt/cdrom
rmdir /mnt/cdrom