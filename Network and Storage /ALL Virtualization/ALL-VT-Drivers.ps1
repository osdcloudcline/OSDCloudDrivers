Write-Verbose "Processing: Microsoft Hyper-V Virtualization Drivers" -Verbose

$HyperVDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Hyper-V/Hyper-V-NetworkDrivers.ps1")
Invoke-Expression $($HyperVDrivers.Content)

Write-Verbose "Processing: Proxmox Virtualization Drivers..." -Verbose

$ProxmoxDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Proxmox/Proxmox.ps1")
Invoke-Expression $($ProxmoxDrivers.Content)

Write-Verbose "Processing: VMWare ESXI Virtualization Drivers" -Verbose

$ESXIDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20ESXI/ESXI-Drivers.ps1")
Invoke-Expression $($ESXIDrivers.Content)

Write-Verbose "Processing: VMWare Workstation Professional Virtualization Drivers..." -Verbose

$VMWareWSProDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20Workstation/VMWare-WorkstationPRO-Drivers.ps1")
Invoke-Expression $($VMWareWSProDrivers.Content)

Write-Verbose "Processing: unRAID NAS Virtualization Drivers..." -Verbose

$unRAIDDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/unRAID/unRAID.ps1")
Invoke-Expression $($unRAIDDrivers.Content)
