#!/bin/bash

HOSTNAME=$(hostname)
echo "HOSTNAME = " $HOSTNAME

TIMEZONE=$(timedatectl | awk '/Time zone:/ { print $3, "UTS" }')
echo "TIMEZONE = " $TIMEZONE

USER=$USER
echo "USER = " $USER

OS=$(cat /etc/issue | cut -d " " -f 1-3)
echo "OS = " $OS

DATE=$(date -R | cut -d " " -f 2-5)
echo "DATE = " $DATE

UPTIME=$(uptime -p | awk '{print $2, $3, $5}')
echo "UPTIME = " $UPTIME

UPTIME_SEC=$(cat /proc/uptime | awk '{print $1, "sec"}')
echo "UPTIME = " $UPTIME

IP=$(hostname -I)
echo "IP = " $IP

MASK=$(ipcalc $(hostname -I) | awk '/Netmask/{print $2}')
echo "MASK = " $MASK

GATEWAY=$(ip route | awk '/default/{print $3}')
echo "GATEWAY = " $GATEWAY

RAM_TOTAL=$(free | awk '/Mem:/ {printf("%.3f", $2/(1024*1024))}')
echo "RAM_TOTAL = " $RAM_TOTAL

RAM_USED=$(free | awk '/Mem:/ {printf("%.3f", $3/(1024*1024))}')
echo "RAM_USED = " $RAM_USED

RAM_FREE=$(free | awk '/Mem:/ {printf("%.3f", $4/(1024*1024))}')
echo "RAM_FREE = " $RAM_FREE

SPACE_ROOT=$(df / | awk 'NR==2 {printf("%.2f", $2/1024)}')
echo "SPACE_ROOT = " $SPACE_ROOT

SPACE_ROOT_USED=$(df / | awk 'NR==2 {printf("%.2f", $3/1024)}')
echo "SPACE_ROOT_USED = " $SPACE_ROOT_USED

SPACE_ROOT_FREE=$(df / | awk 'NR==2 {printf("%.2f", $4/1024)}')
echo "SPACE_ROOT_FREE = " $SPACE_ROOT_FREE

