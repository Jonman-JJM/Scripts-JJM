Clear-Host
Write-Host " "
Write-Host "1- Crear usuario."
Write-Host " "
Write-Host "2- Borrar usuario."
Write-Host " "
Write-Host "3- Crear grupo local."
Write-Host " "
Write-Host "4- Borar grupo local."
Write-Host " "
Write-Host "5- Añadir usuario a grupo local."
Write-Host " "
Write-Host "6- Sacar un usuario de un grupo local."
Write-Host " "

	[int]$num= Read-Host "Elige un aopcion [1-6]"

if ($num -eq 1) {
	
    Write-Host "Indica una contraseña para el usuario:"
    $password= Read-Host -AsSecureString

    $nom= Read-Host "Dime el nombre usuario que quieres crear"

    New-LocalUser "$nom" -Password "$password"
    
}

elseif ($num -eq 2) {
	$rnom= Read-Host "Dime el nombre usuario que quieres borrar"
    Remove-LocalUser "$rnom"
}

elseif ($num -eq 3) {
	$grup= Read-Host "Dime el nombre del grupo que quieres crear"
    
    New-LocalGroup "$grup"
}

elseif ($num -eq 4) {
	$rgrup= Read-Host "Dime el nombre del grupo que quieres borrar"
    
    Remove-LocalGroup "$rgrup"
}

elseif ($num -eq 5) {
	$nnom= Read-Host "Dime el nombre usuario que quieres añadir al grupo"
    
    $ngrup= Read-Host "Dime el nombre del grupo que deseas añadir el usuario"
    
    Add-LocalGroupMember -Group "$ngrup" -Member "$nnom" 
}

elseif ($num -eq 6) {
	$rnnom= Read-Host "Dime el nombre usuario que quieres sacar del grupo"

    $rngrup= Read-Host "Dime el nombre del grupo que quieres sacar el usuario"

    Remove-LocalGroupMember -Group "$rngrup" -Member "$rnnom"
}

else{
	Write-Host "No has seleccionado ninguna opcion."
}

