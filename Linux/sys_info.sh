#!/bin/bash

DATE=$(date +"%m-%d-%Y")
echo "Hello, it is $DATE"
echo "You are $USER"
echo "Your IP address is $(hostname -I | awk '{print $1}')"
echo "This is $HOSTNAME"
echo "Your DNS is $(hostname -I | awk '{print $2}')"
echo "Your total amount of memory is $(cat /proc/meminfo | head -1 | awk '{print $2,$3}')"
echo "Your CPU is $(cat /proc/cpuinfo | grep "model name" | head -1 | awk '{print $4,$5,$6,$7,$8,$9}')"
#echo "Your Disk size is
echo -e "The current logged on users are:.\n $(w)"