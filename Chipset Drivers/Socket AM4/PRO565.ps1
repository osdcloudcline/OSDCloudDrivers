$Chipset1 = "AMD Chipset Drivers version 6.10.17.152"
$Chipset2 = "AMD Store MI"

Import-Module -Name OSD -Force

$ChipsetSource1 = "https://drivers.amd.com/drivers/amd_chipset_software_6.10.17.152.exe"
$ChipsetSource2 = "https://download.amd.com/software/AMD_StoreMI.zip"

$Destination = "C:\OSDCloud\drivers\Chipsets\AM4\PRO565"

Write-Verbose "Processing: $Chipset1..." -Verbose
Save-WebFile -SourceUrl $ChipsetSource1 -DestinationDirectory $Destination

Write-Verbose "Processing: $Chipset2..." -Verbose
Save-WebFile -SourceUrl $ChipsetSource2 -DestinationDirectory $Destination



Expand-Archive -Path "$Destination\AMD_StoreMI.zip" -DestinationPath "C:\OSDCloud\drivers\Chipsets\AM4\PRO565\StoreMI"
