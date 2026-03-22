#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman Ariel.
#

clear
read -p "Indique el nombre del fichero con los datos: " fitx
datos=`cat hosts.csv|tr ";" ":"`
if test -f hosts.csv


for in $datos
for i in $datos
do
	nompc=`echo "$i"|cut -f1 -d:`
	planta=`echo "$1"|cut -f2 -d:`
	nip=`echo "$1"|cut -f3 -d:`

	if ping -c 1 $nip &>/dev/null
	then
		echo "La maquina $nompc que es se encuentran en la planta
	else
		echo "la  maquina apagda
	fi
done
exit 0
