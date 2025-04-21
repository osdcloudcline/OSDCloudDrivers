$LGA1851SteelLegend = "C:\Logs\OSDCloud\ASRock\LGA1851\SteelLegend.log"
Start-Transcript -Path $LGA1851SteelLegend

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#          LGA 1851 Ethernet, Bluetooth, WLAN and Storage Driver URLs
####################################################################################

$SteelLegendEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/Steel%20Legend%20Motherboards/Ethernet/ASRock-LGA1851-SteelLegend-Realtek-EthernetDrivers.zip"

$SteelLegendStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/Steel%20Legend%20Motherboards/Storage/ASRock-LGA1851-SteelLegend-IRST-StorageDrivers.zip"

$SteelLegendWLANURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/Steel%20Legend%20Motherboards/WLAN/ASRock-LGA1851-SteelLegend-WLANDrivers.zip"

####################################################################################
#    LGA 1851 Ethernet and Storage Driver Download Destination
####################################################################################

$SteelLegendDestination = "C:\Drivers\Motherboards\ASRock\LGA1851\SteelLegend"

####################################################################################
#   LGA 1851 Ethernet, Bluetooth, WLAN and Storage Driver Extraction Destination
####################################################################################

$SteelLegendEthernet = "$SteelLegendDestination\Ethernet"

$SteelLegendStorage = "$SteelLegendDestination\Storage"

$SteelLegendWLAN = "$SteelLegendDestination\WLAN"

Write-Verbose "Processing: Downloading ASRock LGA 1851 Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $SteelLegendEthernetURL -DestinationDirectory $SteelLegendDestination

Write-Verbose "Processing: Downloading ASRock LGA 1851 Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $SteelLegendStorageURL -DestinationDirectory $SteelLegendDestination

Write-Verbose "Processing: Downloading ASRock LGA 1851 Motherboard WLAN Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $SteelLegendWLANURL -DestinationDirectory $SteelLegendDestination

Write-Verbose "Completed: ASRock LGA1851 SteelLegend Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$SteelLegendDestination\ASRock-LGA1851-SteelLegend-Realtek-EthernetDrivers.zip" -TargetPath $SteelLegendEthernet  
Expand-7Zip -ArchiveFileName "$SteelLegendDestination\ASRock-LGA1851-SteelLegend-IRST-StorageDrivers.zip" -TargetPath $SteelLegendStorage   
Expand-7Zip -ArchiveFileName "$SteelLegendDestination\ASRock-LGA1851-SteelLegend-WLANDrivers.zip" -TargetPath $SteelLegendWLAN 


Write-Verbose "Completed: ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
