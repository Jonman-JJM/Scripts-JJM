#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman Ariel.
#

clear

if test -r $1
then
	echo "Tiene permisos de lectura."

else
	echo "No tiene permisos de lectura."

fi

exit 0

#permr=`ls -l $1|cut -c2`
#echo "$permr"
#if test "$permr" == "r"
#then
	#echo "Permiso R"
#elif test "$permr" == "-"
#then
	#echo "No tiene permisos R"
#fi

#exit 0
