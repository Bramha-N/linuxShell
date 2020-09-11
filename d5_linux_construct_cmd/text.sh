#!/bin/bash -x

touch abc.txt def.txt gih.txt jkl.txt

for file in `ls *.txt`;
do
	folderName=`echo $file | awk -F. '{print $1}'`
	mkdir $folderName;
	mv $file $folderName
done 


