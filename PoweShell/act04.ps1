Clear-Host

[strting]$nom=Read-Host "Dime tu nombre"
#$nom=$nom
if($nom -like "Julian")
{
write-host "Bienvenido Juian"
}
elseif($nom -like "Julia")
{
Write-Host "Bienvenia, Julia"
}
elseif($nom -like "Julen")
{
Write-Host "Bienvenido, Julen"
}
elseif($nom -like "Lucia")
{
Write-Host "Bienvenida, Lucia"
}
else
{
Write-Host "Tu quien eres?"
}
exit 0