#!/bin/bash -x

echo -e "How many random numbers you want to generate"
read max
#for((n=1; n<=$6; n++))
#do  echo -e $(($RANDOM%100))
#done

for (( n =1; n<=max; n++ ))
do
	y = $(echo -e $(($RANDOM%100+10)))
	echo $y
	#awk '{sum+= $(($RANDOM%100))} END {print sum}' DOUBT

done | awk '{sum+= $1} END {print sum/NR}'
