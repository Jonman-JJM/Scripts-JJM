#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman
#Condidcion if

clear

read -p "Dime tu edad: " edad

if test $edad -ge 18

then
	echo "Enhorabuena"
else
	echo "Aun eres menor de edad"
fi
exit 0
