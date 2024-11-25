$days=@{Name='John','Joe','Mary';DaysWorked=12,20,18}
$salaryperday=@{Name='John','Joe','Mary';SalaryPerDay=100,120,150}

$johnsalary = $days.DaysWorked[0] * $salaryperday.SalaryPerDay[0]
$joesalary = $days.DaysWorked[1] * $salaryperday.SalaryPerDay[1]
$marysalary = $days.DaysWorked[2] * $salaryperday.SalaryPerDay[2]

$salary=@{Name=$days.Name[0],$days.Name[1],$days.Name[2];Salary=$johnsalary,$joesalary,$marysalary}

$salary