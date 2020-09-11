#!/bin/bash -x

mar=20032020
june=20062020
today=$(date +'%d/%m/%Y')
if [ $today -gt $mar ] && [ $today -lt $june ]
then
echo TRUE
else
echo FALSE
fi
echo $today
