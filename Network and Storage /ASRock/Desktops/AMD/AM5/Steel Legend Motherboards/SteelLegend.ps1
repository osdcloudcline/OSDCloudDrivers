$AM5SteelLegend = "C:\Logs\OSDCloud\ASRock\AM5\SteelLegend.log"
Start-Transcript -Path $AM5SteelLegend

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   AM5 Ethernet, WiFi and Storage Driver URLs
####################################################################################


$SteelLegendEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/Steel%20Legend%20Motherboards/Network%20and%20WiFi/ASRock-AM5-SteelLegend-EthernetDrivers.zip"
$SteelLegendWiFiURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/Steel%20Legend%20Motherboards/Network%20and%20WiFi/ASRock-AM5-SteelLegend-WiFiDrivers.zip"

$SteelLegendStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/Steel%20Legend%20Motherboards/Storage/ASRock-AM5-SteelLengend-RAID-NVMe-StorageDrivers.zip"


####################################################################################
#             AM5 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$SteelLegendDestination = "C:\Drivers\Motherboards\ASRock\AM5\SteelLegend"

####################################################################################
#             AM5 Ethernet,Bluetooth  WiFi and Storage Driver Extraction Destination
####################################################################################

$SteelLegendEthernet = "$SteelLegendDestination\Ethernet"
$SteelLegendBluetooth = "$SteelLegendDestination\Bluetooth"
$SteelLegendWiFi = "$SteelLegendDestination\WiFi"


$SteelLegendStorage = "$SteelLegendDestination\Storage"


Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASRock AM5 Steel Legend Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $SteelLegendEthernetURL -DestinationDirectory $SteelLegendDestination

Write-Verbose "Acquiring ASRock AM5 Steel Legend Motherboard WiFi Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $SteelLegendWiFiURL -DestinationDirectory $SteelLegendDestination

Write-Verbose "Acquiring ASRock AM5 Steel Legend Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $SteelLegendStorageURL -DestinationDirectory $SteelLegendDestination

Write-Verbose "ASRock AM4 Steel Legend Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$SteelLegendDestination\ASRock-AM5-SteelLegend-EthernetDrivers.zip" -TargetPath $SteelLegendEthernet   
Expand-7Zip -ArchiveFileName "$SteelLegendDestination\ASRock-AM5-SteelLegend-WiFiDrivers.zip" -TargetPath $SteelLegendWiFi   
Expand-7Zip -ArchiveFileName "$SteelLegendDestination\ASRock-AM5-SteelLengend-RAID-NVMe-StorageDrivers.zip" -TargetPath $SteelLegendStorage   


Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
