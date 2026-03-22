#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman
#Crea un usuario con grupo y directorio personal.
read -p "Dime tu nombre: " usu

read -p "Dime nombre de grupo: " grup

read -p "Dime tu directorio personal: " dirpe

groupadd $grup
useradd -m $usu -g /home/$grup -d $dirpe
exit 0
