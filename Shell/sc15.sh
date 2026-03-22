#!/bin/bash
# secuencia de usuarios

clear

for i in `seq 1 1 10`
do
	useradd usuario$i -m
done

exit 0
