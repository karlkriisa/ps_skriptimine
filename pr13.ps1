function square {
    do{
        $side = Read-Host "Enter the side of the square: "
        if($side -notmatch '^\d+(\.\d+)?$'){
            Write-Host "Type a correct number!" -ForegroundColor Red
            $continue = $false
        }else{
            $area = [double]$side * [double]$side
            Write-Host `n"Area of the square: $($area)" -ForegroundColor Green
            $continue = $true
        }
    }while($continue -eq $false)
}

function rectangle {
    $side1 = Read-Host "Enter first side of the rectangle"
    $side2 = Read-Host "Enter second side of the rectangle"
    if($side1 -notmatch '^\d+(\.\d+)?$' -or $side2 -notmatch '^\d+(\.\d+)?$'){
        Write-Host "Type a correct number!" -ForegroundColor Red
    }else{
        $area = [double]$side1 * [double]$side2
        Write-Host `n"Area of the rectangle: $($area)" -ForegroundColor Green
    }
}

function circle {
    $radius = Read-Host "Enter the radius of the circle"
    if($radius -notmatch '^\d+(\.\d+)?$'){
        Write-Host "Type a correct number!" -ForegroundColor Red
    }else{
        $area = [double]$radius * [double]$radius * [double][math]::pi
        Write-Host `n"Area of the circle: $($area)" -ForegroundColor Green
    }
}

function triangle {
    $base = Read-Host "Enter the base of the triangle"
    $height = Read-Host "Enter the height of the triangle"
    if($base -notmatch '^\d+(\.\d+)?$' -or $height -notmatch '^\d+(\.\d+)?$'){
        Write-Host "Type a correct number!" -ForegroundColor Red
    }else{
        $area = [double]$base * [double]$height / 2
        Write-Host `n"Area of the triangle: $($area)" -ForegroundColor Green
    }
}

$continue = $null

do{
    Clear-Host
    Write-Host '           Area Calculator'`n -ForegroundColor Green
    Write-Host '              Main Menu'`n -ForegroundColor Yellow
    Write-Host 'Please select the option to perform the respective task'`n -ForegroundColor Yellow
    $MainMenu = @('Area of square', 'Area of rectangle', 'Area of circle', 'Area of triangle', 'Exit')
    for($i=0; $i -lt $MainMenu.Count; $i++){
        Write-Host "$($i+1): $($MainMenu[$i])" -ForegroundColor Green
    }

    $ch = Read-Host "Enter your choice: "
    switch($ch){
        1
            {
            Clear-Host
            Write-Host "           Area of Square"`n -ForegroundColor Green
            square
            }
        2
            {
            Clear-Host
            Write-Host "           Area of Rectangle"`n -ForegroundColor Green
            rectangle
            }
        3
            {
            Clear-Host
            Write-Host "           Area of Circle"`n -ForegroundColor Green
            circle
            }
        4
            {
            Clear-Host
            Write-Host "           Area of Triangle"`n -ForegroundColor Green
            triangle
            }
        5
            {
            $continue = $false
            }
        default
            {
            Write-Host `n"Choose an option between 1-5!" -ForegroundColor Red
            }
    }
    do{
        $fail = $null
        if($continue -ne $false){
            Write-Host `n`n"Please select the next option"`n -ForegroundColor Yellow
            $ChoiceMenu = @('Return to Main Menu', 'Exit')
            for($i=0; $i -lt $ChoiceMenu.Count; $i++){
                Write-Host "$($i+1): $($ChoiceMenu[$i])" -ForegroundColor Green
            }
            $ch = Read-Host `n"Enter your choice: "
            switch($ch){
                1
                    {
                    $continue = $true
                    $fail = $false
                    }
                2
                    {
                    $continue = $false
                    $fail = $false
                    }
                default
                    {
                    Write-Host `n"Enter a correct option!" -ForegroundColor Red
                    $fail = $true
                    }
                }
        }else{}
    }while($fail -eq $true)
}while($continue -eq $true)