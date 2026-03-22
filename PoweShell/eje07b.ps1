[int]$nota=Read-Host "Escribe una nota: "
switch ($nota){
	{$nota -lt 5}				{Write-Host "Suspenso"}
	{($nota -ge 5) -and ($nota -le 10}	{Write-Host "Aprobado"}
	{$nota -in 1..4}			{Write-Host "Insuficiente"}
	5					{Write-Host "Suficiente"}
	6					{Write-Host "Bien"}
	{$nota -in 7, 8}			{Write-Host "Notable}
	{$nota -in 9, 10}			{Write-Host "Sobresaliente"}

	default {write-host "No conozco esa nota"}
}