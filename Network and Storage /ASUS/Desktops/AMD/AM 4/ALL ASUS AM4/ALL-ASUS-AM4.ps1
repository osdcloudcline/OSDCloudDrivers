Function Get-AM4Storage(){

$AM4Storage1 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\NVMe\rcbottom.cat" -IsValid)
$AM4Storage2 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\NVMe\rcbottom.inf" -IsValid)
$AM4Storage3 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\NVMe\rcbottom.sys" -IsValid)
$AM4Storage4 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\NVMe\rccfg.cat" -IsValid)
$AM4Storage5 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\NVMe\rccfg.inf" -IsValid)
$AM4Storage6 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\NVMe\rccfg.sys" -IsValid)
$AM4Storage7 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\NVMe\rcraid.sys" -IsValid)
$AM4Storage8 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\NVMe\rcraid.cat" -IsValid)
$AM4Storage9 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\NVMe\rcraid.inf" -IsValid)
$AM4Storage10 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\SATA\rcbottom.cat" -IsValid)
$AM4Storage11 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\SATA\rcbottom.inf" -IsValid)
$AM4Storage12 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\SATA\rcbottom.sys" -IsValid)
$AM4Storage13 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\SATA\rccfg.cat" -IsValid)
$AM4Storage14 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\SATA\rccfg.inf" -IsValid)
$AM4Storage15 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\SATA\rccfg.sys" -IsValid)
$AM4Storage16 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\SATA\rcraid.sys" -IsValid)
$AM4Storage17 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\SATA\rcraid.cat" -IsValid)
$AM4Storage18 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\SATA\rcraid.inf" -IsValid)

If(($AM4Storage1 -eq $true) -and ($AM4Storage2 -eq $true) -and ($AM4Storage3 -eq $true) -and ($AM4Storage4 -eq $true) -and ($AM4Storage5 -eq $true) -and ($AM4Storage6 -eq $true) -and ($AM4Storage7 -eq $true) -and ($AM4Storage8 -eq $true) -and ($AM4Storage9 -eq $true) -and ($AM4Storage10 -eq $true) -and ($AM4Storage11 -eq $true) -and ($AM4Storage12 -eq $true) -and ($AM4Storage13 -eq $true) -and ($AM4Storage14 -eq $true) -and ($AM4Storage15 -eq $true) -and ($AM4Storage16 -eq $true) -and ($AM4Storage17 -eq $true) -and ($AM4Storage18 -eq $true)){
Write-Verbose "ASUS Socket AM4 Storage drivers have been downloaded and expanded" -Verbose
}
ElseIf (($AM4Storage1 -eq $false) -and ($AM4Storage2 -eq $false) -and ($AM4Storage3 -eq $false) -and ($AM4Storage4 -eq $false) -and ($AM4Storage5 -eq $false) -and ($AM4Storage6 -eq $false) -and ($AM4Storage7 -eq $false) -and ($AM4Storage8 -eq $false) -and ($AM4Storage9 -eq $false) -and ($AM4Storage10 -eq $false) -and ($AM4Storage11 -eq $false) -and ($AM4Storage12 -eq $false) -and ($AM4Storage13 -eq $false) -and ($AM4Storage14 -eq $false) -and ($AM4Storage15 -eq $false) -and ($AM4Storage16 -eq $false) -and ($AM4Storage17 -eq $false) -and ($AM4Storage18 -eq $false)){
$AM4Storage = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/Storage/AM4StorageDrivers.ps1")
Invoke-Expression $($AM4Storage.Content)
}
}

Function Get-ESXILANDrivers(){

$ESXILANDrivers1 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Network\vmxnet3.cat" -IsValid)
$ESXILANDrivers2 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Network\vmxnet3.inf" -IsValid)
$ESXILANDrivers3 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Network\vmxnet3.sys" -IsValid)
$ESXILANDrivers4 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Network\vmxnet3ver.dll" -IsValid)

If(($ESXILANDrivers1 -eq $true) -and($ESXILANDrivers2 -eq $true) -and($ESXILANDrivers3 -eq $true) -and ($ESXILANDrivers4 -eq $true)){
Write-Verbose "VMWare ESXI LAN Drivers have been downloaded and expanded" -Verbose
}
ElseIf(($ESXILANDrivers1 -eq $false) -and($ESXILANDrivers2 -eq $false) -and($ESXILANDrivers3 -eq $false) -and($ESXILANDrivers4 -eq $false)){
$ESXILANDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20ESXI/ESXILANDrivers.ps1")
Invoke-Expression $(ESXILANDrivers.Content)
}
}

