#!/bin/bash -x
    read maxi;
    for ((n=1; n<=maxi; n++))
    do
    arrayName=$(($RANDOM%900+100))
    echo "${arrayName[@]}"
        for i in ${arrayName[@]}
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
