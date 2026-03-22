#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman
#Copiar un fichero de un directorio a otro directorio
clear

read -p "Dime el nombre del fichero: " f

read -p "Ruta del fichero: " dir1

read -p "Dime la ruta de destino a copiar: " dir2

cp $dir1/$f $dir2

exit 0
