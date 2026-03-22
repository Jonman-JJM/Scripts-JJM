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

    $null= New-LocalUser "$nom" -Password $password

    if ($? -ieq "True") {
        Write-Host " "
        Write-Host "El usuario se acreado correctamente."
        Write-Host " "
    }
    else{
        Write-Host " "
        Write-Host "El usuario no se ha creado, consulte al administrador del script."
        Write-Host " "
    }
}

elseif ($num -eq 2) {
	$rnom= Read-Host "Dime el nombre usuario que quieres borrar"
    $null= Remove-LocalUser "$rnom"
    
    if ($? -ieq "True") {
        Write-Host " "
        Write-Host "El usuario se eliminado correctamente."
        Write-Host " "
    }
    else{
        Write-Host " "
        Write-Host "El usuario no se ha eliminado, consulte al administrador del script."
        Write-Host " "
    }
}

elseif ($num -eq 3) {
	$grup= Read-Host "Dime el nombre del grupo que quieres crear"
    
    $null= New-LocalGroup "$grup"

     if ($? -ieq "True") {
        Write-Host " "
        Write-Host "El grupo se acreado correctamente."
        Write-Host " "
    }
    else{
        Write-Host " "
        Write-Host "El grupo no se ha creado, consulte al administrador del script."
        Write-Host " "
    }
}

elseif ($num -eq 4) {
	$rgrup= Read-Host "Dime el nombre del grupo que quieres borrar"
    
    $null= Remove-LocalGroup "$rgrup"

     if ($? -ieq "True") {
        Write-Host " "
        Write-Host "El grupo se borrado correctamente."
        Write-Host " "
    }
    else{
        Write-Host " "
        Write-Host "El borrado no se ha borrado, consulte al administrador del script."
        Write-Host " "
    }
}

elseif ($num -eq 5) {
	$nnom= Read-Host "Dime el nombre usuario que quieres añadir al grupo"
    
    $ngrup= Read-Host "Dime el nombre del grupo que deseas añadir el usuario"
    
    $null= Add-LocalGroupMember -Group "$ngrup" -Member "$nnom"

     if ($? -ieq "True") {
        Write-Host " "
        Write-Host "El usuario se añadio correctamente."
        Write-Host " "
    }
    else{
        Write-Host " "
        Write-Host "El usuario no se ha añadido, consulte al administrador del script."
        Write-Host " "
    }
}

elseif ($num -eq 6) {
	$rnnom= Read-Host "Dime el nombre usuario que quieres sacar del grupo"

    $rngrup= Read-Host "Dime el nombre del grupo que quieres sacar el usuario"

    $null= Remove-LocalGroupMember -Group "$rngrup" -Member "$rnnom"

     if ($? -ieq "True") {
        Write-Host " "
        Write-Host "El usuario se saco correctamente."
        Write-Host " "
    }
    else{
        Write-Host " "
        Write-Host "El usuario no se ha sacado consulte al administrador del script."
        Write-Host " "
    }
}

else{
	Write-Host "No has seleccionado ninguna opcion."
}

