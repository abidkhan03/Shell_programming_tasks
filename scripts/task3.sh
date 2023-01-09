#!/bin/sh

# ifconfig gives you your system network information. Parse out your local IP (192.168.xxx.xxx) address and display it
# only.
# $ ./whats_my_ip.sh
# Example output
# 192.168.18.2

ifconfig | grep "inet " | grep -v

# display the ip address of your system
echo "Your IP address is: " | grep "inet " | grep -v




$SHELL