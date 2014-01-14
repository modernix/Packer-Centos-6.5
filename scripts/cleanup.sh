yum -y clean all

# Zero out the free space to save space in the final image, I'm told this helps.
echo "Saving diskspace... I'm told this helps..."
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

# Ensure that udev doesn't mess with the network
echo "Ensuring udev doesn't mess with the network..."
ln -sf /dev/null /lib/udev/rules.d/75-persistent-net-generator.rules
rm -f /etc/udev/rules.d/70-persistent-net.rules

# On startup, remove HWADDR from the eth0 interface.
echo "Preparing network...."
cp -f /etc/sysconfig/network-scripts/ifcfg-eth0 /tmp/eth0
sed "/^HWADDR/d" /tmp/eth0 > /etc/sysconfig/network-scripts/ifcfg-eth0
sed -e "s/dhcp/none/;s/eth0/eth1/" /etc/sysconfig/network-scripts/ifcfg-eth0 > /etc/sysconfig/network-scripts/ifcfg-eth1