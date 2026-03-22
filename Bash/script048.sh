#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman Ariel.
#

clear

if test $# -ne 1
then
	echo "Error al ejecutar el script."
	echo "Ejecuta $o nombreFichero."
	exit 1
else
	if test -f $1
	then
		echo "El fichero existe.Continuamos con la ejecución del script.."
	else
		echo "$1 no es un fichero regular o no existe."
		exit 2
	fi
fi

numlin=`cat $1|wc -l`

numa=`cat $1|tr -dc "a"|wc c`

tam=`ls -l $1|tr -s " "|cut -f5 -d" "`

echo "

exit 0
