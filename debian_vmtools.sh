# as root
mount /dev/cdrom /mnt
tar xzf /mnt/VMwareTools*
umount /mnt
apt-get update
apt-get install gcc make linux-headers-$(uname -r)
cd vmware-tools-distrib
./vmware-install.pl
cd
rm -rf vmware-tools-distrib
shutdown -r now
