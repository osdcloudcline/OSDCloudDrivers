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

$ProxmoxPath1 = "C:\OSDCloud\Drivers\Virtualization\Proxmox\Network\Windows11"
$ProxmoxPath2 = "C:\OSDCloud\Drivers\Virtualization\Proxmox\Network\WindowsServer2025"
$ProxmoxNetworkDriversURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Proxmox/Proxmox-Wi11-Ethernet.zip"
$ProxmoxNetworkDriversURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Proxmox/Proxmox-WinServer2025-Ethernet.zip"
$ProxmoxDownloadPath = "C:\OSDCloud\Drivers\Virtualization\Proxmox"

Import-Module -Name OSD -Force

Write-Verbose "Processing: Proxmox Network Drivers..." -Verbose

Save-WebFile -SourceUrl $ProxmoxNetworkDriversURL1 -DestinationDirectory $ProxmoxDownloadPath
Expand-7zip -ArchiveName "$ProxmoxDownloadPath\Proxmox-Wi11-Ethernet.zip" -TargetPath $ProxmoxPath1 -ErrorAction SilentlyContinue

Save-WebFile -SourceUrl $ProxmoxNetworkDriversURL2 -DestinationDirectory $ProxmoxDownloadPath
Expand-7zip -ArchiveName "$ProxmoxDownloadPath\Proxmox-WinServer2025-Ethernet.zip" -TargetPath $ProxmoxPath2 -ErrorAction SilentlyContinue

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

$ProxmoxPath1 = "C:\OSDCloud\Drivers\Virtualization\Proxmox\Storage\Windows11"
$ProxmoxPath2 = "C:\OSDCloud\Drivers\Virtualization\Proxmox\Storage\WindowsServer2025"
$ProxmoxStorageDriversURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Proxmox/Proxmox-Win11-StorageDrivers.zip"
$ProxmoxStorageDriversURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Proxmox/Proxmox-WinServer2025-StorageDrivers.zip"
$ProxmoxDownloadPath = "C:\OSDCloud\Drivers\Virtualization\Proxmox"

Import-Module -Name OSD -Force

Write-Verbose "Processing: Proxmox Storage Drivers..." -Verbose

Save-WebFile -SourceUrl $ProxmoxStorageDriversURL1 -DestinationDirectory $ProxmoxDownloadPath
Expand-7zip -ArchiveName "$ProxmoxDownloadPath\Proxmox-Win11-StorageDrivers.zip" -TargetPath $ProxmoxPath1 -ErrorAction SilentlyContinue

Save-WebFile -SourceUrl $ProxmoxStorageDriversURL2 -DestinationDirectory $ProxmoxDownloadPath
Expand-7zip -ArchiveName "$ProxmoxDownloadPath\Proxmox-WinServer2025-StorageDrivers.zip" -TargetPath $ProxmoxPath2 -ErrorAction SilentlyContinue

Write-Host
Write-Verbose "Completed: Proxmox Storage Drivers..." -Verbose
Write-Host

Stop-Transcript
