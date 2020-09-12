#!/bin/bash -x

#Help user find degF or degC based on their Conversion Selection.

#!/bin/bash
echo "1.Celcius to fahrenheit :"
echo "2.Fahrenheit to Celcius :"
read -p "Enter the choice : " ch

function degF(){
read -p "enter the temp in Celcius: " degC
if [[ $degC -ge 0 && $degC -le 100 ]]
then
        x=$(($degC * 9/5))
        degF=$(($x +32))
        echo $degF
else
        echo "invaild entry"
fi
}

function degC(){
read -p "enter the temp in fahrenheit: " degF
if [[ $degF -ge 32 && $degF -le 212 ]]
then
        x=$(($degF - 32))
        degC=$(($x * 5/9))
        echo $degC
else
        echo "invaild entry"
fi
}
case $ch in
        1)
        result1=$(degF $degF)
        echo $result1
        ;;
        2)
        result2=$(degC $degC)
        echo $result2
        ;;
        *)
        echo "invaild input"
        ;;
esac
