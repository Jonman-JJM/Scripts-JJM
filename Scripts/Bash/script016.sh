#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman
#Script usando palabras.

clear

read -p "Dime tu nombre: " nom
read -p "Dime tu edad: " edad

if test $nom == Jorman && test $edad -ge 18
then
	echo "Hola $nom"
else
	echo "¿Quien eres? Alerta!!!!"

fi
exit 0
