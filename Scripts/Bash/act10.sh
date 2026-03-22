#!/bin/bash
#Solicita un número y que muestre por pantalla su tabla de multiplicar (haz dos versiones, una usando el for y otra sin usarlo).
clear
read -p "Numero: " num

for i in `seq 0 1 10`
do
	let result=$num*$i
	echo "$num*$i=$result"
done


exit 0
