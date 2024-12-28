$VMWareWSPRONetLog = "C:\Logs\OSDCloud\VMWSPRO\NetworkDrivers.log"

Start-Transcript -Path $VMWareWSPRONetLog

Get-Date

#########################
# VMWareWSPRO Network Drivers  Path
##########################

$VMWareWSPROPath1 = "C:\OSDCloud\Drivers\Virtualization\VMWareWSPRO\Network"
$VMWareWSPRONetworkDriversURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20ESXI/ESXIDrivers.zip"
$VMWareWSPRODownloadPath1 = "C:\OSDCloud\Drivers\Virtualization\VMWareWSPRO\Download\Network"

Import-Module -Name OSD -Force

Write-Verbose "Processing: VMWare Workstation Professional Network Drivers..." -Verbose

Save-WebFile -SourceUrl $VMWareWSPRONetworkDriversURL -DestinationDirectory $VMWareWSPRODownloadPath1
Expand-7zip -ArchiveName "$VMWareWSPRODownloadPath1\ESXIDrivers.zip" -TargetPath $VMWareWSPROPath1 -ErrorAction SilentlyContinue

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
