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
