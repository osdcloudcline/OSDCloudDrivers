$ESXINetLog = "C:\Logs\OSDCloud\ESXI\NetworkDrivers.log"

Start-Transcript -Path $ESXINetLog

Get-Date

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name OSD -Force

Install-Module -Name 7Zip4Powershell -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name 7Zip4Powershell -Force

#########################
# ESXI Network Drivers  Path
##########################

$ESXIPath1 = "C:\OSDCloud\Drivers\Virtualization\ESXI\Network"
$ESXINetworkDriversURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20ESXI/ESXIDrivers.zip"
$ESXIDownloadPath1 = "C:\OSDCloud\Drivers\Virtualization\ESXI\Download\Network"

Import-Module -Name OSD -Force

Write-Verbose "Processing: VMWare ESXI Network Drivers..." -Verbose

Save-WebFile -SourceUrl $ESXINetworkDriversURL -DestinationDirectory $ESXIDownloadPath1
Expand-7zip -ArchiveFileName "$ESXIDownloadPath\ESXIDrivers.zip" -TargetPath $ESXIPath1 -ErrorAction SilentlyContinue

Write-Host
Write-Verbose "Completed: ESXI Network Drivers..." -Verbose
Write-Host

Stop-Transcript
