#!/bin/bash -x

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
                echo "Tails"
                ((Tails++))
        fi
	trials=$(($Heads+$Tails))
done
        echo "Head wins $Heads time"
        echo "Tail wins $Tails time"

if [[ $Heads -lt $Tails ]]
then
    echo "Tail is winner"
else
    echo "Head is winner"
fi


