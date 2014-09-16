#!/bin/bash
echo "Starting Custom Firewall"

#clear all rules
iptables -F


#set default policy
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT DROP


#allowing and rejecting port 80 http, 443 https traffic by changing jumper option from ACCEPT to DROP
#HTTP - 80
iptables -A INPUT -i eth0 -p tcp --dport 80 -m state --state NEW,ESTABLISHED -j ACCEPT
iptables -A OUTPUT -o eth0 -p tcp --sport 80 -m state --state ESTABLISHED -j ACCEPT
#HTTPS - 443
iptables -A INPUT -i eth0 -p tcp --dport 80 -m state --state NEW,ESTABLISHED -j ACCEPT
iptables -A OUTPUT -o eth0 -p tcp --sport 80 -m state --state ESTABLISHED -j ACCEPT

#block speficic ip address
ip_block="192.168.0.14"
iptables -A INPUT -s "$ip_block" -j DROP

#Blocking ICMP echo packets from outside
iptables -A INPUT -p icmp --icmp-type echo-request -j DROP
iptables -A OUTPUT -p icmp --icmp-type echo-reply -j DROP


#Postfix traffic rules
iptables -A INPUT -i eth0 -p tcp --dport 25 -m state --state NEW,ESTABLISHED -j ACCEPT
iptables -A OUTPUT -o eth0 -p tcp --sport 25 -m state --state ESTABLISHED -j ACCEPT

#Imap traffic rules
iptables -A INPUT -i eth0 -p tcp --dport 143 -m state --state NEW,ESTABLISHED -j ACCEPT
iptables -A OUTPUT -o eth0 -p tcp --sport 143 -m state --state ESTABLISHED -j ACCEPT

#Pop3 traffic rules
iptables -A INPUT -i eth0 -p tcp --dport 110 -m state --state NEW,ESTABLISHED -j ACCEPT
iptables -A OUTPUT -o eth0 -p tcp --sport 110 -m state --state ESTABLISHED -j ACCEPT

#Allowing and rejecting  port 22 ssh traffic by just changing jumper option from ACCEPT to DROP

#allow incoming ssh traffic
iptables -A INPUT -i eth0 -p tcp --dport 22 -m state --state NEW,ESTABLISHED -j ACCEPT
iptables -A OUTPUT -o eth0 -p tcp --sport 22 -m state --state ESTABLISHED -j ACCEPT

#allow outoging ssh traffic
iptables -A OUTPUT -o eth0 -p tcp --dport 22 -m state --state NEW,ESTABLISHED -j ACCEPT
iptables -A INPUT -i eth0 -p tcp --sport 22 -m state --state ESTABLISHED -j ACCEPT

#Denial-of-service attack prevention rule
#17/minute means it will allow 17 connections per minute and when it gets whole of those connections then total 40 connections will enforced by burst limit.
iptables -A INPUT -p tcp --dport 80 -m limit --limit 17/minute --limit-burst 40 -j ACCEPT

#Listing rules
iptables -L


#REFERENCE
#http://www.thegeekstuff.com/scripts/iptables-rules
