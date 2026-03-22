Clear-Host

$edat=Read-Host "Dime tu edad"
$edat=[INT]$edat
if($edat -lt 21)
{
write-host "Eres menor, no puedes beber."
}
elseif($edat -ge 21)
{
Write-Host "Eres mayor, puedes beber."
}

exit 0