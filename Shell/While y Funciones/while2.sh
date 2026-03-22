#!/bin/bash
clear

seguir=0

while test $seguir -eq 0
do
	clear
	echo "1. Crear usuario. "
	echo "2. Salir."
	read -p "Opinion[1-]: " opc
	if test $opc -eq 1
	then
		read -p "Usuario a crear: " usu
		if useradd -m $usu &>/dev/null
		then
			echo "OK"
		else
			echo "ERROR"
		fi
	eli

