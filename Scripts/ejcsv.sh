#!/bin/bash
clear

datos=`cat datos.csv|tail -n+2`

for i in $datos
do
	com=`echo $i|cut -f1 -d";"`
	fch=`echo $i|cut -f2 -d";"`
	dest=`echo $i|cut -f3 -d";"`

	if `$com $fch $dest`
	then
		echo "El comando ha funcionado"
	else
		echo "EL comando ha fallado"
	fi
done

exit 0
