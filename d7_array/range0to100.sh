#!/bin/bash -x

for i in $(seq 1 100)
do
	if [ $(($i%11)) -eq 0 ]
	then
			echo "Digits that are repeated twice : " ${i[@]}
	fi
done

