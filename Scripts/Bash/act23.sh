#!/bin/bash

clear 0



tam=0
for i in `ls`
do
	if test -f $i
	then
		tamfi=`ls -l $i|tr -s " "|cut -f5 -d" "`
		echo "El tamaño de $i es $tamfi"
		let tam=$tam+$tamfi
	fi
done

echo "El tamaño total es $tam."



exit 0
