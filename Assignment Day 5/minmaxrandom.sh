#!/bin/bash -x
read maxi;
for ((n=1; n<=maxi; n++));
do

min=$(( $RANDOM%900+100 ))
max=$(( $RANDOM%900+100 ))


for i in $(($RANDOM%900+100));
do
    (( $i > max || max == 0)) && max=$i
    (( $i < min || min == 0)) && min=$i
done

echo "min=$min
max=$max"
done

