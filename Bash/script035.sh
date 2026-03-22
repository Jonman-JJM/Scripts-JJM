#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman Ariel.
#script que se le pasan por argumento nombres de usuario que los tiene que crear.


for i in $*
do
	if useradd -m "$i"
        then
		echo "El usuario $i se ha creado correcatamente."
	else
		echo "El usuario $i no se ha creado."
		exit 1
done

exit 0
