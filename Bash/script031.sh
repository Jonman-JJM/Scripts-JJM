#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman.
#Que salgfa por panatalla el fichero nombre ocupa tamaño.
clear

for i in `ls -l|tr -s " "|tr " " "#"|cut -f5,9 -d#`
do
	
	echo "El fichero ocupa ."


done
exit 0
