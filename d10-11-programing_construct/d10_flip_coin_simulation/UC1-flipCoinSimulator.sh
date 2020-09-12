#!/bin/bash -x

Heads=0
Tails=0
        Flip_Coin=$(($RANDOM%2))
        if [[ $Flip_Coin -eq 0 ]]
        then
                echo "Head"
                ((Heads++))
        else
                echo "Tails"
                ((Tails++))
        fi


