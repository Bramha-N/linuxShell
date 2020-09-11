#!/bin/bash -x
read -p "enter the First number :" a
read -p "enter the Second number :" b
read -p "enter the Third number :" c
echo $a $b $c
declare -A arithematicDict
declare -a array
x=$(($a+$b*$c))
arithematicDict["first"]=$x
y=$(($a*$b+$c))
arithematicDict["second"]=$y
z=$(($c+$a/$b))
arithematicDict["third"]=$z
p=$(($a%$b+$c))
arithematicDict["fourth"]=$p

echo " dictionary is :" ${arithematicDict[@]}
for((index=1;index<=4;index++))
do
        echo "[ $index:${arithematicDict[$index]} ] ,"
done

maximum=${arithematicDict[1]}
minimum=${arithematicDict[1]}
for((index=1;index<=4;index++))
do
        if [[ "${arithematicDict[$index]}" > $maximum ]]
        then
                maximum="${arithematicDict[$index]}"
        fi
        if [[ "${arithematicDict[$index]}" < $minimum ]]
        then
                minimum="${arithematicDict[$index]}"
        fi
done
printf "Maximum is $maximum \n"
printf "Minimum is $minimum \n"
