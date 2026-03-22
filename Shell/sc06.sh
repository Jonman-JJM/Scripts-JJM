#!/bin/bash
clear

echo "DIme tu edad: "
read edad

if test $edad -lt 18
then
	echo "Puedes entrar"
elif test $edad -ge 45
then
	echo "No puedes entrar."



fi

exit 0
