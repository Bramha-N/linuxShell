#!/bin/bash -x

Heads=0
Tails=0
read -p "trials : " trials
echo "This will compare value of Head And Tail and will print final output :"
while [[ $trials > 0 ]]
do
        Flip_Coin=$(($RANDOM%2))
        if [[ $Flip_Coin -eq o ]]
        then
                ((Heads++))
        else
                ((Tails++))
        fi
        ((trials--))
done
		echo "Before loop"
    	echo "Head: $Heads" 
    	echo "Tail: $Tails"
    	loop=$(($Heads == $Tails))
    	echo "$loop"

while [[ $loop == 1 ]]
do
        Flip_Coin=$(($RANDOM%2))
        if [[ $Flip_Coin -eq o ]]
        then
        	        ((Heads++))
        else
        	        ((Tails++))
        fi

		  if [[ $(($Heads - $Tails)) == 2 || $(( $Tails - $Heads )) == 2 ]]
        then
            break
        fi
done



if [[ $(($Heads > $Tails)) == 1 ]]
then
        echo "Head wins "
        echo "Head: $Heads"
        echo "Tail: $Tails"
else
        echo "Tail wins"
        echo "Tail: $Tails"
        echo "Head: $Heads"
fi

