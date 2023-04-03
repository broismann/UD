#!/bin/bash

echo "checking cron service..."
cronstatus=$(systemctl status cron)
if echo "$cronstatus" | grep "running"; then
  echo "It seems that Cron is already running"
else
  echo "service is not running, starting..."
  systemctl start cron
  systemctl status cron
fi
exit 0
  
