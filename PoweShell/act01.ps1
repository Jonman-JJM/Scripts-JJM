Clear-Host

[INT]$num=Read-Host "Dime tu numero"

if($num -lt 100)
{
    write-host "$num es menor de 100"
}
elseif($num -gt 100)
{
    Write-Host "$num es mayor a 100"
}


exit 0