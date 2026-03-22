#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman.
#llevar acabo un script de linux en el cual se indique al ejecutar un directorio con ruta absoluta y debe mostrar por pantalla-.
#el nombre de los ficheros regulares.
#el tamaño de esos ficheros regulares
#los permissos se esos ficheros pero solo los permisos del usuario propietario
#UID del usuario propietario.
#el nombre del usuario propietario.

clear

echo " "
read -p "Dime la ruta absoluta del directorio para saber sus datos: " rtabs
echo " "
for i in `ls -l $rtabs |grep ^-|tr -s " "|tr " " "#"|cut -f1,3,5,9 -d#`
do
	fnom=`echo "$i"|cut -f4 -d#`
	ftam=`echo "$i"|cut -f3 -d#`
	fper=`echo "$i"|cut -c 2-4`
	fusp=`echo "$i"|cut -f2 -d#`
	fuid=`cat /etc/passwd|grep -w ^"$fusp"|cut -f3 -d:`
	echo "El fichero regular $fnom ocupa $ftam con los permisos del usuario propietario son $fper, su UID es $fuid y su usuario propietario es $fusp."
done

exit 0
