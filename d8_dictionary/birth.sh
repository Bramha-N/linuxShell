#!/bin/bash -x

month=(january february march april may june july august september october november december)
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
count7=0
count8=0
count9=0
count10=0
count11=0
count12=0

#declaration of dictionary
declare -A birthdayDictionary
for((person=1;person<=50;person++))
do
   birthMonth=$((RANDOM%12+1))
   #case statement
   case $birthMonth in
   1)
		((count1++))
      birthdayDictionary[${month[0]}]=$count1
   ;;
   2)
      ((count2++))
      birthdayDictionary[${month[1]}]=$count2
   ;;
   3)
      ((count3++))
      birthdayDictionary[${month[2]}]=$count3
   ;;
   4)
      ((count4++))
      birthdayDictionary[${month[3]}]=$count4
   ;;
   5)
      ((count5++))
      birthdayDictionary[${month[4]}]=$count5
   ;;
   6)
      ((count6++))
      birthdayDictionary[${month[5]}]=$count6
   ;;
   7)
      ((count7++))
      birthdayDictionary[${month[6]}]=$count7
   ;;
   8)
      ((count8++))
      birthdayDictionary[${month[7]}]=$count8
   ;;
   9)
      ((count9++))
      birthdayDictionary[${month[8]}]=$count9
   ;;
   10)
      ((count10++))
      birthdayDictionary[${month[9]}]=$count10
   ;;
   11)
      ((count11++))
      birthdayDictionary[${month[10]}]=$count11
   ;;
   12)
      ((count12++))
      birthdayDictionary[${month[11]}]=$count12
   esac
done
printf "Birth dictionary is :"'\n'

for((index=0;index<=11;index++))
do
   printf "[ ${month[$index]} : ${birthdayDictionary[${month[$index]}]} ],"'\n'
done
