#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman Ariel.
#

clear

if ! test $# -ge 2 #o de la siguiente manera --> if test $# -lt 2
then
	echo "Error"
	echo "ejecutable $o c|b user1... usern"
	exit 1

fi

opc=$1 # me gtrabo la opcion C o B
for i in $*
do
	if test $# -lt 2
	then
		echo "No hay mas usuarios para gestionar"
	elif
		if test $opc == c
		then
			if useradd $2 -m &>/dev/null
			then
				echo "Usuario $2 creado"
			else
				echo "Error al crear el usuario $2"
			fi

		elif test $opc == b
		then
			if userdel -r $2 &>/dev/null
			then
				echo "Usuario $2 borrado."
			else
				echo "Error al crear el usuario $2"
			fi
		fi
	else
		echo "Error en argumento 1o"
		exit 1

	fi
	shift
done

exit 0
