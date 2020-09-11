#!/bin/bash -x

read -p "How many random numbers you wants to print ? : " max;

for (( n=1; n<=max; n++ ));
do
	y=$(($RANDOM%900+100))
	arr+=($y)
done

echo "Random numbers are : " ${arr[@]}

for i in ${arr[@]};
do
    (( $i > max || max == 0)) && max=$i 
    (( $i < min || min == 0)) && min=$i

done
echo "min=$min"
echo "max=$max"
echo ${arr[@]}

arr=(${arr[@]/$max})
arr=(${arr[@]/$min})

echo ${arr[@]}
for i in ${arr[@]};
do
    (( $i > NewMax || NewMax == 0)) && NewMax=$i
    (( $i < NewMin || NewMin == 0)) && NewMin=$i

done
echo "Second Smallest value is=$NewMin
Second Largest value is=$NewMax"
