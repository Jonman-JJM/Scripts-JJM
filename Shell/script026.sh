#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman
#Copias de seguridad; pidiendo ruta, nombre de archivo, indicar si se hace backup bien (exit 0) o mal (exit 1).

clear

echo " "
echo "Copia de seguridad."
echo " "

read -p "Dime la ruta que quieras hacer copia de seguridad: " ruta
read -p "Dime como quieres llamar la copia de seguridad (sin /): " nomarch

if tar -cvf /home/ubuntu/Escritorio/Seguridad/$nomarch.gz $ruta
then
	echo "La copia se creado correctamente."
else
	echo "La copia no se a creado."
	exit 1
fi

exit 0
