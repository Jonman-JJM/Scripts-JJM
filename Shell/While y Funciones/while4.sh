#!/bin/bash
clear
salir=0
usuers='cat /etc/passwd|cut -f1 -d":"'

while test $salir -eq 0
do
	clear
	fecha='date'
	echo "1. Crear usuario."
	echo "2. Borrar usuario."
	echo "3. Comprobar si existe usuario."
	echo "4. Asignar contraseña a usuario."
	echo "5. Salir"

	read -p "Indica una opción[1-5]: " opc
	
	if test $opc -eq 1
	then
		read -p "Introduce el nombre del usuario: " usu
		if useradd -m $usu &>/del/null
		then
			echo "El usuario $usu ha sido creado correctamente" >> f.log
		else
			echo "El usuario $usu no ha sido creado correctamente, comprueba con la opción 3 si ya existe el usuario $usu"

	elif test $opc -eq 2
	then	
		read -p "Introduce el nombre del usuario que quieres borrar: " dusu
	
	elif test $opc -eq 3
	then
	


	elif test $opc -eq 4
	then
	
	elif test $opc -eq 5
	then

	else
		echo " "
	fi
done

exit 0

