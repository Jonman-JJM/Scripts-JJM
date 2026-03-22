#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman Ariel.
#Script infinito por que es mayor que 1, si se añade el let o otra opción.

clear

valor=0

read -p "Indica un valor del 1 al 200: " valor #20...

while test $valor -ge 1

do
	echo "Hola ---> $valor"
	let valor=$valor-1

done
exit 0
