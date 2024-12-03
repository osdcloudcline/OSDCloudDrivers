$Chipset1 = "AMD Chipset Drivers version 6.10.17.152"
$Chipset2 = "AMD RAID Software Version 2.20.19.037"

Import-Module -Name OSD -Force

$ChipsetSource1 = "https://drivers.amd.com/drivers/amd_chipset_software_6.10.17.152.exe"
$ChipsetSource2 = "https://drivers.amd.com/drivers/amd_raid_software_2.20.19.037.exe"

$Destination = "C:\OSDCloud\drivers\Chipsets\AM4\A320"

Write-Verbose "Processing: $Chipset1..." -Verbose
Save-WebFile -SourceUrl $ChipsetSource1 -DestinationDirectory $Destination

Write-Verbose "Processing: $Chipset2..." -Verbose
Save-WebFile -SourceUrl $ChipsetSource2 -DestinationDirectory $Destination
