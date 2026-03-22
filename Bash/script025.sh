#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman
#Control de errores.
clear
echo " "
echo "* Script para root y sudores."
echo " "
read -p "Dime el usuario a crear: " nomusu

if useradd -m $nomusu -d /home/empleado
then
	echo " Usuario $nomusu creado correctamente."
else
	echo " El ususuario $nomusu no se a creado."
	exit 1 
fi

exit 0
