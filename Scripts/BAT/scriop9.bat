@echo off
cls

set /p con=Dime la contraseña: 

if  "%con%" == "Informatica" (
	echo Contraseña correcta.

) else (
	echo Contraseña incorrecta.
	echo Te quedan 2 intentos.

)