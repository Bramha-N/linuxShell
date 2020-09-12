#!/bin/bash -x

Heads=0
Tails=0
#trials=0
while :
do
        Flip_Coin=$(($RANDOM%2))
        if [[ $Flip_Coin -eq o ]]
        then
                echo "Head"
               ((Heads++))
                if [[ $Heads -eq 21 ]];
                then
                        break
                fi
        else
                echo "Tails"
                ((Tails++))
                if [[ $Tails -eq 21 ]];
                then
                        break
                fi
        fi
#        trials=$(($Heads+$Tails))

done
        echo "We got Head $Heads time"
        echo "We got Tail $Tails time"

        if [[ $Heads -lt $Tails ]]
        then
					t=$(($Tails-$Heads))
                echo "Tail is winner by difference of $t"
        else
					h=$(($Heads-$Tails))
                echo "Head is winner by difference of $h"
        fi
