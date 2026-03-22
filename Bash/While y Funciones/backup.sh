#!/bin/bash
clear

datos='cat ./datos2.csv|tail -n+2'

for i in $datos
do
	fichero='echo $i|cut -f1 -d","'
	elec='echo $i|cut -f2 -d","'

#	if test $elec -eq "si"
#	then
	echo "$fichero

done
exit 0

