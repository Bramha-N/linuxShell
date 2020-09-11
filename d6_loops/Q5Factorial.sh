#!/bin/bash -x

#Computes a factorial of a number taken as input.

#!/bin/bash
read -p "enter the no " n
fact=1
for (( i=1; i<=$n; i++))
do
        fact=$[ $fact*$i ]
done
echo "Factorial is :"$fact
