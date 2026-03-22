#!/bin/bash

function suma(){

	let res=$1+$2
	echo "$1+$2=$res"
}

read -p "Primer valor:" v1

read -p "Segúndo valor: " v2

suma $v1 $v2

exit 0
