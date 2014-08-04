#!/bin/bash
cat > /etc/hostname << EOF
mininet
EOF

cat >> /etc/hosts << EOF
127.0.0.1	localhost
127.0.1.1	mininet.cloudcomplab.ch	mininet
EOF

apt-get update
apt-get upgrade -y

# installing git
apt-get install -y git

# make sure the installation directory is root
cd

# download the latest mininet source tree
git clone git://github.com/mininet/mininet

# install from the source
mkdir /usr/share/mininet
./mininet/util/install.sh -s /usr/share/mininet/ -a

echo "mininet has been installed in /usr/share/mininet/"
echo "To test the installation, run: sudo mn --test pingall" 