Function Get-ESXIStorageDrivers(){

$ESXIStorageDrivers1 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Storage\pvscsi.cat" -IsValid)
$ESXIStorageDrivers2 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Storage\pvscsi.inf" -IsValid)
$ESXIStorageDrivers3 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Storage\pvscsi.sys" -IsValid)
$ESXIStorageDrivers4 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Storage\pvscsiver.dll" -IsValid)
$ESXIStorageDrivers5 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Storage\vmrawdisk.cat" -IsValid)
$ESXIStorageDrivers6 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Storage\vmrawdisk.inf" -IsValid)
$ESXIStorageDrivers7 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Storage\vmrawdisk.sys" -IsValid)
$ESXIStorageDrivers8 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Storage\vmrawdiskver.dll" -IsValid)

If(($ESXIStorageDrivers1 -eq $true) -and ($ESXIStorageDrivers2 -eq $true) -and ($ESXIStorageDrivers3 -eq $true) -and ($ESXIStorageDrivers4 -eq $true) -and ($ESXIStorageDrivers5 -eq $true) -and ($ESXIStorageDrivers6 -eq $true) -and ($ESXIStorageDrivers7 -eq $true) -and ($ESXIStorageDrivers8 -eq $true)){
Write-Verbose "VMWare ESXI Storage Drivers have been downloaded and expanded" -Verbose
}
ElseIf(($ESXIStorageDrivers1 -eq $false) -and ($ESXIStorageDrivers2 -eq $false) -and ($ESXIStorageDrivers3 -eq $false) -and ($ESXIStorageDrivers4 -eq $false) -and ($ESXIStorageDrivers5 -eq $false) -and ($ESXIStorageDrivers6 -eq $false) -and ($ESXIStorageDrivers7 -eq $false) -and ($ESXIStorageDrivers8 -eq $false)){
$ESXIStorageDrivers = Invoke-WebRequest("")
Invoke-Expression $($ESXIStorageDrivers.Content)
}
}

Function Get-HyperVDrivers(){

}

Function Get-VMWareWorkstationLANDrivers(){
$VMWareWorkstationLANDrivers1 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Network\vmnet3.cat" -IsValid)
$VMWareWorkstationLANDrivers2 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Network\vmnet3.inf" -IsValid)
$VMWareWorkstationLANDrivers3 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Network\vmnet3.sys" -IsValid)
$VMWareWorkstationLANDrivers4 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Network\vmnet3ver.dll" -IsValid)
$VMWareWorkstationLANDrivers5 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Network\vnetWFP.cat" -IsValid)
$VMWareWorkstationLANDrivers6 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Network\vnetWFP.inf" -IsValid)
$VMWareWorkstationLANDrivers7 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Network\vnetWFP.sys" -IsValid)
$VMWareWorkstationLANDrivers8 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Network\vnetWFPver.dll" -IsValid)

If(($VMWareWorkstationLANDrivers1 -eq $true) -and ($VMWareWorkstationLANDrivers2 -eq $true) -and ($VMWareWorkstationLANDrivers3 -eq $true) -and ($VMWareWorkstationLANDrivers4 -eq $true) -and ($VMWareWorkstationLANDrivers5 -eq $true) -and ($VMWareWorkstationLANDrivers6 -eq $true) -and ($VMWareWorkstationLANDrivers7 -eq $true) -and ($VMWareWorkstationLANDrivers8 -eq $true)){
Write-Verbose "VMWare Workstation Network Drivers have been downloaded and expanded" -Verbose
}
ElseIf(($VMWareWorkstationLANDrivers1 -eq $false) -and ($VMWareWorkstationLANDrivers2 -eq $false) -and ($VMWareWorkstationLANDrivers3 -eq $false) -and ($VMWareWorkstationLANDrivers4 -eq $false) -and ($VMWareWorkstationLANDrivers5 -eq $false) -and ($VMWareWorkstationLANDrivers6 -eq $false) -and ($VMWareWorkstationLANDrivers7 -eq $false) -and ($VMWareWorkstationLANDrivers8 -eq $false)){
$VMWareWorkstationLANDrivers = Invoke-WebRequest("")
Invoke-Expression $($VMWareWorkstationLANDrivers.Content)
}
}

