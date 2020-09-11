#!/bin/bash -x

touch abc.log.1 def.log.1 ghi.log.1 jkl.log.1 mno.log.1 
for files in `ls *.log.1`
	do
		folderName=`echo $files | awk -F. '{print $1}'`
		echo $folderName
		mv $files  $folderName- `date +%d%m%y`.log.1
	done
