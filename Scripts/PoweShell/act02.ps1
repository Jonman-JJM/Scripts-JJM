Clear-Host

$num=Read-Host "Dime tu numero"
$num=[INT]$num
if($num -lt 100)
{
write-host "$num es menor de 100"
}
elseif($num -gt 100)
{
Write-Host "$num es mayor a 100"
}
else
{
Write-Host "Has introducido justamente el 100"
}

exit 0