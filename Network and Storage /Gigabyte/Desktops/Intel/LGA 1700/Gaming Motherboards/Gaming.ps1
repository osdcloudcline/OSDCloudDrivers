$LGA1700Gaming = "C:\Logs\OSDCloud\Gigabyte\LGA 1700\Gaming.log"
Start-Transcript -Path $LGA1700Gaming

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   LGA 1700 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$GamingEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/blob/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/Gaming%20Motherboards/Ethernet/Gigabyte-Gaming-LGA1700-EthernetDrivers.zip"

$GamingWiFi1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/Gaming%20Motherboards/WLAN/Gigabyte-Gaming-LGA1700-WLANDrivers1.zip"
$GamingWiFi2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/Gaming%20Motherboards/WLAN/Gigabyte-Gaming-LGA1700-WLANDrivers2.zip"
$GamingWiFi3URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/Gaming%20Motherboards/WLAN/Gigabyte-Gaming-LGA1700-WLANDrivers3.zip"

$GamingStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/Gaming%20Motherboards/Storage/IRST-StorageDrivers.zip"

####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$GamingDestination = "C:\Drivers\Motherboards\Gigabyte\LGA1700\Gaming"

####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$GamingEthernet = "$GamingDestination\Ethernet"

$GamingWiFi1 = "$GamingDestination\WLAN1"
$GamingWiFi2 = "$GamingDestination\WLAN2"
$GamingWiFi3 = "$GamingDestination\WLAN3"

$GamingStorage = "$GamingDestination\Storage"


Import-Module -Name OSD -Force 

Write-Verbose "Acquiring Gigabyte LGA 1700 Gaming Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl  $GamingEthernetURL -DestinationDirectory $GamingDestination

Write-Verbose "Acquiring Gigabyte LGA 1700 Gaming Motherboard WiFi Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl  $GamingWiFi1URL -DestinationDirectory $GamingDestination
Save-WebFile -SourceUrl  $GamingWiFi2URL -DestinationDirectory $GamingDestination
Save-WebFile -SourceUrl  $GamingWiFi3URL -DestinationDirectory $GamingDestination

Write-Verbose "Acquiring Gigabyte LGA 1700 Gaming Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $GamingStorageURL -DestinationDirectory $GamingDestination


Write-Verbose "Gigabyte LGA 1700 Gaming Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-LGA1700-EthernetDrivers.zip" -TargetPath $GamingEthernet
Expand-7Zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-LGA1700-WLANDrivers1.zip" -TargetPath $GamingWiFi1   
Expand-7Zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-LGA1700-WLANDrivers2.zip" -TargetPath $GamingWiFi2  
Expand-7Zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-LGA1700-WLANDrivers3.zip" -TargetPath $GamingWiFi3  
Expand-7Zip -ArchiveFileName "$GamingDestination\IRST-StorageDrivers.zip" -TargetPath $GamingStorage  

Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
