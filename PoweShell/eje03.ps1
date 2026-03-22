

[int]$num = Read-Host "Dime tu edad"

if($num -ge 18){
	Write-Host "Eres mayor de edad, puedes pasar."
}

else{
	Write-Host "Eres menor de edad, no puede pasar."
}