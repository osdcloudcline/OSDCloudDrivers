


#########################
# AM4 NVMe Storage Path
##########################

$AM4NVMePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Storage\NVMe"
$NVMEURL = ""
$NVMEDownloadPath = ""


###########################
# AM4 SATA Storage Path 
##########################

$AM4SATAPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Storage\SATA"
$SATAURL = ""
$SATADownloadPath = ""

Import-Module -Name OSD -Force


Write-Verbose "Processing: ASRock AM4 NVMe Storage Drivers..." -Verbose

Save-WebFile -SourceUrl $NVMeURL -DestinationDirectory $NVMEDownloadPath
Extract-7zip 

Write-Host
Write-Verbose "Completed: ASRock AM4 NVMe Storage Drivers..." -Verbose
Write-Host

Write-Verbose "Processing: ASRock AM4 SATA Storage Drivers..." -Verbose

Save-WebFile -SourceUrl $SATAURL -DestinationDirectory $SATADownloadPath
Extract-7zip 
