#!/bin/bash -x

#As a User need to enter a valid Last Name
#- Last name starts with Cap and has

pat1="^[[:upper:]]{1}[a-zA-Z]{2,}$"
read -p "Enter first name = " name

if [[ $name =~ $pat1 ]]
then
	read -p "Enter last name = " last
	if [[ $last =~ $pat1 ]]
	then
			echo Pattern matched;
	else
		echo Enter Valid details;
	fi					
else
	echo Enter Valid details;
	exit;
fi	