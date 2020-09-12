#!/bin/bash -x

echo "generating10rand3digitnum"

secSmallestElem=0
secLargestElem=0
smallest=1000
largest=0
	for ((x=0; x<10; x++))
		do

			randnum[$x]=$((RANDOM%10+100))

		done

	n=`echo "${randnum[@]}" | tr ' ' '\n' #| sort -n`
	echo $n

#echo "Random numbers : " ${randnum[@]}
#echo '%s\n' "${randnum[@]}" | tr ' ' '\n' | sort -n | tail -2 | head -1
#echo '%s\n' "${randnum[@]}" | tr ' ' '\n' | sort -n | head -3 | tail -1

	for i in $n
		do
		if [ $i -gt $largest ]
		then
		    secLargestElem=$largest
		    largest=$i
		#elif [ $i -gt $secLargestElem ]
		elif [[ $i -gt $secLargestElem && $i -ne $largest ]]
		then
		    secLargestElem=$i
		fi
		if [ $i -lt $smallest ]
		then
		secSmallestElem=$smallest
		smallest=$i
		#elif [ $i -lt $secSmallestElem ]
               elif [[ $i -lt $secSmallestElem && $i -ne $smallest  ]]
				then
		secSmallestElem=$i
	       fi
	       done
	echo "2ndlarge" $secLargestElem
	echo "2nd small" $secSmallestElem
