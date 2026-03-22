#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman
#Script para crear usuarios
echo "Dime el nombre"
read usu
useradd -m $usu
exit 0
