#!/bin/bash -x

RANDOM=$$

for n in `seq 5`
do
	#echo $(($RANDOM%100+10))
	echo ${RANDOM:0:2}
done | awk '{sum+= $1}END {print sum}'



#echo -e "How many random numbers you want to generate"
#read max
#for((n=1; n<=$6; n++))
#do  echo -e $(($RANDOM%100))
#done

#for (( n =1; n<=max; n++ ))
#do
#	echo -e $(($RANDOM%100+10))

	#awk '{sum+= $(($RANDOM%100))} END {print sum}' DOUBT

#done | awk '{sum+= $1} END {print sum/NR}'
