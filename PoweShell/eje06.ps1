$valor = Read-Host "Dime un numero del [1-4]"

switch ($valor){
	1{Write-Host "Es el uno"}
	2{Write-Host "Es el dos"}
	3{Write-Host "Es el tres"}
	4{Write-Host "Es el cuatro"}

	default {Write-Host "El número no está entre 1 y 4"}
}