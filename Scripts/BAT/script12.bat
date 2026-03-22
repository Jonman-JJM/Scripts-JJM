@echo off
cls

set /p fit=Dime el nombre del fichero para borrar..

if EXIST "%fit%" (
	DEL %fit%
	echo Fichero encontrado y borrado.
	echo %ERRORLEVEL%
) else (
	echo El fichero no existe.
	echo %ERRORLEVEL%
)



