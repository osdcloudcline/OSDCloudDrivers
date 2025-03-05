$Chipset1 = "AMD Ryzen CPU Chipset version 24.12.1"
$Chipset2 = "AMD Ryzen Master Software Version 2.14.1.3286"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

$ChipsetSource1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Chipset%20Drivers/Ryzen%20CPUs/AMD-AutoDetect-version-24.12.1.zip.001"
$ChipsetSource2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Chipset%20Drivers/Ryzen%20CPUs/AMD-AutoDetect-version-24.12.1.zip.002"
$ChipsetSource3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Chipset%20Drivers/Ryzen%20CPUs/AMD-AutoDetect-version-24.12.1.zip.003"
$ChipsetSource4 = "https://download.amd.com/Desktop/amd-ryzen-master-2-14-1-3286.exe"

$Destination = "C:\OSDCloud\drivers\Chipsets\RyzenCPUs"

Write-Verbose "Processing: $Chipset1..." -Verbose
Save-WebFile -SourceUrl $ChipsetSource1 -DestinationDirectory $Destination
Save-WebFile -SourceUrl $ChipsetSource2 -DestinationDirectory $Destination
Save-WebFile -SourceUrl $ChipsetSource3 -DestinationDirectory $Destination

Write-Verbose "Processing: $Chipset2..." -Verbose
Save-WebFile -SourceUrl $ChipsetSource2 -DestinationDirectory $Destination
