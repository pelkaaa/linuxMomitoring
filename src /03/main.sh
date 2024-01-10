#!/bin/bash

if [ $# -ne 4 ]; then
    echo "ERROR: there should be exactly 4 parameters."
    exit 1
else 

    if [[ $@ =~ [[:digit:]] ]]; then
        for i in $@; do
            if [[ $i -lt 1 || $i -gt 6 ]]; then
            echo "ERROR: numbers should be between 1 and 6. Please try again."
            exit 1
            fi
        done
        if [[ $1 -eq $2 || $3 -eq $4 ]]; then
            echo "ERROR: background and foreground colors must be different. Please try again."
            else
            . ./color.sh
            . ./answer.sh
            fi
    else 
     echo "ERROR: parameters are not numbers between 1 and 6. Please try again."
    exit 1
    fi
fi