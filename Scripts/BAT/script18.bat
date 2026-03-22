@echo off
cls

set /p ip=Dime la ip para hacer ping: 

ping %ip% >nul >nul

if %ERRORLEVEL% EQU 0 (
	echo El ordenador esta encendido.
)

goto bien
if %ERRORLEVEL NEQ 0(
	
)

goto mal


:bien
	echo Pc encendida
	echo Pc con IP % 1 encendido >>ref.log
	goto fin

:mal
	echo Pc apagada.
	echo Pcon %ip% apagado >> reg.log

:fin

