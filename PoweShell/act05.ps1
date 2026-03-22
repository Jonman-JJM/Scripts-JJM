Clear-Host


$datos=Get-ChildItem

foreach($dato in $datos){
    $M=$dato.PSIsContainer
    Write-Host "Esto $dato = $m"
}


exit 0