echo "Installing Base group packages..."
yum -y groupinstall base

echo "Installing some other packages for things like VMWare tools..."
yum -y install kernel-headers kernel-devel gcc make curl wget sudo perl fuse-libs

echo "Updating packages..."
yum -y update