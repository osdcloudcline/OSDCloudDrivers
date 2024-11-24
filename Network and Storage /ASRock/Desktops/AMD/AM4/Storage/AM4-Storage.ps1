


#########################
# AM4 NVMe Storage Path
##########################

$AM4NVMePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Storage\NVMe"
$NVMEURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Storage/ASRock-AM4-RAID-NVMe-StorageDrivers.zip"
$NVMEDownloadPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Storage"


###########################
# AM4 SATA Storage Path 
##########################

$AM4SATAPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Storage\SATA"
$SATAURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Storage/ASRock-AM4-RAID-SATA-StorageDrivers.zip"
$SATADownloadPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Storage"

Import-Module -Name OSD -Force


Write-Verbose "Processing: ASRock AM4 NVMe Storage Drivers..." -Verbose

Save-WebFile -SourceUrl $NVMeURL -DestinationDirectory $NVMEDownloadPath
Expand-7zip 

Write-Host
Write-Verbose "Completed: ASRock AM4 NVMe Storage Drivers..." -Verbose
Write-Host

Write-Verbose "Processing: ASRock AM4 SATA Storage Drivers..." -Verbose

Save-WebFile -SourceUrl $SATAURL -DestinationDirectory $SATADownloadPath
Expand-7zip 
