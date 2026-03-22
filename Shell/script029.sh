#!/bin/bash
clear

for i in `seq 1 2 3`
do
	echo " Voy a crear el usuario$i"
	read -p "Pulse Intro para continuar." basura
	useradd -m "usuario$i"
done

exit 0
