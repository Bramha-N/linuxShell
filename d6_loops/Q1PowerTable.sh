#!/bin/bash -x

#Write a program that takes a command-line argument n and prints a table
#of the powers of 2 that are less than or equal to 2^n.
#Solution =>

read -p "Enter the number : " n #x
for (( i=1; i<=n; i++ ))
do
	echo "2*$i=" $((2*$i))
	#echo "$x*$i=" $(($x*$i))
done
