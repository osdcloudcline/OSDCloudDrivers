$ProxmoxNetLog = "C:\Logs\OSDCloud\Proxmox\NetworkDrivers.log"

Start-Transcript -Path $ProxmoxNetLog

Get-Date

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name OSD -Force

Install-Module -Name 7Zip4Powershell -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name 7Zip4Powershell -Force

#########################
# Proxmox Network Drivers  Path
##########################

$ProxmoxPath1 = "C:\Drivers\Virtualization\Proxmox\Network\Windows11"
$ProxmoxPath2 = "C:\Drivers\Virtualization\Proxmox\Network\WindowsServer2025"
$ProxmoxNetworkDriversURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Proxmox/Proxmox-Wi11-Ethernet.zip"
$ProxmoxNetworkDriversURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Proxmox/Proxmox-WinServer2025-Ethernet.zip"
$ProxmoxDownloadPath = "C:\Drivers\Virtualization\Proxmox"

Write-Verbose "Processing: Proxmox Network Drivers..." -Verbose

Save-WebFile -SourceUrl $ProxmoxNetworkDriversURL1 -DestinationDirectory $ProxmoxDownloadPath
Expand-7zip -ArchiveFileName "$ProxmoxDownloadPath\Proxmox-Wi11-Ethernet.zip" -TargetPath $ProxmoxPath1 

Save-WebFile -SourceUrl $ProxmoxNetworkDriversURL2 -DestinationDirectory $ProxmoxDownloadPath
Expand-7zip -ArchiveFileName "$ProxmoxDownloadPath\Proxmox-WinServer2025-Ethernet.zip" -TargetPath $ProxmoxPath2 

Write-Host
Write-Verbose "Completed: Proxmox Network Drivers..." -Verbose
Write-Host

Stop-Transcript

$ProxmoxStorageLog = "C:\Logs\OSDCloud\Proxmox\StorageDrivers.log"

Start-Transcript -Path $ProxmoxStorageLog

Get-Date

#########################
# Proxmox Storage Drivers  Path
##########################

$ProxmoxPath3 = "C:\Drivers\Virtualization\Proxmox\Storage\Windows11"
$ProxmoxPath4 = "C:\Drivers\Virtualization\Proxmox\Storage\WindowsServer2025"
$ProxmoxStorageDriversURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Proxmox/Proxmox-Win11-StorageDrivers.zip"
$ProxmoxStorageDriversURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Proxmox/Proxmox-WinServer2025-StorageDrivers.zip"
$ProxmoxDownloadPath = "C:\Drivers\Virtualization\Proxmox"

Write-Verbose "Processing: Proxmox Storage Drivers..." -Verbose

Save-WebFile -SourceUrl $ProxmoxStorageDriversURL3 -DestinationDirectory $ProxmoxDownloadPath
Expand-7zip -ArchiveFileName "$ProxmoxDownloadPath\Proxmox-Win11-StorageDrivers.zip" -TargetPath $ProxmoxPath3 

Save-WebFile -SourceUrl $ProxmoxStorageDriversURL4 -DestinationDirectory $ProxmoxDownloadPath
Expand-7zip -ArchiveFileName "$ProxmoxDownloadPath\Proxmox-WinServer2025-StorageDrivers.zip" -TargetPath $ProxmoxPath4 

Write-Host
Write-Verbose "Completed: Proxmox Storage Drivers..." -Verbose
Write-Host

Stop-Transcript
