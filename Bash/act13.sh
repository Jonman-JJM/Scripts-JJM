#!/bin/bash
clear

read -p "Indica la dirección del directorio: " nomd
let numf=$(find "$nomd" -type f | wc -l)
	echo "Número de ficheros regulares en $nomd= $numf"


	######



cant=0
datos=`ls `




exit 0
