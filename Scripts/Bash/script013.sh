#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman
#Funcion if (ejemplo notas)

clear

read -p "Dime la nota que has sacado: " nota

if test $nota -lt 5

then
	echo "¡Debes estudiar más!"

else
	if test $nota -gt 6
	then
		echo "¡¡Enhorabuena!!"
	else
		echo "Aprobado!!, pero debes apretar!"
	fi
fi
exit 0
