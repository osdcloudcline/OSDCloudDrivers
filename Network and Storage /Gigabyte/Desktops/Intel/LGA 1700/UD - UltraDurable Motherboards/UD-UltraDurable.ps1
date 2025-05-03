$LGA1700UltraDurable = "C:\Logs\OSDCloud\Gigabyte\LGA 1700\UltraDurable.log"
Start-Transcript -Path $LGA1700UltraDurable

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   LGA 1700 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$UltraDurableEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/UD%20-%20UltraDurable%20Motherboards/Ethernet/Gigabyte-UltraDurable-LGA1700-EthernetDrivers.zip"

$UltraDurableWiFi1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/UD%20-%20UltraDurable%20Motherboards/WLAN/Gigabyte-UltraDurable-LGA1700-WLANDrivers1.zip"
$UltraDurableWiFi2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/UD%20-%20UltraDurable%20Motherboards/WLAN/Gigabyte-UltraDurable-LGA1700-WLANDrivers2.zip"
$UltraDurableWiFi3URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/UD%20-%20UltraDurable%20Motherboards/WLAN/Gigabyte-UltraDurable-LGA1700-WLANDrivers3.zip"
$UltraDurableWiFi4URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/UD%20-%20UltraDurable%20Motherboards/WLAN/Gigabyte-UltraDurable-LGA1700-WLANDrivers4.zip"

$UltraDurableStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/UD%20-%20UltraDurable%20Motherboards/Storage/IRST-StorageDrivers.zip"

####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$UltraDurableDestination = "C:\Drivers\Motherboards\Gigabyte\LGA1700\UltraDurable"

####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$UltraDurableEthernet = "$UltraDurableDestination\Ethernet"

$UltraDurableWiFi1 = "$UltraDurableDestination\WLAN1"
$UltraDurableWiFi2 = "$UltraDurableDestination\WLAN2"
$UltraDurableWiFi3 = "$UltraDurableDestination\WLAN3"
$UltraDurableWiFi4 = "$UltraDurableDestination\WLAN4"

$UltraDurableStorage = "$UltraDurableDestination\Storage"

Import-Module -Name OSD -Force 

Write-Verbose "Acquiring Gigabyte LGA 1700 Ultra Durable Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl  $UltraDurableEthernetURL -DestinationDirectory $UltraDurableDestination

Write-Verbose "Acquiring Gigabyte LGA 1700 Ultra Durable Motherboard WiFi Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl  $UltraDurableWiFi1URL -DestinationDirectory $UltraDurableDestination
Save-WebFile -SourceUrl  $UltraDurableWiFi2URL -DestinationDirectory $UltraDurableDestination
Save-WebFile -SourceUrl  $UltraDurableWiFi3URL -DestinationDirectory $UltraDurableDestination
Save-WebFile -SourceUrl  $UltraDurableWiFi4URL -DestinationDirectory $UltraDurableDestination

Write-Verbose "Acquiring Gigabyte LGA 1700 Ultra Durable Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $UltraDurableStorageURL -DestinationDirectory $UltraDurableDestination

Write-Verbose "Gigabyte LGA 1700 Ultra Durable Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$UltraDurableDestination\Gigabyte-UltraDurable-LGA1700-EthernetDrivers.zip" -TargetPath $UltraDurableEthernet
Expand-7Zip -ArchiveFileName "$UltraDurableDestination\Gigabyte-UltraDurable-LGA1700-WLANDrivers1.zip" -TargetPath $UltraDurableWiFi1   
Expand-7Zip -ArchiveFileName "$UltraDurableDestination\Gigabyte-UltraDurable-LGA1700-WLANDrivers2.zip" -TargetPath $UltraDurableWiFi2
Expand-7Zip -ArchiveFileName "$UltraDurableDestination\Gigabyte-UltraDurable-LGA1700-WLANDrivers3.zip" -TargetPath $UltraDurableWiFi3   
Expand-7Zip -ArchiveFileName "$UltraDurableDestination\Gigabyte-UltraDurable-LGA1700-WLANDrivers4.zip" -TargetPath $UltraDurableWiFi4
Expand-7Zip -ArchiveFileName "$UltraDurableDestination\IRST-StorageDrivers.zip" -TargetPath $UltraDurableStorage  

Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
