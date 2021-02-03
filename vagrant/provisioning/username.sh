#!/bin/bash

# Adds username and keys. Also adds username to sudoers
# Passsword is encrypted using 
# perl -e 'print crypt("2IL@ove19Pizza4_", "salt"),"\n"'

sudo useradd -m -p ak0r4VFVOwt6A carpenam
sudo echo 'carpenam ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
mkdir /home/carpenam/.ssh
curl -s https://github.com/dcplaya.keys --output /home/carpenam/.ssh/authorized_keys
