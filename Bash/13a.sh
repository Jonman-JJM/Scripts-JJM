#!/bin/bash
clear
read -p "Escribe un directorio: " dir
conteo=0

datos=`ls -l $dir|grep ^-| tr -s " "|cut -f9 -d" "`

for i in $datos
do 
	let conteo=$conteo+1

done

echo "Hay $conteo"
