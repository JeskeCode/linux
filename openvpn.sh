apt-get install network-manager-openvpn network-manager-pptp \
        network-manager-pptp-gnome network-manager-vpnc
        
wget https://www.privateinternetaccess.com/openvpn/openvpn.zip

mv openvpn.zip /etc/openvpn
cd /etc/openvpn
unzip openvpn.zip
