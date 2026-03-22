#!/bin/bash
# -gt -gl -lt -eq -ne
clear

echo "Dime tu edad: "
read edad

if test $edad -ge 18
then
	echo "Puedes entrar"
fi

#if test $edad -lt 18
#then
#	echo "no puedes entrar"

#fi

exit 0
