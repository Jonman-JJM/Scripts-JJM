#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman
#Tercera forma de uso del if

clear

read -p "Dime tu edad: " edad

if test $edad -eq 18
then
	echo "Eres mayor de edad!!"

elif test $edad -eq 20
then
	echo "A por el coche"

elif test $edad -eq 80
then
	echo "Jubilación"

else
	echo "La edad no coincide"

fi

exit 0
