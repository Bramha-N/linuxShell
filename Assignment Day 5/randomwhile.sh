#!/bin/bash -x

read -p "Enter a Number: " n
i=1
y=0
while [ $i -le $n ]
do
        x=$(echo $((RANDOM%100)))
        echo "The random no. $i is - $x"
        y=$(( $x + $y))
        i=$(( $i + 1 ))

done 

echo $y
