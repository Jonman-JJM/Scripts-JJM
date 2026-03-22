#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman
#Crear directorio junto a su ubicación.
clear

read -p "Dime la ruta donde quieres guardarlo (acabar con barra /): " ubd

read -p "Dime el nombre del directorio: " nomd

mkdir $ubd$nomd

exit 0
