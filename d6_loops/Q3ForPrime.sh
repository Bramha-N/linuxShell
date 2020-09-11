#!/bin/bash
read -p "Enter the number :" n
y=0
for (( i=2; i<=$(($n/2)); i++ ))
do
	if [ $(( $n % $i )) == 0 ]
   then
			((y++))
   fi
done

if [ $y == 0 ]
then
    echo "$n is a prime number"
else
    echo "$n is not a prime number"
fi
