#!/bin/bash
#Copiar todos los ficheros con extensión txt a ./backup (receurda crear el directorio).
clear

#find .-type -name *.txt -exec cp {} ./backup/



for i in `ls ./*.txt`
do
	cp $i ./backup/i
done


exit 0
