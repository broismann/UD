#!/bin/bash
echo "please choose one of the option to check:
    1. Firewall status
    2. Network interfaces
    3. CPU info
    4. Check configuration file for system variables
    5. DNS mapper"


read number


case $number in
  1)
    echo "current iptables rules is:" >> iptables.txt
    sudo iptables --list | tee iptables.txt;;
  2)
    echo "current nettwork interfaces:"
    ifconfig | tee ifconfig.txt;
  3)
    lscpu | tee lcpu.txt;;
  4) 
    sudo vim /etc/sysctl.conf;;
  5) 
    sudo vim /etc/resolv.conf;;
  *)
    echo "Wrong input!";;
esac


exit 0
