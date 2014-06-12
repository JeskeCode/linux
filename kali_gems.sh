# Feeling a little more adventurous? Want to build the latest version of Kali? 
# Want to customize your ISO? Looking for KDE, LXDE, MATE, XFCE and other customizations? 
# This is the option for you. With everything set up correctly, the basic process is as simple as
apt-get install git live-build cdebootstrap
git clone git://git.kali.org/live-build-config.git
cd live-build-config
lb config
lb build
