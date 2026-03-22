@echo off
cls

set /p num=Dime un numero: 

set /a res1=%num%*1
set /a res2=%num%*2
set /a res3=%num%*3
set /a res4=%num%*4
set /a res5=%num%*5
set /a res6=%num%*6
set /a res7=%num%*7
set /a res8=%num%*8
set /a res9=%num%*9
set /a res10=%num%*10 
echo "La tabla de multiplicar es: 
echo " 1*%num%=%res1%
echo " 2*%num%=%res2%
echo " 3*%num%=%res3%
echo " 4*%num%=%res4%
echo " 5*%num%=%res5%
echo " 6*%num%=%res6%
echo " 7*%num%=%res7%
echo " 8*%num%=%res8%
echo " 9*%num%=*%res9%
echo " 10*%num%=%res10%