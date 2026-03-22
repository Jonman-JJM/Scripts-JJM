#!/bin/bash
# Script que sume todos numeros que hay en un fichero .txt (un número por cada lína)
clear
suma=0
datos=`cat numeros.txt`

    while read -r numero; 
    do
	suma+=numero
    done < "$datos"
    echo "La suma total es: $suma"

exit 0
