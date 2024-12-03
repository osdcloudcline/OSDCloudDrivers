$Chipset1 = "AMD Chipset Drivers version 6.10.17.152"
$Chipset2 = "AMD RAID Software Version 6.10.09.200"
$Chipset3 = "AMD RAID Driver Version 9.3.3.00117"


Import-Module -Name OSD -Force

$ChipsetSource1 = "https://drivers.amd.com/drivers/amd_chipset_software_6.10.17.152.exe"
$ChipsetSource2 = "https://drivers.amd.com/drivers/amd_raid_software_6.10.09.200.zip"
$ChipsetSource3 = "https://drivers.amd.com/drivers/raid_windows_driver_933_00117.zip"


$Destination = "C:\OSDCloud\drivers\Chipsets\AM4\ASRock\X870"

Write-Verbose "Processing: $Chipset1..." -Verbose
Save-WebFile -SourceUrl $ChipsetSource1 -DestinationDirectory $Destination

Write-Verbose "Processing: $Chipset2..." -Verbose
Save-WebFile -SourceUrl $ChipsetSource2 -DestinationDirectory $Destination
Expand-Archive -Path "$Destination\amd_raid_software_6.10.09.200.zip" -DestinationPath "C:\OSDCloud\drivers\Chipsets\AM5\ASRock\X870\RAID1"

Write-Verbose "Processing: $Chipset3..." -Verbose
Save-WebFile -SourceUrl $ChipsetSource3 -DestinationDirectory $Destination
Expand-Archive -Path "$Destination\raid_windows_driver_933_00117.zip" -DestinationPath "C:\OSDCloud\drivers\Chipsets\AM5\ASRock\X870\RAID2"


