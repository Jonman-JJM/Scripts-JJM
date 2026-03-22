#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman.
#Numerar los nombres de usuarios.
clear
res=0
usuarios=`cat /etc/passwd|cut -f1 -d:`

for i in $usuarios
do
	let res=$res+1
	echo "Usuario nº$res ---> $i"
done
exit 0
