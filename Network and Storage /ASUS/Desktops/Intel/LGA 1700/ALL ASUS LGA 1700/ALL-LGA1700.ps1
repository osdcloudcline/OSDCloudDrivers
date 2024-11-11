Function Get-LGA1700Storage(){

$LGA1700Storage1 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Storage\iaStorVD.cat" -IsValid)
$LGA1700Storage2 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Storage\iaStorVD.inf" -IsValid)
$LGA1700Storage3 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Storage\iaStorVD.sys" -IsValid)
$LGA1700Storage4 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Storage\RstMwEventLogMsg.dll" -IsValid)

If(($LGA1700Storage1 -eq $true) -and ($LGA1700Storage2 -eq $true) -and ($LGA1700Storage3 -eq $true) -and ($LGA1700Storage4 -eq $true)){
Write-Verbose "ASUS LGA 1700 Storage drivers have been downloaded and expanded" -Verbose
}
ElseIf (($LGA1700Storage1 -eq $false) -and ($LGA1700Storage2 -eq $false) -and ($LGA1700Storage3 -eq $false) -and ($LGA1700Storage4 -eq $false)){
$LGA1700Storage = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Storage/LGA1700-Storage.ps1")
Invoke-Expression $($LGA1700Storage.Content)
}
}

$LGA1700 = "C:\Logs\OSDCloud\ASUS\LGA1700.log"

Start-Transcript -Path $LGA1700

Get-Date

Write-Verbose "Processing: ASUS LGA 1700 Business Motherboards" -Verbose
Write-Host

$BusinessLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Business%20Motherboards/Business.ps1")
Invoke-Expression $($BusinessLGA1700.Content)

Get-LGA1700Storage

Write-Verbose "Processing: ASUS LGA 1700 CSM Motherboards" -Verbose
Write-Host

$CSMLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/CSM%20Motherboards/CSM.ps1")
Invoke-Expression $($CSMLGA1700.Content)

Get-LGA1700Storage

Write-Verbose "Processing: ASUS LGA 1700 Expedition Motherboards" -Verbose
Write-Host

$ExpeditionLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Expedition%20Motherboards/Expedition.ps1")
Invoke-Expression $($ExpeditionLGA1700.Content)

Get-LGA1700Storage

Write-Verbose "Processing: ASUS LGA 1700 Other Motherboards" -Verbose
Write-Host

$OtherLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Other%20Motherboards/Other.ps1")
Invoke-Expression $($OtherLGA1700.Content)

Get-LGA1700Storage

Write-Verbose "Processing: ASUS LGA 1700 PRIME Motherboards" -Verbose
Write-Host

$PRIMELGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/PRIME%20Motherboards/PRIME.ps1")
Invoke-Expression $($PRIMELGA1700.Content)

Get-LGA1700Storage

Write-Verbose "Processing: ASUS LGA 1700 ProArt Motherboards" -Verbose
Write-Host

$ProArtLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ProArt%20Motherboards/ProArt.ps1")
Invoke-Expression $($ProArtLGA1700.Content)

Get-LGA1700Storage

Write-Verbose "Processing: ASUS LGA 1700 ROG - Republic of Gamers Motherboards" -Verbose
Write-Host

$ROGLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ROG%20-%20Republic%20of%20Gamers%20Motherboards/ROG%20-%20Republic%20of%20Gamers.ps1")
Invoke-Expression $($ROGLGA1700.Content)

Get-LGA1700Storage

Write-Verbose "Processing: ASUS LGA 1700 TUF Gaming Motherboards" -Verbose
Write-Host

$TUFGamingLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/TUF%20Gaming%20Motherboards/TUFGaming.ps1")
Invoke-Expression $($TUFGamingLGA1700.Content)

Get-LGA1700Storage

Write-Verbose "Processing: ASUS LGA 1700 Workstation Motherboards" -Verbose
Write-Host

$WorkstationLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Workstation%20Motherboards/Workstation.ps1")
Invoke-Expression $($WorkstationLGA1700.Content)

Stop-Transcript

$LGA1700VirtualDrivers = "C:\Logs\OSDCloud\ASUS\LGA1700Virtual.log"

Start-Transcript -Path $LGA1700VirtualDrivers

Write-Verbose "Processing: VMWare ESXI Virtualization Drivers" -Verbose

Write-Verbose "Processing: Hyper-V Virtualization Drivers" -Verbose

Write-Verbose "Processing: VMWare Workstation Professional Virtualization Drivers" -Verbose

Write-Verbose "Processing: Proxmox Virtual I/O Virtualization Drivers" -Verbose

Write-Verbose "Processing: Docker Virtualization Drivers" -Verbose

Stop-Transcript

$ASUSOSDCloudISOMain = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/CreateISO-Main.ps1")
Invoke-Expression $($ASUSOSDCloudISOMain.Content)

