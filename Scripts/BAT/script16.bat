@echo off
cls
setlocal enabledelayedexpansion
:menu

if exist ej.log (
	echo echo !DATE! !TIME! >> ej.log
) else (
	echo Registro > ej.log
	echo !DATE! !TIME! >> ej.log
)




echo 1: Crear usuario.
echo 2: Borrar usuario.
echo 3: Crear grupo.
echo 4: Borrar grupo
echo 5: Meter el usuario en un grupo.
echo 6: Sacar a un Usuario de un grupo.
echo 7: Salir.

set /p opc=Indica una opcion [1-7]: 


if %opc% EQU 1 (
	
	set /p nusu=Dime el nombre del usuario:
	set /p cusu=Dime la contraseña del usuario:
	net user !nusu! !cusu! /add >nul 2>nul

	if !ERRORLEVEL! EQU 0 (
		echo Se a creado correctamente.
	)
	if !ERRORLEVEL! NEQ 0 (
		echo Fallo al crear el usuario.
	)
	echo Pulse una tecla para volver al menu.
	pause >nul
	cls
)
	

if %opc% EQU 2 (
	set /p dusu=Dime el nombre del usuario que deseas borrar.
	net user !dusu! /del

	if !ERRORLEVEL! EQU 0 (
		echo Se ha borrado correctamente.
	)
	if !ERRORLEVEL! NEQ 0 (
		echo No se ha borrado correctamente.
	echo Pulse una tecla para volver al menu.
	pause >nul
	cls
)
	
if %opc% EQU 3 (
	set /p ngrp=Dime el nombre del grupo que deseas crear: 
	net localgroup %ngrp% /add
	
	echo Pulse una tecla para volver al menu.
	pause >nul
	cls

)


if %opc% EQU 4 (
	set /p bgrp=Dime el nombre para borrar el grupo: 
	net localgroup %bgrp% /del
	
	echo Pulse una tecla para volver al menu.
	pause >nul
	cls

)


if %opc% EQU 5 (
	set /p ausu=Dime el usuario que quieres introducir a un grupo.
	set /p grpd=Dime el grupo al que quieres añadir el usuario.
	net localgrup %asu% %grpd% /add
	echo Num de error: %ERRORLEVEL%
	echo Pulse una tecla para volver al menu.
	pause >nul
	cls

)


if %opc% EQU 6 (
	set /p susu=Dime el usuario que quieres sacar del grupo:
	set /p sgrp=Dime el grupo de donde quieres sacar el usuario:
	net localgroup %susu% %sgrp% /del
	echo Num de error: %ERRORLEVEL%
	echo Pulse una tecla para volver al menu.
	pause >nul
	cls
)


if %opc% EQU 7 (
	cls
	goto Salir

)

if %opc% NEQ 7 (

	echo No has seleccionado ninguna opcion.
	echo Num de error: %ERRORLEVEL%

	cls
)

goto menu
