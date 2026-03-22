#!/bin/bash
# Numero pares o impares

clear

read -p "Escribe el numero: " num

let result=$num%2

if test $result -eq 0
then
	echo "$num es par."

else

	echo "$num no es par"

fi

exit 0
