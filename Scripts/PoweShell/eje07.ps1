[int]$nota = Read-Host "Escribe una nota:"

switch ($nota){
	{$nota -lt 5}				{Write-Host "Suspenso"}
	{($nota -ge 5) -and ($nota -le 10}	{Write-Host "Aprobado"}
	5					{Write-Host "Insuficiente"}
	6					{Write-Host "Suficiente"}
	{$nota -in 7, 8}			{Write-Host "Bien"}
	{$nota -in 9, 10}			{Write-Host "Sobresaliente"}

	default {write-host "No conozco esa nota"}
}