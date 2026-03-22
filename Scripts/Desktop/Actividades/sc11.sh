#!/bin/bash
# Coprobación de -z -e -s

clear

read -p "Escribe el priemer numero: " num1

read -p "Escribe el segundo numero: " num2


let result1=$(($num1+$num2))
echo "La suma es $result1"

let result2=$(($num1-$num2))
echo "La resta es $result2"

let result3=$(($num1*$num2))
echo "La multiplicación es $result3"

let result4=$(($num1/$num2))
echo "La division es $result4"

let result5=$(($num1%$num2))
echo "El modulo es $result5"



exit 0
