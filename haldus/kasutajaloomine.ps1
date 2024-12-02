# Küsib kasutajalt ees- ja perenime ning teeb
# antud andmetega lokaalse kasutaja

$eesnimi = Read-Host "Sisesta oma eesnimi: "
$perenimi = Read-Host "Sisesta oma perenimi: "

$kasutajanimi = ($eesnimi.ToLower() + "." + $perenimi.ToLower())
$taisnimi = ($eesnimi + " " + $perenimi)
$parool = ConvertTo-SecureString "Parool1!" -AsPlainText -Force
$kirjeldus = "Local Account"

New-LocalUser $kasutajanimi `
    -Password $parool `
    -FullName $taisnimi `
    -Description $kirjeldus `
    -ErrorAction SilentlyContinue | Out-Null

if($?) {
    Write-Host "Loodav kasutaja on $kasutajanimi"
}
else{
    Write-Host "Selline kasutaja on juba olemas!" -ForegroundColor Red
}