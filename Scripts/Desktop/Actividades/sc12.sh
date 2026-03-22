#!/bin/bash
# Numero pares

clear

read -p "Escribe el numero: " $num

let result=$(($num % 2 == 0))

echo "$result no es par"

echo "

exit 0
