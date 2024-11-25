$number = 0

do{
    Write-Host 'Notepad is running!'
    Start-Sleep -Seconds 1
    $number += 1
}while(Get-Process Notepad -ErrorAction SilentlyContinue)

$number