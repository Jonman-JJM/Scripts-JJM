#!/bin/bash
clear

echo "Dime un numero:"

read num

if test $num -gt 100
then
	echo "$num Es mayor que 100"

elif test $num -lt 100
then
	echo "$num Es menor a 100"

else
	echo "Has intruducido justamente 100"

fi

exit 0
