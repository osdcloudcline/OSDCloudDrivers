Function Get-AM4Storage(){

$AM4Storage1 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\Storage\NVMe\rcbottom.cat" -IsValid)
$AM4Storage2 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\Storage\NVMe\rcbottom.inf" -IsValid)
$AM4Storage3 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\Storage\NVMe\rcbottom.sys" -IsValid)
$AM4Storage4 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\Storage\NVMe\rccfg.cat" -IsValid)
$AM4Storage5 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\Storage\NVMe\rccfg.inf" -IsValid)
$AM4Storage6 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\Storage\NVMe\rccfg.sys" -IsValid)
$AM4Storage7 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\Storage\NVMe\rcraid.sys" -IsValid)
$AM4Storage8 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\Storage\NVMe\rcraid.cat" -IsValid)
$AM4Storage9 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\Storage\NVMe\rcraid.inf" -IsValid)
$AM4Storage10 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\Storage\SATA\rcbottom.cat" -IsValid)
$AM4Storage11 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\Storage\SATA\rcbottom.inf" -IsValid)
$AM4Storage12 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\Storage\SATA\rcbottom.sys" -IsValid)
$AM4Storage13 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\Storage\SATA\rccfg.cat" -IsValid)
$AM4Storage14 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\Storage\SATA\rccfg.inf" -IsValid)
$AM4Storage15 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\Storage\SATA\rccfg.sys" -IsValid)
$AM4Storage16 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\Storage\SATA\rcraid.sys" -IsValid)
$AM4Storage17 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\Storage\SATA\rcraid.cat" -IsValid)
$AM4Storage18 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\Storage\SATA\rcraid.inf" -IsValid)

If(($AM4Storage1 -eq $true) -and ($AM4Storage2 -eq $true) -and ($AM4Storage3 -eq $true) -and ($AM4Storage4 -eq $true) -and ($AM4Storage5 -eq $true) -and ($AM4Storage6 -eq $true) -and ($AM4Storage7 -eq $true) -and ($AM4Storage8 -eq $true) -and ($AM4Storage9 -eq $true) -and ($AM4Storage10 -eq $true) -and ($AM4Storage11 -eq $true) -and ($AM4Storage12 -eq $true) -and ($AM4Storage13 -eq $true) -and ($AM4Storage14 -eq $true) -and ($AM4Storage15 -eq $true) -and ($AM4Storage16 -eq $true) -and ($AM4Storage17 -eq $true) -and ($AM4Storage18 -eq $true)){
Write-Verbose "Gigabyte Socket AM4 Storage drivers have been downloaded and expanded" -Verbose
}
ElseIf (($AM4Storage1 -eq $false) -and ($AM4Storage2 -eq $false) -and ($AM4Storage3 -eq $false) -and ($AM4Storage4 -eq $false) -and ($AM4Storage5 -eq $false) -and ($AM4Storage6 -eq $false) -and ($AM4Storage7 -eq $false) -and ($AM4Storage8 -eq $false) -and ($AM4Storage9 -eq $false) -and ($AM4Storage10 -eq $false) -and ($AM4Storage11 -eq $false) -and ($AM4Storage12 -eq $false) -and ($AM4Storage13 -eq $false) -and ($AM4Storage14 -eq $false) -and ($AM4Storage15 -eq $false) -and ($AM4Storage16 -eq $false) -and ($AM4Storage17 -eq $false) -and ($AM4Storage18 -eq $false)){
$AM4Storage = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Storage/AM4StorageDrivers.ps1")
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


