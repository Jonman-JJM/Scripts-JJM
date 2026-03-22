#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman
#Tercer menú.
clear

echo "* OPC A: Comprobar usuario: "

echo "* OPC B: Comprobar grupo: "

echo "* OPC C: Buscar directorio y usus ficheros: "


read -p "Elige una opción: " Opc

if test $Opc == A
then
	echo "Opción A."

	read -p "Dime el usuario que deseas buscar: " busu

	cat /etc/passwd|grep $busu

elif test $Opc == B
then
	echo "Opción B."

	read -p "Dime el grupo que deseas buscar: " bgrp

	cat /etc/group|grep $bgrp

elif test $Opc == C
then
	echo "Opción C."

	read -p "Dime el directorio con ruta absoluta, para mostrarte los ficheros regulares: " bdirfm
	echo "El numero de ficheros encontrados son:"
	ls -l $bdirfm|grep ^-|wc -l
else
	echo "Ninguna opción seleccionada."

fi

exit 0
