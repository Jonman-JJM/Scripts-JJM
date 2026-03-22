#!/bin/bash
clear

if ! test -f ./calculadora.log
then
	touch ./calculadora.log
fi
if test $3 == "suma"
then
	let result=$1+$2
	fecha=`date`
	echo "$1 + $2 = $result y la fecha es $fecha" >> ./calculadora.log
	echo "La fecha es $fecha"
elif test $3 == "resta"
then
	let result=$1-$2
	echo "$1 - $2 = $resultado" >> .calculadora.log
elif test $3 == "multi"
then
	let result=$1*$2
fi
