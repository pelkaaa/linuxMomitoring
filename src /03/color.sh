#!/bin/bash

fwhite="\033[97m"
fred="\033[91m"
fgreen="\033[92m"
fblue="\033[94m"
fpurple="\033[95m"
fblack="\033[30m"

bwhite="\033[107m"
bred="\033[101m"
bgreen="\033[102m"
bblue="\033[104m"
bpurple="\033[105m"
bblack="\033[40m"


case $1 in 
1) foreground_q=${fwhite};;
2) foreground_q=${fred};;
3) foreground_q=${fgreen};;
4) foreground_q=${fblue};;
5) foreground_q=${fpurple};;
6) foreground_q=${fblack};;
esac

case $2 in 
1) backgroung_q=${bwhite};;
2) backgroung_q=${bred};;
3) backgroung_q=${bgreen};;
4) backgroung_q=${bblue};;
5) backgroung_q=${bpurple};;
6) backgroung_q=${bblack};;
esac

case $3 in 
1) foreground_a=${fwhite};;
2) foreground_a=${fred};;
3) foreground_a=${fgreen};;
4) foreground_a=${fblue};;
5) foreground_a=${fpurple};;
6) foreground_a=${fblack};;
esac

case $4 in 
1) foreground_a=${bwhite};;
2) foreground_a=${bred};;
3) foreground_a=${bgreen};;
4) foreground_a=${bblue};;
5) foreground_a=${bpurple};;
6) foreground_a=${bblack};;
esac