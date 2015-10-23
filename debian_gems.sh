#install source headers
apt-get update
apt-get install gcc make linux-headers-$(uname -r)

#fix “Device not managed” error in network-manager
If you want Network Manager to handle interfaces that are enabled in /etc/network/interfaces:
Set managed=true in /etc/NetworkManager/NetworkManager.conf. So this file looks like:
  
[main]
plugins=ifupdown,keyfile
[ifupdown]
managed=true

service network-manager restart

# fix vobx boot error
gedit /etc/modprobe.d/fbdev-blacklist.conf:
# blacklist i2c_piix4


#install cinnamon (and remove)
apt-get install kali-defaults kali-root-login desktop-base cinnamon
apt-get remove cinnamon

# xfce4 GUI
apt-get install xfce4
apt-get install xfce4-goodies

#install openvpn
apt-get install network-manager-openvpn-gnome
wget https://www.privateinternetaccess.com/openvpn/openvpn.zip
mv openvpn.zip /etc/openvpn
cd /etc/openvpn
unzip openvpn.zip

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

#install python easy tools
apt-get install python-setuptools
easy_install pip

#install firefox
apt-get remove iceweasel
echo -e "\ndeb http://downloads.sourceforge.net/project/ubuntuzilla/mozilla/apt all main" | tee -a /etc/apt/sources.list > /dev/null
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com C1289A29
apt-get update
apt-get install firefox-mozilla-build

# docky
apt-get install docky
Unzip to ~/.local/share/docky/themes #(create the 'themes' directory if it's not there). 
# For all users /usr/share/docky/themes.

# add new user to sudo
adduser jdoe
passwd jdoe
usermod -aG sudo jdoe

# system tools
apt-get install sudo
apt-get install qbittorrent
apt-get install gparted
apt-get install lshw lshw-gtk
apt-get install hardinfo
apt-get install sysinfo
apt-get install smartmontools
apt-get install gsmartcontrol

sudo apt-get install network-manager-openvpn
sudo apt-get install network-manager-openvpn-gnome
/etc/init.d/network-manager restart

wget https://www.privateinternetaccess.com/installer/install_ubuntu.sh 
sudo sh ./install_ubuntu.sh

cd /opt/openvpn/
wget https://www.privateinternetaccess.com/openvpn/openvpn.zip
unzip openvpn.zip

/etc/init.d/network-manager restart



