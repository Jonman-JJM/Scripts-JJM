#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman Ariel.
#./sc.sh gomez

clear

if test $# -ne 1
then
	echo "Usted no ejecuto correctamente el usuario."
	echo "Ejecute $0 nombreUsuario."
	exit 1
fi

var=10

while test $var -eq 10
do
	if who|grep -w ^$1 &>/dev/null
	then
		echo "El usuario $1 esta conectado."
		var=1 #Alponer un valor diferente a 10 el primero var=10 para y se ejecuta ese.
	else
		echo "El usuario $1 no esta conectado."
	fi
	sleep 1 #Hace que el script se pare un segundo.
done

exit 0
