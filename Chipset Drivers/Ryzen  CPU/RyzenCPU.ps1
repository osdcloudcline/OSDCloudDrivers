$Chipset1 = "AMD Ryzen CPU Chipset version 24.10.1"
$Chipset2 = "AMD Ryzen Master Software Version 2.14.1.3286"

Import-Module -Name OSD -Force

$ChipsetSource1 = "https://drivers.amd.com/drivers/whql-amd-software-adrenalin-edition-24.10.1-win10-win11-oct-rdna.exe"
$ChipsetSource2 = "https://download.amd.com/Desktop/amd-ryzen-master-2-14-1-3286.exe"

$Destination = "C:\OSDCloud\drivers\Chipsets\RyzenCPUs"

Write-Verbose "Processing: $Chipset1..." -Verbose
Save-WebFile -SourceUrl $ChipsetSource1 -DestinationDirectory $Destination

Write-Verbose "Processing: $Chipset2..." -Verbose
Save-WebFile -SourceUrl $ChipsetSource2 -DestinationDirectory $Destination
