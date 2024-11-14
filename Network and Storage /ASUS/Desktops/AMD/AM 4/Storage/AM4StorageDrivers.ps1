$AM4Storage = "C:\Logs\OSDCloud\ASUS\AM4StorageDownload.log"

Start-Transcript -Path $AM4Storage

Get-Date

Write-Verbose "Processing: ASUS AMD Socket AM4 Motherboard Storage Drivers" -Verbose
Write-Host

Import-Module -Name OSD -Force

$Storage1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/Storage/AM4-RAID-StorageDrivers-NVMe.zip"
$Storage2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/Storage/AM4-RAID-StorageDrivers-SATA.zip"

$StorageDestination = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage"

Write-Verbose "Processing: ASUS AMD Socket AM4 Motherboard NVMe Storage Drivers" -Verbose
Write-Host

Save-WebFile -SourceUrl $Storage1 -DestinationDirectory $StorageDestination

Write-Verbose "Processing: ASUS AMD Socket AM4 Motherboard SATA Storage Drivers" -Verbose
Write-Host

Save-WebFile -SourceUrl $Storage2 -DestinationDirectory $StorageDestination

Write-Verbose "Processing: Extracting ASUS AMD Socket AM4 Motherboard NVMe Storage Drivers" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$StorageDestination\AM4-RAID-StorageDrivers-NVMe.zip"

Write-Verbose "Processing: Extracting ASUS AMD Socket AM4 Motherboard SATA Storage Drivers" -Verbose
Write-Host


