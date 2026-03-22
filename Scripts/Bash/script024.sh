#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman
#Menu con opciones de calculadora.
#Es recomendable colocar --> resultado=0
resultado=0
clear

echo " "
echo "* Opc S: Sumar."
echo " "
echo "* Opc R: Restar."
echo " "
echo "* Opc M: Multiplicar."
echo " "
echo "* Opc D: Dividir."
echo " "
read -p "Dime una opción en mayuscula [S-R-M-D]: " Opc

if test $Opc == S
then

	read -p "Primer digito para la sumar: " pdsum

	read -p "Segundo digito para la suma: " sdsum

#if let res=$pdsum+$sdsum &>/del/null
#then
	#echo "El resultado de la suma es:"
#else
	#echo "La suma no se apodido realizar."
#fi
	if let res=$pdsum+$sdsum
	echo "El resultado de $pdsum + $sdsum= $res"

elif test $Opc == R
then
	read -p "Primer digito para la resta: " pdres

	read -p "Segundo digito para la resta: " sdres

	let res=$pdres-$sdres
	echo "El resultado es $pdres - $sdres= $res"

elif test $Opc == M
then

	read -p "Primer digito para multiplicar: " pdmul

	read -p "Segundo digito para multiplicar: " sdmul

	let res=$pdmul*$sdmul
	echo "El resultado es $pdmul * $sdmul= $res"

elif test $Opc == D
then

	read -p "Primer digito para dividir: " pddiv

	read -p "Segundo digito para dividir: " sddiv

	let res=$pddiv/$sddiv
	echo "El resultado es $pddiv / $sddiv= $res"

else
	echo "No coincide con ninguna opción."
	exit 1
fi

exit 0
