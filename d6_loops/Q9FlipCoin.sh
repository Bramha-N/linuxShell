#!/bin/bash -x

# Extend the Flip Coin problem till either Heads or Tails wins 11 times.

Heads=0
Tails=0
trials=0
while [[ $trials -lt 11 ]]
do
	Flip_Coin=$(($RANDOM%2))
	if [[ $Flip_Coin -eq o ]]
	then
		echo "Head"
		((Heads++))
	else
		echo "Tail"
		((Tails++))
	fi
	trials=$(($Heads+$Tails))
done
	echo "We got Head $Heads time"
	echo "We got Tail $Tails time"

	if [[ $Heads -lt $Tails ]]
	then
		echo "Tail is winner"
	else
		echo "Head is winner"
	fi
