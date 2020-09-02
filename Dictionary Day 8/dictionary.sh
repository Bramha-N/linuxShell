#!/bin/bash -x

#Roll a die and find the number between 1 to 6

#variables
key1=1
key2=2
key3=3
key4=4
key5=5
key6=6
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
declare -A diceNumber
#while loop
while((1))
do
	dice=$((RANDOM%6+1))
	# case statement
	case $dice in
	1)
		((count1++))
		diceNumber[$key1]=$count1
		;;
	2)
		((count2++))
		diceNumber[$key2]=$count2
		;;
	3)
		((count3++))
		diceNumber[$key3]=$count3
		;;
	4)
		((count4++))
		diceNumber[$key4]=$count4
		;;
  	5)
      		((count5++))
      		diceNumber[$key5]=$count5
      		;;
   	6)
      		((count6++))
      		diceNumber[$key6]=$count6
      		;;
	esac
	if(( $count1==10 || $count2==10 || $count3==10 || $count4==10 || $count5==10 || $count6==10 ))
	then
		break
	fi
done
echo " dictionary is :" ${diceNumber[@]}
for((index=1;index<=6;index++))
do
	echo "[ $index : ${diceNumber[$index]} ] ,"
done

maximum=${diceNumber[1]}
minimum=${diceNumber[1]}
for((index=1;index<=6;index++))
do
	if(( "${diceNumber[$index]}" > $maximum ))
	then
		maximum="${diceNumber[$index]}"
	fi
	if(( "${diceNumber[$index]}" < $minimum ))
	then
		minimum="${diceNumber[$index]}"
	fi
done
printf "Maximum is $maximum \n"
printf "Minimum is $minimum \n"
