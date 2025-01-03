$ESXINetLog = "C:\Logs\OSDCloud\ESXI\NetworkDrivers.log"

Start-Transcript -Path $ESXINetLog

Get-Date

#########################
# ESXI Network Drivers  Path
##########################

$ESXIPath1 = "C:\OSDCloud\Drivers\Virtualization\ESXI\Network"
$ESXINetworkDriversURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20ESXI/ESXIDrivers.zip"
$ESXIDownloadPath1 = "C:\OSDCloud\Drivers\Virtualization\ESXI\Download\Network"

Import-Module -Name OSD -Force

Write-Verbose "Processing: VMWare ESXI Network Drivers..." -Verbose

Save-WebFile -SourceUrl $ESXINetworkDriversURL -DestinationDirectory $ESXIDownloadPath1
Expand-7zip -ArchiveName "$ESXIDownloadPath\ESXIDrivers.zip" -TargetPath $ESXIPath1 -ErrorAction SilentlyContinue

Write-Host
Write-Verbose "Completed: ESXI Network Drivers..." -Verbose
Write-Host

Stop-Transcript

$ESXIStorageLog = "C:\Logs\OSDCloud\ESXI\StorageDrivers.log"

Start-Transcript -Path $ESXIStorageLog

Get-Date

#########################
# ESXI Storage Drivers Path
##########################

$ESXIPath2 = "C:\OSDCloud\Drivers\Virtualization\ESXI\Storage"
$ESXIStorageDriversURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20ESXI/ESXIDrivers.zip"
$ESXIDownloadPath2 = "C:\OSDCloud\Drivers\Virtualization\ESXI\Download\Storage"

Import-Module -Name OSD -Force

Write-Verbose "Processing: VMWare ESXI Storage Drivers..." -Verbose

Save-WebFile -SourceUrl $ESXIStorageDriversURL -DestinationDirectory $ESXIDownloadPath2
Expand-7zip -ArchiveName "$ESXIDownloadPath\ESXIDrivers.zip" -TargetPath $ESXIPath2 -ErrorAction SilentlyContinue

Write-Host
Write-Verbose "Completed: ESXI Storage Drivers..." -Verbose
Write-Host

Stop-Transcript
