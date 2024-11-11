# define two arrays
$a1 = @(1,2,3)
$a2 = @(4,5,6)

#define empty array
$a3 = New-Object -TypeName "System.Collections.ArrayList" ## $a3 = [System.Collections.ArrayList]@()
# add to new array
$a3.Add($a1[0] + $a2[0]) | Out-Null
$a3.Add($a1[1] + $a2[1]) | Out-Null
$a3.Add($a1[2] + $a2[2]) | Out-Null

# print array
$a3