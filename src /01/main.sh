#!/bin/bash

# Check the number of arguments
if [[ "$#" -ne 1 ]]; then
    echo "Error: Incorrect number of arguments. Please provide exactly one argument."
    exit 1
fi
answer=$1
# Check if the input argument is a number
if [[ $answer =~ ^[0-9]+$ ]]; then
    echo "Error: The input value is a number. Please provide a non-numeric input."
    exit 1
else
# Display the input argument if it is not a number
echo "Input value: $answer"
fi