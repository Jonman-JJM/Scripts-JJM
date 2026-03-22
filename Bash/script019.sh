#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman
#Segundo menú.

clear

echo "* OPC A: Listar directorio indicado."

echo "* OPC B: Crear directorio y indicar su lugar."

echo "* OPC C: Copiar fichero indicando lugar."

read -p "Seleccione una opción: " Opc

if test $Opc == A
then
	echo "Opc A"
	read -p "Indique el directorio que desea listar(ruta absoluta): " lsdir

	ls -l $lsdir

elif test $Opc == B
then
	echo "Opc B"
	read -p "Nombre del directorio (colocar barra): " nomdir
	read -p "Indica donde deseas situarlo (ruta abosluta): " lgrdir

	mkdir $lgrdir$nomdir

elif test $Opc == C
then
	echo "Opc C"
	read -p "Que fichero quieres copiar (colocar barra): " cpf
	read -p "Desde donde lo quieres copiar (ruta absoluta): " dlgrfi
	read -p "A donde quieres copiar el fichero (ruta absoluta): " algrfi

	cp $dlgrfi$cpf $algrfi

else
	echo "Ninguna opción seleccionada"

fi

exit 0
