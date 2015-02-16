
# install on virutal box

vi /etc/apt/sources.list 
deb http://http.kali.org/kali kali main non-free contrib
deb-src http://http.kali.org/ kali kali main non-free contrib
deb http://security.kali.org/kali-security kali/updates main contrib non-free

apt-get update && apt-get install -y linux-headers-$(uname -r) 

cd media
ls -l VBoxLinuxAdditions.run
cp VBoxLinuxAdditions.run /root
chmod 755 VBoxLinuxAdditions.run
ls -l  VBoxLinuxAdditions.run
./VBoxLinuxAdditions.run
