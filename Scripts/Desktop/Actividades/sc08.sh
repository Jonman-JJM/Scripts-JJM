#!/bin/bash
clear

read -p "Dime el nombre del fichero que quieres comprobar: " fitx

if test -f $fitx
then
	echo "$fitx es un ficehro regular y exisste"
else
	echo "$fitx no es un fiechero regular o no exite."
fi





exit 0
