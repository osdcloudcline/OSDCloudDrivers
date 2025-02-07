$LGA1700SteelLegend = "C:\Logs\OSDCloud\ASRock\LGA1700\SteelLegend.log"
Start-Transcript -Path $LGA1700SteelLegend

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#          LGA 1700 Bluetooth, Ethernet, Storage and WLAN Driver URLs
####################################################################################

$SteelLegendEthernet1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Steel%20Legend%20Motherboards/Ethernet/ASRock-LGA1700-SteelLegend-Killer-EthernetDrivers1.zip"
$SteelLegendEthernet2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Steel%20Legend%20Motherboards/Ethernet/ASRock-LGA1700-SteelLegend-Killer-EthernetDrivers2.zip"
$SteelLegendEthernet3URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Steel%20Legend%20Motherboards/Ethernet/ASRock-LGA1700-SteelLegend-Killer-EthernetDrivers3.zip"
$SteelLegendEthernet4URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Steel%20Legend%20Motherboards/Ethernet/ASRock-LGA1700-SteelLegend-Killer-EthernetDrivers4.zip"
$SteelLegendEthernet5URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Steel%20Legend%20Motherboards/Ethernet/ASRock-LGA1700-SteelLegend-Killer-EthernetDrivers5.zip"
$SteelLegendEthernet6URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Steel%20Legend%20Motherboards/Ethernet/ASRock-LGA1700-SteelLegend-Realtek-EthernetDrivers.zip"


$SteelLegendStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Steel%20Legend%20Motherboards/Storage/ASRock-LGA1700-SteelLegend-IRST-StorageDrivers.zip"

$SteelLegendWLANURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Steel%20Legend%20Motherboards/WLAN/ASRock-LGA1700-SteelLegend-Intel-Killer-WLANDrivers.zip"

####################################################################################
#    LGA 1700 Bluetooth, Ethernet, Storage and WLAN Driver Download Destination
####################################################################################

$SteelLegendDestination = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\SteelLegend"

####################################################################################
#   LGA 1700 Bluetooth, Ethernet, Storage and WLAN Driver Extraction Destination
####################################################################################

$SteelLegendEthernet1 = "$SteelLegendDestination\Ethernet1"
$SteelLegendEthernet2 = "$SteelLegendDestination\Ethernet2"
$SteelLegendEthernet3 = "$SteelLegendDestination\Ethernet3"
$SteelLegendEthernet4 = "$SteelLegendDestination\Ethernet4"
$SteelLegendEthernet5 = "$SteelLegendDestination\Ethernet5"
$SteelLegendEthernet6 = "$SteelLegendDestination\Ethernet6"

$SteelLegendStorage = "$SteelLegendDestination\Storage"

$SteelLegendWLAN = "$SteelLegendDestination\WLAN"

Write-Verbose "Processing: Downloading ASRock LGA 1700 Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $SteelLegendEthernet1URL -DestinationDirectory $SteelLegendDestination
Save-WebFile -SourceUrl $SteelLegendEthernet2URL -DestinationDirectory $SteelLegendDestination
Save-WebFile -SourceUrl $SteelLegendEthernet3URL -DestinationDirectory $SteelLegendDestination
Save-WebFile -SourceUrl $SteelLegendEthernet4URL -DestinationDirectory $SteelLegendDestination
Save-WebFile -SourceUrl $SteelLegendEthernet5URL -DestinationDirectory $SteelLegendDestination
Save-WebFile -SourceUrl $SteelLegendEthernet6URL -DestinationDirectory $SteelLegendDestination

Write-Verbose "Processing: Downloading ASRock LGA 1700 Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $SteelLegendStorageURL -DestinationDirectory $SteelLegendDestination

Write-Verbose "Processing: Downloading ASRock LGA 1700 Motherboard WLAN Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $SteelLegendWLANURL -DestinationDirectory $SteelLegendDestination

Write-Verbose "Completed: ASRock LGA1700 SteelLegend Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$SteelLegendDestination\ASRock-LGA1700-SteelLegend-Killer-EthernetDrivers1.zip" -TargetPath $SteelLegendEthernet1 -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SteelLegendDestination\ASRock-LGA1700-SteelLegend-Killer-EthernetDrivers2.zip" -TargetPath $SteelLegendEthernet2  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SteelLegendDestination\ASRock-LGA1700-SteelLegend-Killer-EthernetDrivers3.zip" -TargetPath $SteelLegendEthernet3 -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SteelLegendDestination\ASRock-LGA1700-SteelLegend-Killer-EthernetDrivers4.zip" -TargetPath $SteelLegendEthernet4  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SteelLegendDestination\ASRock-LGA1700-SteelLegend-Killer-EthernetDrivers5.zip" -TargetPath $SteelLegendEthernet5 -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SteelLegendDestination\ASRock-LGA1700-SteelLegend-Realtek-EthernetDrivers.zip" -TargetPath $SteelLegendEthernet6 -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SteelLegendDestination\ASRock-LGA1700-SteelLegend-IRST-StorageDrivers.zip" -TargetPath $SteelLegendStorage  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SteelLegendDestination\ASRock-LGA1700-SteelLegend-Intel-Killer-WLANDrivers.zip" -TargetPath $SteelLegendWLAN  -ErrorAction SilentlyContinue 

Write-Verbose "Completed: ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
