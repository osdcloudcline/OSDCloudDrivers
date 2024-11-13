Function Get-AM4Storage(){

$AM4Storage1 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\rcbottom.cat" -IsValid)
$AM4Storage2 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\rcbottom.inf" -IsValid)
$AM4Storage3 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\rcbottom.sys" -IsValid)
$AM4Storage4 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\rccfg.cat" -IsValid)
$AM4Storage5 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\rccfg.inf" -IsValid)
$AM4Storage6 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\rccfg.sys" -IsValid)
$AM4Storage7 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\rcraid.sys" -IsValid)
$AM4Storage8 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\rcraid.cat" -IsValid)
$AM4Storage9 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\rcraid.inf" -IsValid)

If(($AM4Storage1 -eq $true) -and ($AM4Storage2 -eq $true) -and ($AM4Storage3 -eq $true) -and ($AM4Storage4 -eq $true) -and ($AM4Storage5 -eq $true) -and ($AM4Storage6 -eq $true) -and ($AM4Storage7 -eq $true) -and ($AM4Storage8 -eq $true) -and ($AM4Storage9 -eq $true)){
Write-Verbose "ASUS AM 4 Storage drivers have been downloaded and expanded" -Verbose
}
ElseIf (($AM4Storage1 -eq $false) -and ($AM4Storage2 -eq $false) -and ($AM4Storage3 -eq $false) -and ($AM4Storage4 -eq $false) -and ($AM4Storage5 -eq $false) -and ($AM4Storage6 -eq $false) -and ($AM4Storage7 -eq $false) -and ($AM4Storage8 -eq $false) -and ($AM4Storage9 -eq $false)){
$AM4Storage = Invoke-WebRequest("")
Invoke-Expression $($AM4Storage.Content)
}
}

Function Get-ESXILANDrivers(){

$ESXILANDrivers1 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Network\vmxnet3.cat" -IsValid)
$ESXILANDrivers2 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Network\vmxnet3.inf" -IsValid)
$ESXILANDrivers3 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Network\mxnet3.sys" -IsValid)

If(($ESXILANDrivers1 -eq $true) -and($ESXILANDrivers2 -eq $true) -and($ESXILANDrivers3 -eq $true)){
Write-Verbose "VMWare ESXI LAN Drivers have been downloaded and expanded" -Verbose
}
ElseIf(($ESXILANDrivers1 -eq $false) -and($ESXILANDrivers2 -eq $false) -and($ESXILANDrivers3 -eq $false)){
$ESXILANDrivers = Invoke-WebRequest("")
Invoke-Expression $(ESXILANDrivers.Content)
}
}

$AM4 = "C:\Logs\OSDCloud\ASUS\AM4.log"

Start-Transcript -Path $AM4

Get-Date

Write-Verbose "Processing: ASUS AM4 Business Motherboards" -Verbose
Write-Host

$BusinessAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/Business%20Motherboards/Business.ps1")
Invoke-Expression $($BusinessAM4.Content)

Get-AM4Storage

Write-Verbose "Processing: ASUS AM4 CSM Motherboards" -Verbose
Write-Host

$CSMAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/CSM%20Motherboards/CSM.ps1")
Invoke-Expression $($CSMAM4.Content)

Get-AM4Storage

Write-Verbose "Processing: ASUS AM4 Other Motherboards" -Verbose
Write-Host

$OtherAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/Other%20Motherboards/Others.ps1")
Invoke-Expression $($OtherAM4.Content)

Get-AM4Storage

Write-Verbose "Processing: ASUS AM4 PRIME Motherboards" -Verbose
Write-Host

$PRIMEAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/PRIME%20Motherboards/PRIME.ps1")
Invoke-Expression $($PRIMEAM4.Content)

Get-AM4Storage

Write-Verbose "Processing: ASUS AM4 ProArt Motherboards" -Verbose
Write-Host

$ProArtAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/ProArt%20Motherboards/ProArt.ps1")
Invoke-Expression $($ProArtAM4.Content)

Get-AM4Storage

Write-Verbose "Processing: ASUS AM4 ROG - Republic of Gamers Motherboards" -Verbose
Write-Host

$ROGAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/ROG%20-%20Republic%20of%20Gamers%20Motherboards/ROG%20-%20Republic%20of%20Gamers.ps1")
Invoke-Expression $($ROGAM4.Content)

Get-AM4Storage

Write-Verbose "Processing: ASUS AM4 TUF Gaming Motherboards" -Verbose
Write-Host

$TUFGamingAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/TUF%20Gaming%20Motherboards/TUF%20Gaming.ps1")
Invoke-Expression $($TUFGamingAM4.Content)

Get-AM4Storage

Write-Verbose "Processing: ASUS AM4 Workstation Motherboards" -Verbose
Write-Host

$WorkstationAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/Workstation%20Motherboards/Workstation.ps1")
Invoke-Expression $($WorkstationAM4.Content)

Stop-Transcript

$AM4VirtualDrivers = "C:\Logs\OSDCloud\ASUS\AM4Virtual.log"

Start-Transcript -Path $AM4VirtualDrivers

Write-Verbose "Processing: VMWare ESXI Virtualization Drivers" -Verbose
Write-Host

Get-ESXILANDrivers

Write-Verbose "Processing: Hyper-V Virtualization Drivers" -Verbose
Write-Host

Write-Verbose "Processing: VMWare Workstation Professional Virtualization Drivers" -Verbose
Write-Host

Write-Verbose "Processing: Proxmox Virtual I/O Virtualization Drivers" -Verbose
Write-Host

Write-Verbose "Processing: Docker Virtualization Drivers" -Verbose
Write-Host

Stop-Transcript

$ASUSOSDCloudISOMain = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/CreateISO-Main.ps1")
Invoke-Expression $($ASUSOSDCloudISOMain.Content)
