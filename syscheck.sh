#!/bin/bash

Today=$(date)
current_user=$(whoami)
hostname=$(hostname)



echo " The date today is $Today "
echo " logged in as $current_user "
echo " The hostname is $hostname "


DISK_USAGE=$(df / | tail -1 | awk '{print $5}' | tr -d '%')

if [ $DISK_USAGE -gt 80 ]; then
	echo "Warning: Disk is ${DISK_USAGE}% full!"
else 
	echo "All good! Disk is at ${DISK_USAGE}%"
fi


echo "RAM usage: $(free -h | grep Mem | awk '{print $3}')"
echo "Files in home: $(ls ~ | wc -l)"
