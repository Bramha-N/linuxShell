#!/bin/bash -x

read -p "How many random numbers you want to generate ? : " max
#for((n=1; n<=$6; n++))
#do  echo -e $(($RANDOM%100))
#done

for (( n =1; n<=max; n++ ))
do
	y=$(($RANDOM%90+10))
	echo $y
	#awk '{sum+= $y} END {print sum}' #DOUBT

done | awk '{sum+= $y} {print sum} END {print sum/NR}'
