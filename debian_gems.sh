# vm-tools

mount /dev/cdrom /mnt
tar xzf /mnt/VMwareTools*
umount /mnt
apt-get update
apt-get install gcc make linux-headers-$(uname -r)
cd vmware-tools-distrib
./vmware-install.pl
rm -rf vmware-tools-distrib
shutdown -r now


# xfce4 GUI
apt-get install xfce4
apt-get install xfce4-goodies

## speed-up xfce gui
Open the file named .gtkrc-2.0 in the home directory. If the file does not exist, then create one.
gtk-menu-popup-delay = 0
gtk-menu-popdown-delay = 0
gtk-menu-bar-popup-delay = 0
gtk-enable-animations = 0
gtk-timeout-expand = 10

# apt-get usage
apt-get help
apt-get install {package}
apt-get remove {package}
apt-get --purge remove {package}
apt-get update
apt-get upgrade
apt-get update
apt-get dist-upgrade
apt-cache search keyword
apt-cache show package_name

#install firefox
apt-get remove iceweasel
add to /etc/apt/sources.list file:	
deb http://packages.linuxmint.com debian import
apt-get update	
gpg --keyserver pgp.mit.edu --recv-keys 3EE67F3D0FF405B2
gpg --export 3EE67F3D0FF405B2 > 3EE67F3D0FF405B2.gpg
apt-key add ./3EE67F3D0FF405B2.gpg
rm ./3EE67F3D0FF405B2.gpg
apt-get install firefox

