This folder contains contents of the PXE share on Synology/DSM

1. Follow https://www.synoforum.com/resources/pxe-boot-via-synology-nas.15/ to enable network install. 
2. Download k3os initrd and vmlinuz files
```shell script
mkdir k3os
cd k3os
wget https://github.com/rancher/k3os/releases/download/v0.21.1-k3s1r0/k3os-initrd-amd64
wget https://github.com/rancher/k3os/releases/download/v0.21.1-k3s1r0/k3os-vmlinuz-amd64
```
The entry is already in `pxelinux.cfg`

3. Pre-assign ip-address with the MAC-addres in both DHCP services (DSM and Router). To avoid the ip changing at unexpected moment after install.

Now boot from network on the cluster hardware.