$VMWareWSPRONetLog = "C:\Logs\OSDCloud\VMWSPRO\NetworkDrivers.log"

Start-Transcript -Path $VMWareWSPRONetLog

Get-Date

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name OSD -Force

Install-Module -Name 7Zip4Powershell -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name 7Zip4Powershell -Force

#########################
# VMWareWSPRO Network Drivers  Path
##########################

$VMWareWSPROPath1 = "C:\OSDCloud\Drivers\Virtualization\VMWareWSPRO\Network"
$VMWareWSPRONetworkDriversURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20ESXI/ESXIDrivers.zip"
$VMWareWSPRODownloadPath1 = "C:\OSDCloud\Drivers\Virtualization\VMWareWSPRO\Download\Network"

Import-Module -Name OSD -Force

Write-Verbose "Processing: VMWare Workstation Professional Network Drivers..." -Verbose

Save-WebFile -SourceUrl $VMWareWSPRONetworkDriversURL -DestinationDirectory $VMWareWSPRODownloadPath1
Expand-7zip -ArchiveFileName "$VMWareWSPRODownloadPath1\ESXIDrivers.zip" -TargetPath $VMWareWSPROPath1 -ErrorAction SilentlyContinue

Write-Host
Write-Verbose "Completed: VMWare Workstation Professional Network Drivers..." -Verbose
Write-Host

Stop-Transcript
