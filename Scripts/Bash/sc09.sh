#!/bin/bash
#

clear

read -p "Dime el nombre de un elemento: " elem

if test -f $elem
then
	echo "$elem Es un fichero."


elif test -d $elem
then
	echo "$elem Es un directorio."

else
	echo "$elem No es ni un directorio ni un fichero"
fi

exit 0
