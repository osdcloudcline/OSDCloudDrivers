$LGA1700Eagle = "C:\Logs\OSDCloud\Gigabyte\LGA 1700\Eagle.log"
Start-Transcript -Path $LGA1700Eagle

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   LGA 1700 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$EagleEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/Eagle%20Motherboards/Ethernet/Gigabyte-Eagle-LGA1700-EthernetDrivers.zip"


$EagleWiFi1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/Eagle%20Motherboards/WLAN/Gigabyte-Eagle-LGA1700-WLANDrivers1.zip"
$EagleWiFi2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/Eagle%20Motherboards/WLAN/Gigabyte-Eagle-LGA1700-WLANDrivers2.zip"

$EagleStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201700/Eagle%20Motherboards/Storage/IRST-StorageDrivers.zip"

####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$EagleDestination = "C:\Drivers\Motherboards\Gigabyte\LGA1700\Eagle"

####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$EagleEthernet = "$EagleDestination\Ethernet"


$EagleWiFi1 = "$EagleDestination\WLAN1"
$EagleWiFi2 = "$EagleDestination\WLAN2"


$EagleStorage = "$EagleDestination\Storage"


Import-Module -Name OSD -Force 

Write-Verbose "Acquiring Gigabyte LGA 1700 Eagle Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl  $EagleEthernetURL -DestinationDirectory $EagleDestination

Write-Verbose "Acquiring Gigabyte LGA 1700 Eagle Motherboard WiFi Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl  $EagleWiFi1URL -DestinationDirectory $EagleDestination
Save-WebFile -SourceUrl  $EagleWiFi2URL -DestinationDirectory $EagleDestination


Write-Verbose "Acquiring Gigabyte LGA 1700 Eagle Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $EagleStorageURL -DestinationDirectory $EagleDestination


Write-Verbose "Gigabyte LGA 1700 Eagle Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$EagleDestination\Gigabyte-Eagle-LGA1700-EthernetDrivers.zip" -TargetPath $EagleEthernet
Expand-7Zip -ArchiveFileName "$EagleDestination\Gigabyte-Eagle-LGA1700-WLANDrivers1.zip" -TargetPath $EagleWiFi1   
Expand-7Zip -ArchiveFileName "$EagleDestination\Gigabyte-Eagle-LGA1700-WLANDrivers2.zip" -TargetPath $EagleWiFi2  
Expand-7Zip -ArchiveFileName "$EagleDestination\IRST-StorageDrivers.zip" -TargetPath $EagleStorage  

Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
