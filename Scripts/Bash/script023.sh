#!/bin/bash
#Realizado por: Jimenez Mendoza Jonman.
#Multiplicación.

clear
res=0
read -p "Dime un numero del 1 al 50: " num
echo " "

echo "La tabla del $num es: "

echo " "

let res=$num*0
echo "$num x 0= $res"

let res=$num*1
echo "$num x 1= $res"

let res=$num*2
echo "$num x 2= $res"

let res=$num*3
echo "$num x 3= $res"

let res=$num*4
echo "$num x 4= $res"

let res=$num*5
echo "$num x 5= $res"

let res=$num*6
echo "$num x 6= $res"

let res=$num*7
echo "$num x 7= $res"

let res=$num*8
echo "$num x 8= $res"

let res=$num*9
echo "$num x 9= $res"

let res=$num*10
echo "$num x 10= $res"


exit 0
