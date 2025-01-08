$VMWareWSPROStorageLog = "C:\Logs\OSDCloud\VMWareWSPRO\StorageDrivers.log"

Start-Transcript -Path $VMWareWSPROStorageLog

Get-Date

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name OSD -Force

Install-Module -Name 7Zip4Powershell -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name 7Zip4Powershell -Force

#########################
# VMWareWSPRO Storage Drivers Path
##########################

$VMWareWSPROPath2 = "C:\OSDCloud\Drivers\Virtualization\VMWareWSPRO\Storage"
$VMWareWSPROStorageDriversURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20ESXI/ESXIDrivers.zip"
$VMWareWSPRODownloadPath2 = "C:\OSDCloud\Drivers\Virtualization\ESXI\Download\Storage"

Import-Module -Name OSD -Force

Write-Verbose "Processing: VMWare Workstation Professional Storage Drivers..." -Verbose

Save-WebFile -SourceUrl $VMWareWSPROStorageDriversURL -DestinationDirectory $VMWareWSPRODownloadPath2
Expand-7zip -ArchiveName "$ESXIDownloadPath\ESXIDrivers.zip" -TargetPath $VMWareWSPROPath2 -ErrorAction SilentlyContinue

Write-Host
Write-Verbose "Completed: VMWare Workstation Professional Storage Drivers..." -Verbose
Write-Host

Stop-Transcript
