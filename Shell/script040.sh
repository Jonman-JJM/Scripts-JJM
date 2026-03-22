#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman Ariel.
#

clear

if who|grep -w ^$*
then
	echo "El usuario esta conectado."
else
	echo "El usuario no esta conectado."
fi
exit 0
