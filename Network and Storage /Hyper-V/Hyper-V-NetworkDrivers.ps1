$HyperVLog = ""
Start-Transcript -Path $HyperVLog

Get-Date

#########################
# Hyper-V Network Drivers  Path
##########################

$AM4NVMePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Storage\NVMe"
$NVMEURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Storage/ASRock-AM4-RAID-NVMe-StorageDrivers.zip"
$NVMEDownloadPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Storage"

Import-Module -Name OSD -Force


Write-Verbose "Processing: Microsoft Hyper-V Network Drivers..." -Verbose

Save-WebFile -SourceUrl $NVMeURL -DestinationDirectory $NVMEDownloadPath
Expand-7zip -ArchiveName "$NVMeDownloadPath\ASRock-AM4-RAID-NVMe-StorageDrivers.zip" -TargetPath $AM4NVMePath -ErrorAction SilentlyContinue

Write-Host
Write-Verbose "Completed: Microsoft Hyper-V Network Drivers..." -Verbose
Write-Host



Stop-Transcript
