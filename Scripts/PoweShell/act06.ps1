Clear-Host

$datos=Get-ChildItem

foreach($dato in $datos){
    $M=$dato.PSIsContainer
    # Write-Host "Esto $dato = $m"

    if($m -like "True")
    {
        Write-Host "$dato es un directorio"
    }
}

exit 0