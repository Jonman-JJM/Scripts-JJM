#!/bin/bash
# Mostrar todos los directorios que existen en el directorio en el que te encuentras.
clear

for i in `ls -d`
do
	echo "$i"
done


exit 0
