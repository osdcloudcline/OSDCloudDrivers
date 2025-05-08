$unRAIDNetLog = "C:\Logs\OSDCloud\unRAID\NetworkDrivers.log"

Start-Transcript -Path $unRAIDNetLog

Get-Date

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name OSD -Force

Install-Module -Name 7Zip4Powershell -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name 7Zip4Powershell -Force

#########################
# unRAID Network Drivers  Path
##########################

$unRAIDPath1 = "C:\Drivers\Virtualization\unRAID\Network1"
$unRAIDPath2 = "C:\Drivers\Virtualization\unRAID\Network2"
$unRAIDNetworkDriversURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/unRAID/unRAID-EthernetDrivers1.zip"
$unRAIDNetworkDriversURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/unRAID/unRAID-EthernetDrivers2.zip"
$unRAIDDownloadPath = "C:\Drivers\Virtualization\unRAID\Download\Network"


Write-Verbose "Processing: unRAID Network Drivers..." -Verbose

Save-WebFile -SourceUrl $unRAIDNetworkDriversURL1 -DestinationDirectory $unRAIDDownloadPath
Save-WebFile -SourceUrl $unRAIDNetworkDriversURL2 -DestinationDirectory $unRAIDDownloadPath

Expand-7zip -ArchiveFileName "$unRAIDDownloadPath\unRAID-EthernetDrivers1.zip" -TargetPath $unRAIDPath1 
Expand-7zip -ArchiveFileName "$unRAIDDownloadPath\unRAID-EthernetDrivers2.zip" -TargetPath $unRAIDPath2 

Write-Host
Write-Verbose "Completed: unRAID Network Drivers..." -Verbose
Write-Host

Stop-Transcript

$unRAIDStorageLog = "C:\Logs\OSDCloud\unRAID\StorageDrivers.log"

Start-Transcript -Path $unRAIDStorageLog

Get-Date

#########################
# unRAID Storage Drivers Path
##########################

$unRAIDPath3 = "C:\Drivers\Virtualization\unRAID\Storage1"
$unRAIDPath4 = "C:\Drivers\Virtualization\unRAID\FileSystem1"
$unRAIDPath5 = "C:\Drivers\Virtualization\unRAID\Storage2"
$unRAIDPath6 = "C:\Drivers\Virtualization\unRAID\FileSystem2"
$unRAIDStorageDriversURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/unRAID/unRAID-FileSystem-VirtualDrivers2.zip"
$unRAIDStorageDriversURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/unRAID/unRAID-FileSystem-VirtualDrivers1.zip"
$unRAIDStorageDriversURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/unRAID/unRAID-StorageDrivers1.zip"
$unRAIDStorageDriversURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/unRAID/unRAID-StorageDrivers2.zip"
$unRAIDDownloadPath2 = "C:\Drivers\Virtualization\unRAID\Download\Storage"

Import-Module -Name OSD -Force

Write-Verbose "Processing: unRAID Storage Drivers..." -Verbose

Save-WebFile -SourceUrl $unRAIDStorageDriversURL1 -DestinationDirectory $unRAIDDownloadPath2
Save-WebFile -SourceUrl $unRAIDStorageDriversURL2 -DestinationDirectory $unRAIDDownloadPath2
Save-WebFile -SourceUrl $unRAIDStorageDriversURL3 -DestinationDirectory $unRAIDDownloadPath2
Save-WebFile -SourceUrl $unRAIDStorageDriversURL4 -DestinationDirectory $unRAIDDownloadPath2

Expand-7zip -ArchiveFileName "$unRAIDDownloadPath2\unRAID-FileSystem-VirtualDrivers2.zip" -TargetPath $unRAIDPath6
Expand-7zip -ArchiveFileName "$unRAIDDownloadPath2\unRAID-FileSystem-VirtualDrivers1.zip" -TargetPath $unRAIDPath4
Expand-7zip -ArchiveFileName "$unRAIDDownloadPath2\unRAID-StorageDrivers1.zip" -TargetPath $unRAIDPath3
Expand-7zip -ArchiveFileName "$unRAIDDownloadPath2\unRAID-StorageDrivers2.zip" -TargetPath $unRAIDPath5

Write-Host
Write-Verbose "Completed: unRAID Storage Drivers..." -Verbose
Write-Host

Stop-Transcript
