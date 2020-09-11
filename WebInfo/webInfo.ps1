$site = Read-Host "Informe o site: "
$web = Invoke-WebRequest -uri "$site" -Method Options
write-Host "O servidor é: "
$web.headers.server
write-Host ""
Write-Host "O servidor aceita os metodos: "
$web.headers.allow
write-Host ""
write-Host "Links capturados: "
$web2 = Invoke-WebRequest -uri "$site"
$web2.links.href | Select-String http:/