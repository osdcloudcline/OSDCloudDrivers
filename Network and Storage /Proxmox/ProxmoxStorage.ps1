
$ProxmoxStorageLog = "C:\Logs\OSDCloud\Proxmox\StorageDrivers.log"

Start-Transcript -Path $ProxmoxStorageLog

Get-Date

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name OSD -Force

Install-Module -Name 7Zip4Powershell -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name 7Zip4Powershell -Force

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
