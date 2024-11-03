Function Get-LGA1851Storage(){

$LGA1851Storage1 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\Storage\iaStorVD.cat" -IsValid)
$LGA1851Storage2 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\Storage\iaStorVD.inf" -IsValid)
$LGA1851Storage3 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\Storage\iaStorVD.sys" -IsValid)
$LGA1851Storage4 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\Storage\RstMwEventLogMsg.dll" -IsValid)

If(($LGA1851Storage1 -eq $true) -and ($LGA1851Storage2 -eq $true) -and ($LGA1851Storage3 -eq $true) -and ($LGA1851Storage4 -eq $true)){
Write-Verbose "ASUS LGA 1851 Storage drivers have been downloaded and expanded" -Verbose
}
ElseIf (($LGA1851Storage1 -eq $false) -and ($LGA1851Storage2 -eq $false) -and ($LGA1851Storage3 -eq $false) -and ($LGA1851Storage4 -eq $false)){
$LGA1851Storage = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Storage/LGA1851-Storage.ps1")
Invoke-Expression $($LGA1851Storage.Content)
}
}



$LGA1851 = "C:\Logs\OSDCloud\ASUS\LGA1851.log"

Start-Transcript

Get-Date

Write-Verbose "Processing: ASUS LGA 1851 Business Motherboards" -Verbose
Write-Host

$BusinessLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Business%20Motherbords/Business.ps1")
Invoke-Expression $($BusinessLGA1851.Content)

Get-LGA1851Storage

Write-Verbose "Processing: ASUS LGA 1851 CSM Motherboards" -Verbose
Write-Host

$CSMLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/CSM%20Motherboards/CSM.ps1")
Invoke-Expression $($CSMLGA1851.Content)

Get-LGA1851Storage

Write-Verbose "Processing: ASUS LGA 1851 Other Motherboards" -Verbose
Write-Host

$OtherLGA1851 = Invoke-WebReques("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Other%20Motherboards/Other.ps1")
Invoke-Expression $($OtherLGA1851.Content)

Get-LGA1851Storage

Write-Verbose "Processing: ASUS LGA 1851 PRIME Motherboards" -Verbose
Write-Host

$PRIMELGA1851 = Invoke-WebReques("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/PRIME%20Motherboards/PRIME.ps1")
Invoke-Expression $($PRIMELGA1851.Content)

Get-LGA1851Storage

Write-Verbose "Processing: ASUS LGA 1851 ProArt Motherboards" -Verbose
Write-Host

$RroArtLGA1851 = Invoke-WebReques("")
Invoke-Expression $($ProArtLGA1851.Content)

Get-LGA1851Storage

Write-Verbose "Processing: ASUS LGA 1851 ROG - Republic of Gamers Motherboards" -Verbose
Write-Host

$ROGLGA1851 = Invoke-WebReques("")
Invoke-Expression $($ROGLGA1851.Content)

Get-LGA1851Storage

Write-Verbose "Processing: ASUS LGA 1851 TUF Gaming Motherboards" -Verbose
Write-Host

$TUFLGA1851 = Invoke-WebReques("")
Invoke-Expression $($TUFLGA1851.Content)

Get-LGA1851Storage

Stop-Tranbscript
