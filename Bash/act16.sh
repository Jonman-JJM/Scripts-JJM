#!/bin/bash
clear

mia=0
datos=`cat num.txt`

for i in $datos
do
#	echo "DATO => $i"
	if test $i -gt $mia
	then
		mia=$i
	fi
done
echo "en numero mayor es $mia"

exit 0
