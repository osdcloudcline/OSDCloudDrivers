$HyperVLog = ""
Start-Transcript -Path $HyperVLog

Get-Date

#########################
# Hyper-V Network Drivers  Path
##########################

$AM4NVMePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Storage\NVMe"
$HyperVNetworkDriversURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Hyper-V/Hyper-V%20-%20NetworkDrivers.zip"
$HyperVDownloadPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Storage"

Import-Module -Name OSD -Force


Write-Verbose "Processing: Microsoft Hyper-V Network Drivers..." -Verbose

Save-WebFile -SourceUrl $HyperVNetworkDriversURL -DestinationDirectory $HyperVDownloadPath
Expand-7zip -ArchiveName "$NVMeDownloadPath\ASRock-AM4-RAID-NVMe-StorageDrivers.zip" -TargetPath $AM4NVMePath -ErrorAction SilentlyContinue

Write-Host
Write-Verbose "Completed: Microsoft Hyper-V Network Drivers..." -Verbose
Write-Host



Stop-Transcript
