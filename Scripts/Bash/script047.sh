#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman Ariel.
#CSV

clear
echo "Comprobando la existencia del registro."
fecha=`date`
echo "$fecha" >> scrip047.log
read -p "Indique el nombre del archivo en formato CSV: " datos

if ! test  -f $datos
then
	echo "El fichero regular no existe o no es un fichero."
	exit 1

fi
usuarios=`cat $datos|tr ";" ":"`

for i in $usuarios
do
	echo "**********************"
	usu=`echo "$i"|cut -f1 -d:`
	dir=`echo "$i"|cut -f2 -d:`
	gp=`echo "$i"|cut -f3 -d:`
	gs=`echo "$i"|cut -f4 -d:`

	echo "Comprobando grupos "

	if ! cat /etc/group|grep -w ^$gp &>/dev/null
	then
		echo "El grupo existe. Lo creamos."
		groupadd $gp
	else
		echo "El grupo existe, Continuamos"

	fi
	echo "comprobando $gs"
	if cat /etc/group|grep -w ^$gs
	then
		echo "El grupo existe. COntinuamos."
	else
		echo "El grupo no existe . Lo creamos"
		groupadd $gs
	fi

	if useradd -m $usu -d $dir -g $gp -G $gs
	then
		echo "El usuario $usu se acreado correctamente."
	else
		echo "El usuario $usu no se a creado."
	fi

done

exit 0
