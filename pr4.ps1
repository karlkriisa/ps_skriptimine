$first = Read-Host "Insert the first value"
$second = Read-Host "Insert the second value"

if ($first -gt $second){
    Write-Host "$first is greater than $second"
} else {
    Write-Host "$first is lesser than $second"
}

$countries = @('India', 'Australia', 'China')
$capitals = @('New Delhi', 'Canberra', 'Beijing')

Write-Host "Select Country :" -ForegroundColor Yellow
for ($i = 1; $i -le $countries.Count; $i++){
    Write-Host "$i. "$countries[$i-1] -ForegroundColor Green
}

$choice = Read-Host "Please select country: "

# '^\d+$' Checks the input for only digits
if ($choice -match '^\d+$' -and $choice -gt 0 -and $choice -le $countries.Count){
    Write-Host "$($countries[$choice-1])'s capital is $($capitals[$choice-1])" -ForegroundColor Green
} else {
    Write-Host "$($choice) is an invalid number!" -ForegroundColor Red
}