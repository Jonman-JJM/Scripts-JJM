#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman
#Pago a un taller

clear

read -p "Cuanto a pagar: " euros

if test $euros -lt 200
then
	echo "El pago se hara en metalico."

elif test $euros -lt 1000
then
	echo "El pago se realizara por transferencia."

elif test $euros 
