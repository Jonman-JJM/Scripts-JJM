#!/bin/bash
# Script que sume todos numeros que hay en un fichero .txt (un número por cada lína)
clear

datos=`cat numeros.txt`
total=0

for valor in $datos
do
	let total=$total+$valor

done
echo "el resultado es $total"

exit 0
