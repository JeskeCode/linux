adduser jdoe
sudo passwd jdoe
sudo usermod -aG sudo jdoe


To check if IPv6 is enabled or disabled, from a terminal window:
$ cat /proc/sys/net/ipv6/conf/all/disable_ipv6
0 means it’s enabled and 1 is disabled.

To disable IPv6
$ sudo su -
# nano /etc/sysctl.conf

and add these lines to sysctl.conf file
#disable ipv6

net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1

Save sysctl.conf file with new config, then reboot your system
# reboot

Check your system again
$ cat /proc/sys/net/ipv6/conf/all/disable_ipv6
Now you should see “1″ means IPv6 has been disabled on your system.


sudo service networking restart
