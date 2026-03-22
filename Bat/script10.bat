@echo off
cls

set /p fit=Dime el nombre de un fichero: 

if EXIST "%fit%" (
	echo Ficheros encontrado.

) else (

	echo El fichero no se encuentra.
)
