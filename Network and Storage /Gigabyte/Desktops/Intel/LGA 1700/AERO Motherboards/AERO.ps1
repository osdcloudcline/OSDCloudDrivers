$LGA1700AERO = "C:\Logs\OSDCloud\Gigabyte\LGA 1700\AERO.log"
Start-Transcript -Path $LGA1700AERO

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   LGA 1700 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$AEROEthernet1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/AERO%20Motherboards/Ethernet/Gigabyte-AERO-LGA1700-EthernetDrivers1.zip"
$AEROEthernet2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/AERO%20Motherboards/Ethernet/Gigabyte-AERO-LGA1700-EthernetDrivers2.zip"


$AEROWiFi1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/AERO%20Motherboards/WLAN/Gigabyte-AERO-LGA1700-WLANDrivers1.zip"
$AEROWiFi2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/AERO%20Motherboards/WLAN/Gigabyte-AERO-LGA1700-WLANDrivers2.zip"

$AEROStorage1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/AERO%20Motherboards/Storage/Gigabyte-AERO-LGA1700-Thunderbolt-StorageDrivers.zip"
$AEROStorage2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/AERO%20Motherboards/Storage/IRST-StorageDrivers.zip"

####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$AERODestination = "C:\Drivers\Motherboards\Gigabyte\LGA 1700\AERO"

####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$AEROEthernet1 = "$AERODestination\Ethernet1"
$AEROEthernet2 = "$AERODestination\Ethernet2"

$AEROWiFi1 = "$AERODestination\WLAN1"
$AEROWiFi2 = "$AERODestination\WLAN2"

$AEROStorage1 = "$AERODestination\Storage1"
$AEROStorage2 = "$AERODestination\Storage2"

Import-Module -Name OSD -Force 

Write-Verbose "Acquiring Gigabyte LGA 1700 AERO Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl  $AEROEthernet1URL -DestinationDirectory $AERODestination
Save-WebFile -SourceUrl  $AEROEthernet2URL -DestinationDirectory $AERODestination

Write-Verbose "Acquiring Gigabyte LGA 1700 AERO Motherboard WiFi Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl  $AEROWiFi1URL -DestinationDirectory $AERODestination
Save-WebFile -SourceUrl  $AEROWiFi2URL -DestinationDirectory $AERODestination

Write-Verbose "Acquiring Gigabyte LGA 1700 AERO Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $AEROStorage1URL -DestinationDirectory $AERODestination
Save-WebFile -SourceUrl $AEROStorage2URL -DestinationDirectory $AERODestination

Write-Verbose "Gigabyte LGA 1700 AERO Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$AERODestination\Gigabyte-AERO-LGA1700-EthernetDrivers1.zip" -TargetPath $AEROEthernet1
Expand-7Zip -ArchiveFileName "$AERODestination\Gigabyte-AERO-LGA1700-EthernetDrivers2.zip" -TargetPath $AEROEthernet2   
Expand-7Zip -ArchiveFileName "$AERODestination\Gigabyte-AERO-LGA1700-WLANDrivers1.zip" -TargetPath $AEROWiFi1   
Expand-7Zip -ArchiveFileName "$AERODestination\Gigabyte-AERO-LGA1700-WLANDrivers2.zip" -TargetPath $AEROWiFi2   
Expand-7Zip -ArchiveFileName "$AERODestination\Gigabyte-AERO-LGA1700-Thunderbolt-StorageDrivers.zip" -TargetPath $AEROStorage1   
Expand-7Zip -ArchiveFileName "$AERODestination\IRST-StorageDrivers.zip" -TargetPath $AEROStorage2  

Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
