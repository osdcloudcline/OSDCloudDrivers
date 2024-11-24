




#########################
# AM4 NVMe Storage Path
##########################

$AM4NVMePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Storage\NVMe"

###########################
# AM4 SATA Storage Path 
##########################

$AM4SATAPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Storage\SATA"

Import-Module -Name OSD -Force

Write-Verbose "Processing: ASRock AM4 NVMe Storage Drivers..." -Verbose

$NVMEURL = ""
$NVMEDownloadPath = ""
$NVMEExtractPath = ""

Save-WebFile -SourceUrl $NVMeURL -DestinationDirectory $NVMEDownloadPath
Extract-7zip 
