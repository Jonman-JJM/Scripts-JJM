#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman Ariel.
#

clear
if test -f $1
then
	echo "$1 es un fichero"
else
	echo "$1 ni es un fichero"
fi

if test -d $1
then
	echo "$1 es un directorio"
else
	echo "$1 no es un directorio"
fi

exit 0
