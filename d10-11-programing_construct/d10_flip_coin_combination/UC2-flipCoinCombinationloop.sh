#!/bin/bash -x

Heads=0
Tails=0

trials=0
declare -A dictionary

while [[ $trials -lt 5 ]]
do
        Flip_Coin=$(($RANDOM%2))
        if [[ $Flip_Coin -eq o ]]
        then
                echo "Head"
                ((Heads++))

		  dictionary[Head]=$Heads

        else
                echo "Tail"
                ((Tails++))

		  dictionary[Tail]=$Tails
        fi
	trials=$(($Heads+$Tails))
done
echo "Head = "${dictionary[Head]}
echo "Tail = "${dictionary[Tail]}

pheads=$(echo | awk -v a=$Heads -v b=$trials  'BEGIN {print a/b*100}')
echo "Head=${pheads}%"
ptails=$(echo | awk -v c=$Tails -v d=$trials  'BEGIN {print c/d*100}')
echo "Tail=${ptails}%"
