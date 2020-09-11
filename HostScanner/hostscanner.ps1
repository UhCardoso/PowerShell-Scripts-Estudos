#UhCardoso - HOST SCANNER
param($p1)
if(!$p1){
    write-host "by: UhCardoso"
    write-host "============="
    write-host "HOST SCANNER"
    write-host "-------------"
    write-host "uso, exemplo: 192.0.168";
} else {
    foreach($ip in 1..254) {
       try {
        $resp = ping -n 1 "$p1.$ip" | select-string "bytes=32"
        $resp.Line.split(" ")[2] -replace ":","" 
       } catch {} 
    }
}