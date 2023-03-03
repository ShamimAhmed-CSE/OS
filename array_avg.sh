#!/bin/bash

arr=(1 2 3 4 5)
sum=0
for i in "${arr[@]}"
do
 sum=$((sum+i))
done
echo $((sum/${#arr[@]}))

arr=(1 2 3 4 5)
sum1=0
for (( j=0; j<=${#arr[@]}; j++))
do
 if (( $j % 2 != 0))
 then
  sum1=$((sum1+j))
  fi
done
echo $sum1
