$Chipset1 = "AMD Ryzen CPU Chipset version 24.12.1"
$Chipset2 = "AMD Ryzen Master Software Version 2.14.1.3286"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

$ChipsetSource1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Chipset%20Drivers/Ryzen%20CPUs/AMD-AutoDetect-version-24.12.1.zip.001"
$ChipsetSource2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Chipset%20Drivers/Ryzen%20CPUs/AMD-AutoDetect-version-24.12.1.zip.002"
$ChipsetSource3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Chipset%20Drivers/Ryzen%20CPUs/AMD-AutoDetect-version-24.12.1.zip.003"
$ChipsetSource4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Chipset%20Drivers/Ryzen%20CPUs/AMD-Ryzen-Master.zip.001"
$ChipsetSource5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Chipset%20Drivers/Ryzen%20CPUs/AMD-Ryzen-Master.zip.002"
$ChipsetSource6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Chipset%20Drivers/Ryzen%20CPUs/AMD-Ryzen-Master.zip.003"
$ChipsetSource7 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Chipset%20Drivers/Ryzen%20CPUs/AMD-Ryzen-Master.zip.004"
$ChipsetSource8 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Chipset%20Drivers/Ryzen%20CPUs/AMD-Ryzen-Master.zip.005"
$ChipsetSource9 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Chipset%20Drivers/Ryzen%20CPUs/AMD-Ryzen-Master.zip.006"
$ChipsetSource10 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Chipset%20Drivers/Ryzen%20CPUs/AMD-Ryzen-Master.zip.007"

$Destination = "C:\OSDCloud\drivers\Chipsets\RyzenCPUs"

Write-Verbose "Processing: $Chipset1..." -Verbose
Write-Host
Save-WebFile -SourceUrl $ChipsetSource1 -DestinationDirectory $Destination
Save-WebFile -SourceUrl $ChipsetSource2 -DestinationDirectory $Destination
Save-WebFile -SourceUrl $ChipsetSource3 -DestinationDirectory $Destination

Write-Verbose "Processing: $Chipset2..." -Verbose
Write-Host
Save-WebFile -SourceUrl $ChipsetSource4 -DestinationDirectory $Destination
Save-WebFile -SourceUrl $ChipsetSource5 -DestinationDirectory $Destination
Save-WebFile -SourceUrl $ChipsetSource6 -DestinationDirectory $Destination
Save-WebFile -SourceUrl $ChipsetSource7 -DestinationDirectory $Destination
Save-WebFile -SourceUrl $ChipsetSource8 -DestinationDirectory $Destination
Save-WebFile -SourceUrl $ChipsetSource9 -DestinationDirectory $Destination
Save-WebFile -SourceUrl $ChipsetSource10 -DestinationDirectory $Destination

Write-Verbose "Processing: Expanding $Chipset1..." -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$Destination\AMD-AutoDetect-version-24.12.1.zip.001" -TargetPath $Destination -ErrorAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$Destination\AMD-AutoDetect-version-24.12.1.zip.002" -TargetPath $Destination -ErrorAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$Destination\AMD-AutoDetect-version-24.12.1.zip.003" -TargetPath $Destination -ErrorAction SilentlyContinue

Write-Verbose "Processing: Expanding $Chipset2..." -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$Destination\AMD-Ryzen-Master.zip.001" -TargetPath $Destination -ErrorAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$Destination\AMD-Ryzen-Master.zip.002" -TargetPath $Destination -ErrorAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$Destination\AMD-Ryzen-Master.zip.003" -TargetPath $Destination -ErrorAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$Destination\AMD-Ryzen-Master.zip.004" -TargetPath $Destination -ErrorAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$Destination\AMD-Ryzen-Master.zip.005" -TargetPath $Destination -ErrorAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$Destination\AMD-Ryzen-Master.zip.006" -TargetPath $Destination -ErrorAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$Destination\AMD-Ryzen-Master.zip.007" -TargetPath $Destination -ErrorAction SilentlyContinue
