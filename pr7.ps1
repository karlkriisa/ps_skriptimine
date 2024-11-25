$groups = @('Red', 'Green', 'Yellow', 'Blue')

$students = @()
for($i = 1; $i -le 20; $i++){
    $group = $groups | Get-Random
    $students += [PSCustomObject]@{'RollNumber'=$i; 'Group'=$group}
}

$students