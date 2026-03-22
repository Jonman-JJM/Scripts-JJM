#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman.
#Menu que saque por pantallla cinco opciones
clear
echo " "
echo "* Opc U: Crea un usuario."
echo " "
echo "* Opc G: Crea un grupo."
echo " "
echo "* Opc DU: Elimina un usuario sin su carpeta personal."
echo " "
echo "* Opc DUU: Elimina un usuario junto a su carpeta personal."
echo " "
echo "* Opc DG: Elimina un grupo."
echo " "

read -p "Escoje una opcion: " Opc


if test $Opc == U
then
	read -p "Nombre del usuario: " nomusu

	if useradd -m $nomusu &>

	then
		echo "El usuario se a creado correctamente."
	else
		echo "El usuario no se a creado."
	fi

elif test $Opc == G
then
	read -p "Nombre del grupo: " nomgrp

	if groupadd $nomgrp

	then
		echo "El grupo se a borrado correctamente."
	else
		echo "El grupo no se a creado."
	fi

elif test $Opc == DU
then
	read -p "Nombre del ususario para eliminar: " delusu

	deluser $delusu

elif test $Opc == DUU
then
	read -p "Nombre del usuario para eliminar: " delusucp

	if deluser -r $delusucp

	then
		echo "El usuario y su carpeta se a eliminado."
elif test $Opc == DG
then
	read -p "Nombre del grupo para eliminar: " delgrp

	delgroup $delgrp

else
	echo "Ninguna de las opciones"

fi

exit 0
