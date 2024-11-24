$HyperVLog = "C:\Logs\OSDCloud\Hyper-V\NetworkDrivers.log"

Start-Transcript -Path $HyperVLog

Get-Date

#########################
# Hyper-V Network Drivers  Path
##########################

$HyperVPath = "C:\OSDCloud\Drivers\Virtualization\HyperV\Network"
$HyperVNetworkDriversURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Hyper-V/HyperV-NetworkDrivers.zip"
$HyperVDownloadPath = "C:\OSDCloud\Drivers\Virtualization\HyperV"

Import-Module -Name OSD -Force

Write-Verbose "Processing: Microsoft Hyper-V Network Drivers..." -Verbose

Save-WebFile -SourceUrl $HyperVNetworkDriversURL -DestinationDirectory $HyperVDownloadPath
Expand-7zip -ArchiveName "$HyperVDownloadPath\HyperV-NetworkDrivers.zip" -TargetPath $HyperVPath -ErrorAction SilentlyContinue

Write-Host
Write-Verbose "Completed: Microsoft Hyper-V Network Drivers..." -Verbose
Write-Host

Stop-Transcript
