#!/bin/bash
clear
salir=0
users='cat usuarios.csv| tail-n+2'
while test $salir -eq 0
do
	sleep 2
	fecha='date'
	clear
	echo "1. Crear usuarios desde csv."
	echo "2. Borrar usuarios desde csv."
	echo "3. Salir."
	
	read -p "Escoge una opción [1-3]: " opc

	if test $opc -eq 1
	then
		for i in $users
		do
			#if cat /etc/passwd|grep -w ^$users &>/dev/null
			#then
			#	echo "EL usuario $i ya existe. No se puede crear, comunicalo con el Administrador."
			#	echo "$fecha => El usuario $i ya existe. No se puede crear" >> l.log
			#else
			#	if ! cat /etc/passwd|grep -w ^$users
			echo "$i"				
		done
	elif test $opc -eq 2
	then
		echo "opcion 2"
	elif test $opc -eq 3
	then
		salir=10
	else
		echo "No has elegido ninguna opción."
	fi
done
exit 0

