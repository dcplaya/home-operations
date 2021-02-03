#!/bin/bash

echo "Setting Static IP:"
echo "node03 - 10.10.1.43/24"

cat <<EOF > /etc/netplan/01-netcfg.yaml
network:
  version: 2
  renderer: networkd
  ethernets:
    eth0:
      dhcp4: no
      addresses:
        - 10.10.1.43/24
      gateway4: 10.10.1.1
      nameservers:
          addresses: [10.201.50.20, 10.10.1.1]
EOF