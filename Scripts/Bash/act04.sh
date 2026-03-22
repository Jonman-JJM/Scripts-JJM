#!/bin/bash
clear

echo "Dime tu nombre:"
read nom

if test $nom == "Julian"
then
	echo "Bienbenido Julian"

elif test $nom == "Julia"
then
	echo "Bienvenida Julia"

elif test $nom == "Julen"
then
	echo "Bienvenido Julen"

else
	echo "Vuelve mas tarde"
fi

exit 0
