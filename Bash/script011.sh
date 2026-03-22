#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman
#Buscar usuarios del sistema.
#1-/etc/passwd
#2-read -p 
#3-cut
clear

read -p "Nombre de usuario: " user

cat /etc/passwd|grep ^$user|user -f1 -d:

exit 0
