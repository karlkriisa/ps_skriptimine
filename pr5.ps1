Get-Process | Where {$_.ProcessName -eq 'notepad'} | Select-Object ProcessName, Id | Out-Host

Get-ChildItem -Path C:\Temp\Test\ | Out-Host
$file = Get-ChildItem -Path C:\Temp\Test | Where {$_.Name -like "*.csv"} | Select-Object Name, Length
$KB = $file.Length/1KB
$MB = $file.Length/1MB

Write-Host "FileName: $($file.Name)"
Write-Host "Size in KB: $KB"
Write-Host "Size in MB: $MB"