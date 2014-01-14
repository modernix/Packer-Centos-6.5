# Install VMWare Tools 
echo "Installing VMWare Tools..."
cd /tmp
mkdir -p /mnt/cdrom
mount -o loop ~/linux.iso /mnt/cdrom
tar zxf /mnt/cdrom/VMwareTools-*.tar.gz -C /tmp/
/tmp/vmware-tools-distrib/vmware-install.pl -d
umount /mnt/cdrom
rm -f ~/linux.iso
rm -f /tmp/VMwareTools-*.tar.gz
rm -rf /tmp/vmware-tools-distrib