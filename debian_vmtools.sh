# vm-tools

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


# xfce4 GUI

apt-get install xfce4
sudo apt-get install xfce4-goodies
apt-get install xfce4-*

add-apt-repository 'deb http://ppa.launchpad.net/shimmerproject/ppa/ubuntu quantal main'
apt-get update
aptitude search shimmer
p   shimmer-themes-greybird         - Greybird Theme from the Shimmer Project
apt-get install shimmer-themes-greybird

# Applications Menu > Settings > Appearance
