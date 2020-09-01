#!/bin/bash -x

echo "Enter the number :"
read num

for (( i=1; i<=num; i++ ))
do
	fact=`expr $fact\*$i`
done

echo "Factorial of a number is" $fact
