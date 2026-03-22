#!/bin/bash

function suma(){

	let res=$1+$2
	echo "$1+$2=$res"
	sleep 4
}

function resta(){
	let res=$1-$2
	echo "$1-$2=$res"

}

function multi(){
	let res=$1*$2
	echo "$1*$2=$res"
	read -p "Pulsa intro para salir"
}

function div(){
	let res=$1/$2
	echo "$1/$2=$res"
}

salir=0

while test $op -eq 5
do

echo "1. Suma"
echo "2. Resta"    
echo "3. Multiplicación"
echo "4. División"
echo "5. Salir"

read -p "Selecciona una opción: " op
read -p "Primer valor: " v1
read -p "Segúndo valor: " v2

	if test $op -eq 1
	then
		suma $v1 $v2
	elif test $op -eq 2
	then
		resta $v1 $v2
	elif test $op -eq 3
	then
		multi $v1 $v2
	elif test $op -eq 4
	then
		div $v1 $v2
	elif test $op -eq 5
		echo "Has salido de la calculadora"
		exit 1
	else
		echo "No has seleccionado ninguna opción"
	fi
done
exit 0
