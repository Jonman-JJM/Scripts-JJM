#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman
#Se debe empaquetar y comprimir y guardar en /copias/
clear

read -p "Diga la fecha de hoy en formato dd_mm_yy: " fecha

tar -czf /copias/copia_$fecha.tgz /home/*

exit 0
