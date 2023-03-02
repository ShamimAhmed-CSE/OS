#! /bin/bash

read -p "Enter n number " n
sum_even=0
sum_odd=0
i=0

for (( i=1; i<=n; i++ ))
do
  if (( $i % 2 == 0 ))
  then 
   sum_even=$(( $sum_even + $i ))
  else
   sum_odd=$(( $sum_odd + $i ))
  fi
done
echo sum of even $sum_even
echo sum of odd $sum_odd

