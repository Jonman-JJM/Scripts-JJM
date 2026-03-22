#!/bin/bash
# Coprobación de -z -e -s

clear

read -p "Dime tu nombre  " elem

if test -z $elem
then
	echo "No hasintrudicido tu nombre"


else
	echo " hola $elem"
fi

exit 0
