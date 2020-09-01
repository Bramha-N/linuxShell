#!/bin/bash -x

RANDOM=$$

for n in `seq 5`
do
	#echo $(($RANDOM%100+10))
	echo ${RANDOM:0:2}
done | awk '{sum+= $1}END {print sum}'
