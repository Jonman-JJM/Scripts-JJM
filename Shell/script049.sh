#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman Ariel.
#PING a ordenadores.

clear

read -p "Dime la IP que deseas ." nip

if ping -c 1 $nip &>/dev/null
then
	echo "La maquina esta encendida."
else
	echo "La maquina no esta encendidad."
fi

exit 0
