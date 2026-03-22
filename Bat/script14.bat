@echo off
:menu
set opc=0
set nom=""

:menu

cls
echo 1 Decir mi nombre
echo 2 Decir adios
echo 3 salir

set /p opc=Indique una opcion:
if %opc% EQU 1 (
	set /p nom=Dime tu nombre:
	echo Bienbenido, %nom%
	echo Pulse una tecla para volver al menu
	pause >nul
)
if %opc% EQU 2 (
	goto Adios
	echo Pulse una tecla para volver al menu
	pause >nul
)
if %opc% EQU 3 (
	goto Salir
	
)
goto menu
:salir