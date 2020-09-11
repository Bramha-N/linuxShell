#!/bin/bash -x

start=1
end=100
echo "think the number in your mind between 1 to 100 :"
flag=0
while [ $flag = 0 ]
do
        mid=$(( $(( $start+$end)) / 2 ))
        echo "1.Number is :"$mid
        echo "2.Is your number is less than this number "
        echo "3.is your number is greater than this number"
        echo "check your number"
        read -p "enter your choice" choice
        case $choice  in
        1)
        echo "your number is $mid and it is magic number"
        break
        ;;
        2)
        end=$mid
        ;;
        3)
        start=$mid
        ;;
        *)
        echo "invaild choice"
        ;;
        esac
done
