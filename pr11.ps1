$n1 = Read-Host "Enter first number "
$n2 = Read-Host "Enter second number "

if($n1 -notmatch '^\d+$' -or $n2 -notmatch '^\d+$'){
    Write-Host "Use only numbers!" -ForegroundColor Red
} else {
    Write-Host 'Calculator' -ForegroundColor Green
    $calcMenu = @('Addition', 'Substraction', 'Division', 'Multiplication')
    for($i=0; $i -lt $calcMenu.Count; $i++){
        Write-Host "$($i+1): $($calcMenu[$i])" -ForegroundColor Yellow
    }
    $ch = Read-Host "Enter your choice: "
    $answer = 0
    switch($ch){
        1
          {
            $answer = [double]$n1 + [double]$n2
            Write-Host $answer
          }
        2
          {
            $answer = [double]$n1 - [double]$n2
            Write-Host $answer
          }
        3
          {
            $answer = [double]$n1 / [double]$n2
            Write-Host $answer
          }
        4
          {
            $answer = [double]$n1 * [double]$n2
            Write-Host $answer
          }
        default
          {
            Write-Host "Use values 1-4" -ForegroundColor Red
          }
    }
}