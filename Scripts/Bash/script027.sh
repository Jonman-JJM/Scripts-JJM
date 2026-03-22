#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman.
#Menu de busqueda.
clear

echo " "
echo "* Opc 1: Buscar usuario."
echo " "
echo "* Opc 2: Buscar grupo."
echo " "
echo "* Opc 3: Buscar directorio personal."
echo " "

read -p "Dime una opción: " Opc

if test $Opc -eq 1
then
	read -p "Dime el nombre del usuario para buscar: " nomusu

	if cat /etc/passwd|cut -f1 -d:|grep -w ^$nomusu &>/dev/null

	then
		echo "El usuario $nomusu se a encontrado."
	else
		echo "El usuario $nomusu no se a encontrado."
		exit 1
	fi

elif test $Opc -eq 2
then
	read -p "Dime el nombre del grupo: " nomgrp

	if cat /etc/group|cut -f1 -d:|grep -w ^$nomgrp &>/dev/null

	then
		echo "El grupo $nomgrp se a encontrado."
	else
		echo "El grupo $nomgrp no se a encontrado."
		exit 1
	fi

elif test $Opc -eq 3
then
	read -p "Dime el nombre del usuario para buscar su directorio personal: " nomdp

	if cat /etc/passwd|grep $nomdp &>/dev/null

	then
		cat /etc/passwd|grep -w ^$nomdp|cut -f6 -d:

	else
		echo "El directorio personal de $nomdp no se a encontrado."
		exit 1
	fi

else
	echo "No se seleccionado ninguna de las opcciones."
	exit 1
fi

exit 0
