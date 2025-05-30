# Script para mostrar el uso de disco en Windows

Write-Host "Espacio en disco por unidad:`n"
Get-PSDrive -PSProvider 'FileSystem' | ForEach-Object {
    $totalGB = "{0:N2}" -f ($_.Used + $_.Free)/1GB
    $usadoGB = "{0:N2}" -f $_.Used/1GB
    $libreGB = "{0:N2}" -f $_.Free/1GB
    Write-Host "$($_.Name): Usado: $usadoGB GB | Libre: $libreGB GB | Total: $totalGB GB"
}
