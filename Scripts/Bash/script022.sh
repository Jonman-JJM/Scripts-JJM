#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman
#Saca la tabla del 1-9.

clear

read -p "Dime un numero del 1-9: " num

if test $num -eq 1
then
	echo "Tabla del 1."

	let res=1*0
	echo "1 x 0=" $res

	let res=1*1
	echo "1 x 1=" $res

	let res=1*2
	echo "1 x 2=" $res

	let res=1*3
	echo "1 x 3=" $res

	let res=1*4
	echo "1 x 4=" $res

	let res= 1*5
	echo "1
elif test $num -eq 2
then
	echo "Tabla del 2."

elif test $num -eq 3
then
	echo "Tabla del 3."

elif test $num -eq 4
then
	echo "Tablas del 4."

else
	echo "El dato indicado no es un numero"

fi
exit 0


