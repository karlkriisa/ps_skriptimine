$names = Import-Csv C:\Users\Karl\ps_skriptimine\names.csv
$result = @()
foreach($i in $names){
    if ([int]$i.Age -ge 4 -and [int]$i.Age -le 10){
        $school = 'Junior'
    } elseif ([int]$i.Age -ge 11 -and [int]$i.Age -le 17){
        $school = 'Senior'
    }
    $temp = [PSCustomObject]@{
        Name = $i.Name
        School = $school
    }
    $result += $temp
}
$result | Export-Csv -Path C:\Users\Karl\ps_skriptimine\schools.csv -NoTypeInformation