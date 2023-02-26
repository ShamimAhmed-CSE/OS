#! /bin/bash

read -p "Enter a value: " a


read -p "Enter a value: " b

read -p "Enter a value: " c


d=$((b*b-4*a*c))

if ((d>=0)); 
then
    srt=$(echo "sqrt ($d)" | bc )
    x1=$(( (-b+srt)/(2*a) ))
    x2=$(( (-b-srt)/(2*a) ))
    echo "Root1 = ""$x1"
    echo "Root2 = ""$x2"
else
    echo "Root is not a real number"
fi
