#!/bin/bash

. ./color.sh

HOSTNAME=$(hostname)
TIMEZONE=$(timedatectl | awk '/Time zone:/ { print $3, "UTS" }')
USER=$USER
OS=$(cat /etc/issue | cut -d " " -f 1-3)
DATE=$(date -R | cut -d " " -f 2-5)
UPTIME=$(uptime -p | awk '{print $2, $3, $5}')
UPTIME_SEC=$(cat /proc/uptime | awk '{print $1, "sec"}')
IP=$(hostname -I)
MASK=$(ipcalc $(hostname -I) | awk '/Netmask/{print $2}')
GATEWAY=$(ip route | awk '/default/{print $3}')
RAM_TOTAL=$(free | awk '/Mem:/ {printf("%.3f", $2/(1024*1024))}')
RAM_USED=$(free | awk '/Mem:/ {printf("%.3f", $3/(1024*1024))}')
RAM_FREE=$(free | awk '/Mem:/ {printf("%.3f", $4/(1024*1024))}')
SPACE_ROOT=$(df / | awk 'NR==2 {printf("%.2f", $2/1024)}')
SPACE_ROOT_USED=$(df / | awk 'NR==2 {printf("%.2f", $3/1024)}')
SPACE_ROOT_FREE=$(df / | awk 'NR==2 {printf("%.2f", $4/1024)}')




echo -e "${foreground_q}${background_q}HOSTNAME\033[0m = ${foreground_a}${background_a}$HOSTNAME\033[0m"
echo -e "${foreground_q}${background_q}TIMEZONE\033[0m = ${foreground_a}${background_a}$TIMEZONE\033[0m"
echo -e "${foreground_q}${background_q}USER\033[0m = ${foreground_a}${background_a}$(whoami)\033[0m"
echo -e "${foreground_q}${background_q}OS\033[0m = ${foreground_a}${background_a}$OS\033[0m"
echo -e "${foreground_q}${background_q}DATE\033[0m = ${foreground_a}${background_a}$DATE\033[0m" 
echo -e "${foreground_q}${background_q}UPTIME\033[0m = ${foreground_a}${background_a}$UPTIME\033[0m" 
echo -e "${foreground_q}${background_q}UPTIME_SEC\033[0m = ${foreground_a}${background_a}$UPTIME_SEC\033[0m" 
echo -e "${foreground_q}${background_q}IP\033[0m = ${foreground_a}${background_a}$IP\033[0m"
echo -e "${foreground_q}${background_q}MASK\033[0m = ${foreground_a}${background_a}$MASK\033[0m\033[K"
echo -e "${foreground_q}${background_q}GATEWAY\033[0m = ${foreground_a}${background_a}$GATEWAY\033[0m" 
echo -e "${foreground_q}${background_q}RAM_TOTAL\033[0m = ${foreground_a}${background_a}$RAM_TOTAL\033[0m${foreground_a}${background_a} GB\033[0m"
echo -e "${foreground_q}${background_q}RAM_USED\033[0m = ${foreground_a}${background_a}$RAM_USED\033[0m${foreground_a}${background_a} GB\033[0m"
echo -e "${foreground_q}${background_q}RAM_FREE\033[0m = ${foreground_a}${background_a}$RAM_FREE\033[0m${foreground_a}${background_a} GB\033[0m"
echo -e "${foreground_q}${background_q}SPACE_ROOT\033[0m = ${foreground_a}${background_a}$SPACE_ROOT\033[0m${foreground_a}${background_a} MB\033[0m"
 echo -e "${foreground_q}${background_q}SPACE_ROOT_USED\033[0m = ${foreground_a}${background_a}$SPACE_ROOT_USED\033[0m${foreground_a}${background_a} MB\033[0m"
echo -e "${foreground_q}${background_q}SPACE_ROOT_FREE\033[0m = ${foreground_a}${background_a}$SPACE_ROOT_FREE\033[0m${foreground_a}${background_a} MB\033[0m\n"

colorMix 