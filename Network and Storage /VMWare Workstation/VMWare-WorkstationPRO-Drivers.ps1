$VMWareWSPRONetLog = "D:\OSDCloud Boot ISOs\Logs\OSDCloud\VMWareWSPRO\NetworkDrivers.log"

Start-Transcript -Path $VMWareWSPRONetLog

Get-Date

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

#########################
# VMWareWSPRO Network Drivers  Path
##########################

$VMWareWSPROPath1 = "C:\Drivers\Virtualization\VMWareWSPRO\Network"
$VMWareWSPRONetworkDriversURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20ESXI/ESXIDrivers.zip"
$VMWareWSPRODownloadPath1 = "C:\Drivers\Virtualization\VMWareWSPRO\Download\Network"

Write-Verbose "Processing: VMWare Workstation Professional Network Drivers..." -Verbose

Save-WebFile -SourceUrl $VMWareWSPRONetworkDriversURL -DestinationDirectory $VMWareWSPRODownloadPath1
Expand-7zip -ArchiveFileName "$VMWareWSPRODownloadPath1\ESXIDrivers.zip" -TargetPath $VMWareWSPROPath1 

Write-Host
Write-Verbose "Completed: VMWare Workstation Professional Network Drivers..." -Verbose
Write-Host

Stop-Transcript

$VMWareWSPROStorageLog = "C:\Logs\OSDCloud\VMWareWSPRO\StorageDrivers.log"

Start-Transcript -Path $VMWareWSPROStorageLog

Get-Date

#########################
# VMWareWSPRO Storage Drivers Path
##########################

$VMWareWSPROPath2 = "C:\Drivers\Virtualization\VMWareWSPRO\Storage"
$VMWareWSPROStorageDriversURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20ESXI/ESXIDrivers.zip"
$VMWareWSPRODownloadPath2 = "C:\Drivers\Virtualization\VMWareWSPRO\Download\Storage"

Import-Module -Name OSD -Force

Write-Verbose "Processing: VMWare Workstation Professional Storage Drivers..." -Verbose

Save-WebFile -SourceUrl $VMWareWSPROStorageDriversURL -DestinationDirectory $VMWareWSPRODownloadPath2
Expand-7zip -ArchiveFileName "$VMWareWSPRODownloadPath2\ESXIDrivers.zip" -TargetPath $VMWareWSPROPath2 
Write-Host
Write-Verbose "Completed: VMWare Workstation Professional Storage Drivers..." -Verbose
Write-Host

Stop-Transcript
