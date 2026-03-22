@echo off
cls

set /p num=Dime el numero 10: 
if %num% EQU 10 (
	echo SII

) else (

	echo NOOOOO
)


if NOT %num% EQU 10 (
	echo No has .....
)


if %num% NEQ 10 (
	echo Nos has introducidoo

)