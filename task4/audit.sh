#!/bin/bash
echo "please choose one of the option to check:
    1. Uptime
    2. Current users
    3. Recent logins
    4. TOP-10 processes by RAM/CPU usage
    5. Virtual Memory usage
    6. Usage disk space"


read number


case $number in
  1)
    echo "uptime is:"
    uptime | tee uptime.txt;;
  2)
    echo "current users right now:"
    who | tee users.txt;;
  3)
    echo "recent logins:"
    last -ai | tee last.txt;;
  4) 
    echo "TOP-10 processes right now:"
    top | head -n 19 | tee top10.txt;;
  5) 
    echo "Virtual memory usage:"
    vmstat -s | tee vm.txt;;
  6)
    echo "Usage disk space:"
    df -h | tee disk.txt;;
  *)
    echo "Wrong input!";;
esac


exit 0

