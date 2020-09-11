#!/bin/bash -x

read -p "How many random numbers you wants to print ? : " max;

for (( n=1; n<=max; n++ ));
do
	y=$(($RANDOM%900+100))
	arr+=($y)
done

echo "Random numbers are : " ${arr[@]}

#echo '%s\n' "${arr[@]}" | tr ' ' '\n' | sort -n

echo '%s\n' "${arr[@]}" | tr ' ' '\n' | sort -n | tail -2 | head -1

echo '%s\n' "${arr[@]}" | tr ' ' '\n' | sort -n | head -3 | tail -1
