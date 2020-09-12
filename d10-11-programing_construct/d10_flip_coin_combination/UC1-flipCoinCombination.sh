#!/bin/bash -x

Heads=0
Tails=0
#while [[ $Heads -lt 11 && $Tails -lt 11 ]]
#do
        Flip_Coin=$(($RANDOM%2))
        if [[ $Flip_Coin -eq 0 ]]
        then
                echo "Head"
#                ((Heads++))
        else
                echo "Tails"
#                ((Tails++))
        fi
#done
#        echo "We got Head $Heads time"
#        echo "We got Tail $Tails time"

#        if [[ $Heads -eq 11 ]]
#        then
#                echo "Head is winner"
#        else
#                echo "Tail is winner"
#
