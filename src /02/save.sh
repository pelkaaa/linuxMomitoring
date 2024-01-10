#!/bin/bash

read -p "Do you want to record this data?[Y/N]" answer
if [[ "$answer" == [Yy] ]]; then
  filename="$(date +"%d_%m_%y_%H_%M_%S").status"
./answer.sh  >> "$filename.status"
  echo "Data saved to file: $filename"
    exit 1
    else
 echo "The information wasn't saved."
exit 1
fi