$number

while(Get-Process Notepad -ErrorAction SilentlyContinue){
    Write-Host 'Notepad is running!'
    Start-Sleep -Seconds 1
    $number += 1
}

$number