#!/bin/bash

# ifconfig gives you your system network information. Parse out your local IP (192.168.xxx.xxx) address and display it
# only.
# $ ./whats_my_ip.sh
# Example output
# 192.168.18.2

# ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | 
#     grep -Eo '([0-9]*\.){3}[0-9]*' |
#     grep -Eo '192.168.[0-9]*.[0-9]*'

ifconfig |grep 'inet' | grep -v 'inet6' | awk '{print $2}' | cut -d ':' -f2 
    # | grep -Eo '192.168.[0-9]*.[0-9]*'

# grep 'inet' displays all lines with inet in it which stands for internet protocol
# grep -v 'inet6' # displays all lines without inet6 in it which stands for internet protocol version 6
# awk 'print $2' # prints the second column of the line which is the IP address
# cut -d ':' -f2 cuts the IP address by the delimiter : and prints the sedcond column which is the IP address

$SHELL