$AM4Storage = "C:\Logs\OSDCloud\ASUS\AM4StorageDownload.log"

Start-Transcript -Path $AM4Storage

Get-Date

Write-Verbose "Processing: ASUS AMD Socket AM4 Motherboard Storage Drivers" -Verbose
Write-Host

Import-Module -Name OSD -Force

$Storage1 = ""
$Storage2 = ""

$StorageDestination = ""

Write-Verbose "Processing: ASUS AMD Socket AM4 Motherboard NVMe Storage Drivers" -Verbose
Write-Host

Save-WebFile -SourceUrl $Storage1 -DestinationDirectory $StorageDestination

Write-Verbose "Processing: ASUS AMD Socket AM4 Motherboard SATA Storage Drivers" -Verbose
Write-Host

Save-WebFile -SourceUrl $Storage2 -DestinationDirectory $StorageDestination
