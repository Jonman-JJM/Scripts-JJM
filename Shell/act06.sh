#!/bin/bash
#Mostrar todos los ficheros regulares del directorio en el que te encuentras.
clear

for i in `ls -f`
do
	echo "$i"
done
exit 0
