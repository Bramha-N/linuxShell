#!/bin/bash -x

#Write a program that takes a command-line argument n and prints the nth 
#harmonic number. Harmonic Number is of the form

read -p "Enter the number : " num
n=0
num=$(($num+1))

for i in $(seq $num)
do
  B=$(awk "BEGIN { print ((1 / $i)) }")
  echo "Harmonic Float value would be : " $B

  C=$(echo expr 1/$i)
  echo "Fraction value is " $C

  A=$(echo | awk -v y=$i -v z=$n '{print (1/y)+z}')
  n=$A
done
echo "Harmonic Addition : " $A


