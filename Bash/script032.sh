#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman.
# 1 Mostrar los ficheros regulares; formato. El fichero nom ocupa tam y se creo mes 2 mostrar las directorios.(nombre y permisos) 3 Mostrar enlaces simbolicos nombre y a donde apunta.
clear

echo " "
echo "* Opc 1: Mostrar los ficheros regulares."
echo " "
echo "* Opc 2: Mostrar los directorios."
echo " "
echo "* Opc 3: Mostrar los enlaces simbolicos."
echo " "

read -p "Elige una opción: " Opc

if test $Opc -eq 1
then
	for i in `ls -l|grep ^-|tr -s " "|tr " " "#"|cut -f5,6,9 -d#`
	do
		fnom=`echo "$i"|cut -f3 -d#`
		ftam=`echo "$i"|cut -f1 -d#`
		fmes=`echo "$i"|cut -f2 -d#`

		echo "El fichero regular $fnom ocupa $ftam y se creó $fmes."
	done

elif test $Opc -eq 2
then
	for i in `ls -l|grep ^d|tr -s " "|tr " " "#"|cut -f1,9 -d#`
	do
		dnom=`echo "$i"|cut -f2 -d#`
		dper=`echo "$i"|cut -f1 -d#`

		echo "El directorio $dnom tiene como permisos $dper."
	done

elif test $Opc -eq 3
then
	for i in `ls -l|grep ^l|tr -s " "|tr " " "#"|cut -f9,11 -d#`
	do
		lnom=`echo "$i"|cut -f1 -d#`
		lpnt=`echo "$i"|cut -f2 -d#`

		echo "El enlace $lnom apunta hacia $lpnt."
	done
else
	echo "No se a seleccionado ninguna de las opciones."
	exit 1
fi

exit 0
