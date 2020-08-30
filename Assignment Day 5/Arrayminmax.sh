#!/bin/bash -x

read maxi;
for ((n=1; n<=maxi; n++))
do
arrayName=$(($RANDOM%900+100))

max=${arrayName[0]}
min=${arrayName[0]}
# Loop through all elements in the array

for i in "$(($RANDOM%900+100))"
do
    # Update max if applicable
    if [[ "$i" -gt "$max" ]];
	 then
        max="$i"
    fi

    # Update min if applicable
    if [[ "$i" -lt "$min" ]]; 
    then
        min="$i"
    fi
done
done
