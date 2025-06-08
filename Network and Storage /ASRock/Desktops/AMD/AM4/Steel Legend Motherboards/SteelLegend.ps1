$AM4SteelLegend = "C:\Logs\OSDCloud\ASRock\AM4\SteelLegend.log"
Start-Transcript -Path $AM4SteelLegend

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"


Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   AM4 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$SteelLegendEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Steel%20Legend%20Motherboards/Ethernet%20and%20WiFi/ASRock-SteelLegend-Intel-LANDrivers.zip"
$SteelLegendEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Steel%20Legend%20Motherboards/Ethernet%20and%20WiFi/ASRock-SteelLegend-Realtek-LANDrivers1.zip"
$SteelLegendEthernetURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Steel%20Legend%20Motherboards/Ethernet%20and%20WiFi/ASRock-SteelLegend-Realtek-LANDrivers2.zip"
$SteelLegendEthernetURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Steel%20Legend%20Motherboards/Ethernet%20and%20WiFi/ASRock-SteelLegend-Realtek-LANDrivers3.zip"


$SteelLegendWiFiURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Steel%20Legend%20Motherboards/Ethernet%20and%20WiFi/ASRock-SteelLegend-Intel-WLANDrivers.zip"

$SteelLegendStorageURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Steel%20Legend%20Motherboards/Storage/ASRock-SteelLegend-NVMe-StorageDrivers.zip"
$SteelLegendStorageURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Steel%20Legend%20Motherboards/Storage/ASRock-SteelLegend-SATA-NVMe-StorageDrivers.zip"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$SteelLegendDestination = "C:\Drivers\Motherboards\ASRock\AM4\SteelLegend"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$SteelLegendEthernet1 = "$SteelLegendDestination\Ethernet1"
$SteelLegendEthernet2 = "$SteelLegendDestination\Ethernet2"
$SteelLegendEthernet3 = "$SteelLegendDestination\Ethernet3"
$SteelLegendEthernet4 = "$SteelLegendDestination\Ethernet4"


$SteelLegendWiFi = "$SteelLegendDestination\WiFi"

$SteelLegendStorage1 = "$SteelLegendDestination\Storage1"
$SteelLegendStorage2 = "$SteelLegendDestination\Storage2"

Write-Verbose "Acquiring ASRock AM4 Steel Legend Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $SteelLegendEthernetURL1 -DestinationDirectory $SteelLegendDestination
Save-WebFile -SourceUrl $SteelLegendEthernetURL2 -DestinationDirectory $SteelLegendDestination
Save-WebFile -SourceUrl $SteelLegendEthernetURL3 -DestinationDirectory $SteelLegendDestination
Save-WebFile -SourceUrl $SteelLegendEthernetURL4 -DestinationDirectory $SteelLegendDestination


Write-Host
Write-Verbose "Acquiring ASRock AM4 Steel Legend Motherboard WiFi Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $SteelLegendWiFiURL -DestinationDirectory $SteelLegendDestination

Write-Host

Write-Verbose "Acquiring ASRock AM4 Steel Legend Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $SteelLegendStorageURL1 -DestinationDirectory $SteelLegendDestination
Save-WebFile -SourceUrl $SteelLegendStorageURL2 -DestinationDirectory $SteelLegendDestination

Write-Verbose "ASRock AM4 Steel Legend Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$SteelLegendDestination\ASRock-SteelLegend-Intel-LANDrivers.zip" -TargetPath $SteelLegendEthernet1   
Expand-7Zip -ArchiveFileName "$SteelLegendDestination\ASRock-SteelLegend-Realtek-LANDrivers1.zip" -TargetPath $SteelLegendEthernet2   
Expand-7Zip -ArchiveFileName "$SteelLegendDestination\ASRock-SteelLegend-Realtek-LANDrivers2.zip" -TargetPath $SteelLegendEthernet3   
Expand-7Zip -ArchiveFileName "$SteelLegendDestinationn\ASRock-SteelLegend-Realtek-LANDrivers3.zip" -TargetPath $SteelLegendEthernet4   
Expand-7Zip -ArchiveFileName "$SteelLegendDestinationn\ASRock-SteelLegend-Intel-WLANDrivers.zip" -TargetPath $SteelLegendWiFi   
Expand-7Zip -ArchiveFileName "$SteelLegendDestination\ASRock-SteelLegend-NVMe-StorageDrivers.zip" -TargetPath $SteelLegendStorage1   
Expand-7Zip -ArchiveFileName "$SteelLegendDestination\ASRock-SteelLegend-SATA-NVMe-StorageDrivers.zip" -TargetPath $SteelLegendStorage2 

Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
