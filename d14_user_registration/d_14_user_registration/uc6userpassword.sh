#!/bin/bash -x

#Rule2
#– Should have at least 1 Upper Case - NOTE – All rules must be passed

pat1="^[[:upper:]]{1}[a-zA-Z]{2,}$"
pat2="[a-zA-Z0-9]+\.[a-zA-Z0-9]+@*@bl.(co|in)$"
pat3="^[0-9]{2}[[:space:]][0-9]{10}$"
pat4="[a-zA-Z]{6,}[[:upper:]]{1,}"
read -p "Enter first name = " name

if [[ $name =~ $pat1 ]]
then
	read -p "Enter last name = " last
	if [[ $last =~ $pat1 ]]
	then
		read -p "Enter email address in this format (ex. bramha.naskari@bl.co) = " email	
		if [[ $email =~ $pat2 ]]
		then
			echo Pattern matched;
		else
			echo Enter valid details;
			exit;
		fi		
	else
		echo Enter Valid details;
	fi					
else
	echo Enter Valid details;
	exit;
fi	

read -p "Enter num in this format (E.g.91 9919819801) = " num
if [[ $num =~ $pat3 ]]
then
	read -p "Enter the password = " pwd
	if [[ $pwd =~ $pat4 ]]
	then
		echo Registration successful 
	else
		echo password should have min 8 char. and atleast one upper case.
	fi
else
	echo $num is not valid
fi