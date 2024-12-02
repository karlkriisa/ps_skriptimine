# Küsib kasutajalt ees- ja perenime ning
# kustutab antud andmetega kasutaja

$eesnimi = Read-Host "Sisesta oma eesnimi: "
$perenimi = Read-Host "Sisesta oma perenimi: "

$kasutajanimi = ($eesnimi.ToLower() + "." + $perenimi.ToLower())

Remove-LocalUser $kasutajanimi -ErrorAction SilentlyContinue | Out-Null

if($?) {
    Write-Host "Kustutatav kasutaja on $kasutajanimi"
}
else{
    Write-Host "Sellist kasutajat pole olemas!" -ForegroundColor Red
}