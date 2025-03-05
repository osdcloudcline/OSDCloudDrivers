$Chipset1 = "AMD Ryzen CPU Chipset version 24.12.1"
$Chipset2 = "AMD Ryzen Master Software Version 2.14.1.3286"

Import-Module -Name OSD -Force

$ChipsetSource1 = "https://drivers.amd.com/drivers/amd-software-adrenalin-edition-25.2.1-win10-win11-feb2025-rdna.exe"
$ChipsetSource2 = "https://drivers.amd.com/drivers/amd-software-adrenalin-edition-25.2.1-win10-win11-feb2025-rdna.exe"
$ChipsetSource3 = "https://drivers.amd.com/drivers/amd-software-adrenalin-edition-25.2.1-win10-win11-feb2025-rdna.exe"
$ChipsetSource4 = "https://download.amd.com/Desktop/amd-ryzen-master-2-14-1-3286.exe"

$Destination = "C:\OSDCloud\drivers\Chipsets\RyzenCPUs"

Write-Verbose "Processing: $Chipset1..." -Verbose
Save-WebFile -SourceUrl $ChipsetSource1 -DestinationDirectory $Destination
Save-WebFile -SourceUrl $ChipsetSource2 -DestinationDirectory $Destination
Save-WebFile -SourceUrl $ChipsetSource3 -DestinationDirectory $Destination

Write-Verbose "Processing: $Chipset2..." -Verbose
Save-WebFile -SourceUrl $ChipsetSource2 -DestinationDirectory $Destination
