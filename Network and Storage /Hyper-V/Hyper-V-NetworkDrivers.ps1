$HyperVLog = "C:\Logs\OSDCloud\Hyper-V\NetworkDrivers.log"

Start-Transcript -Path $HyperVLog

Get-Date

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name OSD -Force

Install-Module -Name 7Zip4Powershell -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name 7Zip4Powershell -Force

################################
# Hyper-V Network Drivers  Path
#################################

$HyperVPath = "C:\Drivers\Virtualization\HyperV\Network"
$HyperVNetworkDriversURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Hyper-V/HyperV-NetworkDrivers.zip"
$HyperVDownloadPath = "C:\Drivers\Virtualization\HyperV"

Import-Module -Name OSD -Force

Write-Verbose "Processing: Microsoft Hyper-V Network Drivers..." -Verbose

Save-WebFile -SourceUrl $HyperVNetworkDriversURL -DestinationDirectory $HyperVPath
Expand-7zip -ArchiveFileName "$HyperVDownloadPath\HyperV-NetworkDrivers.zip" -TargetPath $HyperVPath -ErrorAction SilentlyContinue

Write-Host
Write-Verbose "Completed: Microsoft Hyper-V Network Drivers..." -Verbose
Write-Host

Stop-Transcript
