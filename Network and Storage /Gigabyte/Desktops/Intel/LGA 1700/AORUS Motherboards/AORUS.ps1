$LGA1700AORUS = "C:\Logs\OSDCloud\Gigabyte\LGA 1700\AORUS.log"
Start-Transcript -Path $LGA1700AORUS

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   LGA 1700 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$AORUSEthernet1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/AORUS%20Motherboards/Ethernet/Gigabyte-AORUS-LGA1700-EthernetDrivers1.zip"
$AORUSEthernet2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/AORUS%20Motherboards/Ethernet/Gigabyte-AORUS-LGA1700-EthernetDrivers2.zip"
$AORUSEthernet3URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/AORUS%20Motherboards/Ethernet/Gigabyte-AORUS-LGA1700-EthernetDrivers3.zip"

$AORUSWiFi1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/AORUS%20Motherboards/WLAN/Gigabyte-AORUS-LGA1700-WLANDrivers1.zip"
$AORUSWiFi2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/AORUS%20Motherboards/WLAN/Gigabyte-AORUS-LGA1700-WLANDrivers2.zip"
$AORUSWiFi3URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/AORUS%20Motherboards/WLAN/Gigabyte-AORUS-LGA1700-WLANDrivers3.zip"
$AORUSWiFi4URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/AORUS%20Motherboards/WLAN/Gigabyte-AORUS-LGA1700-WLANDrivers4.zip"
$AORUSWiFi5URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/AORUS%20Motherboards/WLAN/Gigabyte-AORUS-LGA1700-WLANDrivers5.zip"

$AORUSStorage1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/AORUS%20Motherboards/Storage/Gigabyte-AORUS-LGA1700-Thunderbolt-StorageDrivers.zip"
$AORUSStorage2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/AORUS%20Motherboards/Storage/IRST-StorageDrivers.zip"

####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$AORUSDestination = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AORUS"

####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$AORUSEthernet1 = "$AORUSDestination\Ethernet1"
$AORUSEthernet2 = "$AORUSDestination\Ethernet2"
$AORUSEthernet2 = "$AORUSDestination\Ethernet3"

$AORUSWiFi1 = "$AORUSDestination\WLAN1"
$AORUSWiFi2 = "$AORUSDestination\WLAN2"
$AORUSWiFi3 = "$AORUSDestination\WLAN3"
$AORUSWiFi4 = "$AORUSDestination\WLAN4"
$AORUSWiFi5 = "$AORUSDestination\WLAN5"

$AORUSStorage1 = "$AORUSDestination\Storage1"
$AORUSStorage2 = "$AORUSDestination\Storage2"

Import-Module -Name OSD -Force 

Write-Verbose "Acquiring Gigabyte LGA 1700 AORUS Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl  $AORUSEthernet1URL -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl  $AORUSEthernet2URL -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl  $AORUSEthernet3URL -DestinationDirectory $AORUSDestination

Write-Verbose "Acquiring Gigabyte LGA 1700 AORUS Motherboard WiFi Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl  $AORUSWiFi1URL -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl  $AORUSWiFi2URL -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl  $AORUSWiFi3URL -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl  $AORUSWiFi4URL -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl  $AORUSWiFi5URL -DestinationDirectory $AORUSDestination

Write-Verbose "Acquiring Gigabyte LGA 1700 AORUS Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $AORUSStorage1URL -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSStorage2URL -DestinationDirectory $AORUSDestination

Write-Verbose "Gigabyte LGA 1700 AORUS Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-LGA1700-EthernetDrivers1.zip" -TargetPath $AORUSEthernet1
Expand-7Zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-LGA1700-EthernetDrivers2.zip" -TargetPath $AORUSEthernet2  
Expand-7Zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-LGA1700-EthernetDrivers3.zip" -TargetPath $AORUSEthernet3
 
Expand-7Zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-LGA1700-WLANDrivers1.zip" -TargetPath $AORUSWiFi1   
Expand-7Zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-LGA1700-WLANDrivers2.zip" -TargetPath $AORUSWiFi2  
Expand-7Zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-LGA1700-WLANDrivers3.zip" -TargetPath $AORUSWiFi3   
Expand-7Zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-LGA1700-WLANDrivers4.zip" -TargetPath $AORUSWiFi4
Expand-7Zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-LGA1700-WLANDrivers5.zip" -TargetPath $AORUSWiFi5
 
Expand-7Zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-LGA1700-Thunderbolt-StorageDrivers.zip" -TargetPath $AORUSStorage1   
Expand-7Zip -ArchiveFileName "$AORUSDestination\IRST-StorageDrivers.zip" -TargetPath $AORUSStorage2  

Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
