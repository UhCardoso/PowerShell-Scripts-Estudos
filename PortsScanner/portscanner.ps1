 param($ip)
 if(!$ip) {
    Write-Host "by: UhCardoso"
    Write-Host "============="
    Write-Host "PORT SCANNER"
    Write-Host "------------"
    Write-Host "Uso, exemplo: \.portscanner.ps1 192.168.1"
 } else {
    foreach($porta in 1..2000) {
        if(Test-NetConnection $ip -port $porta -WarningAction SilentlyContinue -InformationLevel Quiet) {
            Write-Host "Porta $porta Aberta"
        }
    }
}