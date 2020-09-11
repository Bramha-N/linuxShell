#!/bin/bash -x

#Takes a input and determines if the number is a prime.

echo "Enter the number"
read a
i=2
z=0
while [ $i -lt $a ]
do
s=`expr $a % $i`
if [ $s -eq $z ]
then
echo "Not Prime"
exit
else
i=`expr $i + 1`
fi
done
echo "Prime number"