Function Get-VMWareWorkstationStorageDrivers(){
$VMWareWorkstationStorageDrivers1 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Storage\pvscsi.cat" -IsValid)
$VMWareWorkstationStorageDrivers2 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Storage\pvscsi.inf" -IsValid)
$VMWareWorkstationStorageDrivers3 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Storage\pvscsi.sys" -IsValid)
$VMWareWorkstationStorageDrivers4 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Storage\pvscsiver.dll" -IsValid)
$VMWareWorkstationStorageDrivers5 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Storage\vmrawdisk.cat" -IsValid)
$VMWareWorkstationStorageDrivers6 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Storage\vmrawdisk.inf" -IsValid)
$VMWareWorkstationStorageDrivers7 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Storage\vmrawdisk.sys" -IsValid)
$VMWareWorkstationStorageDrivers8 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Storage\vmrawdiskver.dll" -IsValid)

If(($VMWareWorkstationStorageDrivers1 -eq $true) -and ($VMWareWorkstationStorageDrivers2 -eq $true) -and ($VMWareWorkstationStorageDrivers3 -eq $true) -and ($VMWareWorkstationStorageDrivers4 -eq $true) -and ($VMWareWorkstationStorageDrivers5 -eq $true) -and ($VMWareWorkstationStorageDrivers6 -eq $true) -and ($VMWareWorkstationStorageDrivers7 -eq $true) -and ($VMWareWorkstationStorageDrivers8 -eq $true)){
Write-Verbose "VMWare Workstation Storage Drivers have been downloaded and expanded" -Verbose
}
ElseIf(($VMWareWorkstationStorageDrivers1 -eq $false) -and ($VMWareWorkstationStorageDrivers2 -eq $false) -and ($VMWareWorkstationStorageDrivers3 -eq $false) -and ($VMWareWorkstationStorageDrivers4 -eq $false) -and ($VMWareWorkstationStorageDrivers5 -eq $false) -and ($VMWareWorkstationStorageDrivers6 -eq $false) -and ($VMWareWorkstationStorageDrivers7 -eq $false) -and ($VMWareWorkstationStorageDrivers8 -eq $false)){
$VMWareWorkstationStorageDrivers = Invoke-WebRequest("")
Invoke-Expression $($VMWareWorkstationStorageDrivers.Content)
}
}

Function Get-ProxmoxLANDrivers(){
$ProxmoxLANDrivers1 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\Proxmox\Network\netkvm.cat" -IsValid)
$ProxmoxLANDrivers2 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\Proxmox\Network\netkvm.inf" -IsValid)
$ProxmoxLANDrivers3 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\Proxmox\Network\netkvm.sys" -IsValid)

If(($ProxmoxLANDrivers1 -eq $true) -and ($ProxmoxLANDrivers2 -eq $true) -and ($ProxmoxLANDrivers3 -eq $true)){
Write-Verbose "Proxmox Virtualization I/O Network Drivers have been downloaded and expanded" -Verbose
}
ElseIf(($ProxmoxLANDrivers1 -eq $false) -and ($ProxmoxLANDrivers2 -eq $false) -and ($ProxmoxLANDrivers3 -eq $false)){
$ProxmoxLANDrivers = Invoke-WebRequest("")
Invoke-Expression $($ProxmoxLANDrivers.Content)
}
}

Function Get-ProxmoxStorageDrivers(){
$ProxmoxStorageDrivers1 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\Proxmox\Storage\viostor.cat" -IsValid)
$ProxmoxStorageDrivers2 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\Proxmox\Storage\viostor.inf" -IsValid)
$ProxmoxStorageDrivers3 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\Proxmox\Storage\viostor.sys" -IsValid)

If(($ProxmoxStorageDrivers1 -eq $true) -and ($ProxmoxStorageDrivers2 -eq $true) -and ($ProxmoxStorageDrivers3 -eq $true)){
Write-Verbose "Proxmox Virtualization I/O Storage Drivers have been downloaded and expanded" -Verbose
}
ElseIf(($ProxmoxStorageDrivers1 -eq $false) -and ($ProxmoxStorageDrivers2 -eq $false) -and ($ProxmoxStorageDrivers3 -eq $false)){
$ProxmoxStorageDrivers = Invoke-WebRequest("")
Invoke-Expression $($ProxmoxStorageDrivers.Content)
}
}

Function Get-DockerDrivers(){

}

$AM4VirtualDrivers = "C:\Logs\OSDCloud\ASUS\AM4Virtual.log"

Start-Transcript -Path $AM4VirtualDrivers

Write-Verbose "Processing: VMWare ESXI Virtualization Network Drivers" -Verbose
Write-Host

Get-ESXILANDrivers

Write-Verbose "Processing: VMWare ESXI Virtualization Storage Drivers" -Verbose
Write-Host

Get-ESXIStorageDrivers

Write-Verbose "Processing: Hyper-V Virtualization Drivers" -Verbose
Write-Host

Get-HyperVDrivers

Write-Verbose "Processing: VMWare Workstation Professional Virtualization Drivers" -Verbose
Write-Host

Get-VMWareWorkstationDrivers

Write-Verbose "Processing: Proxmox Virtual I/O Network Virtualization Drivers" -Verbose
Write-Host

Get-ProxmoxLANDrivers

Write-Verbose "Processing: Proxmox Virtual I/O Storage Virtualization Drivers" -Verbose
Write-Host

Get-ProxmoxStorageDrivers

Write-Verbose "Processing: Docker Virtualization Drivers" -Verbose
Write-Host

Get-DockerDrivers

Stop-Transcript

$AM4Storage = "C:\Logs\OSDCloud\ASUS\AM4Storage.log"

Start-Transcript -Path $AM4Storage

Get-Date

Write-Verbose "Processing: ASUS AMD Socket AM4 Motherboard Storage Drivers" -Verbose
Write-Host

Get-AM4Storage

Stop-Transcript

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

$ASUSOSDCloudISOMain = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/CreateISO-Main.ps1")
Invoke-Expression $($ASUSOSDCloudISOMain.Content)
