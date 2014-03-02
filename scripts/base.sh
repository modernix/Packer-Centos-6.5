#!/bin/bash -eux

#echo "Installing Base group packages..."
yum -y groupinstall base

#echo "Installing some other packages for things like VMWare tools..."
yum -y install gcc make curl wget sudo perl fuse-libs nfs-utils

echo "Updating packages..."
yum -y update

echo "Rebooting the machine"
reboot
sleep 30