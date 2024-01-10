#!/bin/bash

. ./config.conf

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

front_q=$column1_font_color
front_a=$column2_font_color
back_q=$column1_background
back_a=$column2_background

default_fh=5
default_fv=2
default_bh=6
default_bv=6

if [[ -z $front_q ]]; then
	front_q=$default_fh
fi

if [[ -z $front_a ]]; then
        front_a=$default_fv
fi

if [[ -z $back_q ]]; then
        back_q=$default_bv
fi

if [[ -z $back_a ]]; then
        back_a=$default_bh
fi

case $front_q in 
1) foreground_q=${fwhite};;
2) foreground_q=${fred};;
3) foreground_q=${fgreen};;
4) foreground_q=${fblue};;
5) foreground_q=${fpurple};;
6) foreground_q=${fblack};;
esac

case $back_q in 
1) background_q=${bwhite};;
2) background_q=${bred};;
3) background_q=${bgreen};;
4) background_q=${bblue};;
5) background_q=${bpurple};;
6) background_q=${bblack};;
esac

case $front_a in 
1) foreground_a=${fwhite};;
2) foreground_a=${fred};;
3) foreground_a=${fgreen};;
4) foreground_a=${fblue};;
5) foreground_a=${fpurple};;
6) foreground_a=${fblack};;
esac

case $back_a in 
1) background_a=${bwhite};;
2) background_a=${bred};;
3) background_a=${bgreen};;
4) background_a=${bblue};;
5) background_a=${bpurple};;
6) background_a=${bblack};;
esac

function colorMix {

    if [ $back_q -eq 2 ]; then
	echo "Column 1 background = 2 (red)"
else 
	echo "Column 1 background = default (black)"
fi

if [ $front_q -eq 4 ]; then
        echo "Column 1 font color = 4 (blue)"
else 
        echo "Column 1 font color = default (purple)"
fi

if [ $back_a -eq 5 ]; then
        echo "Column 2 background = 5 (purple)"
else 
        echo "Column 2 background = default (black)"
fi

if [ $front_a -eq 1 ]; then
        echo "Column 2 font color = 1 (white)"
else 
        echo "Column 2 font color = default (green)"
fi
}

