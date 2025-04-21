$LGA1700Other = "C:\Logs\OSDCloud\ASUS\LGA1700\Other.log"
Start-Transcript -Path $LGA1700Other

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   LGA 1700 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$OtherEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Other%20Motherboards/Ethernet%20and%20WiFi/Realtek-LANDrivers.zip"
$OtherEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Other%20Motherboards/Ethernet%20and%20WiFi/Realtek-LANDrivers-2.zip"


$OtherWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Other%20Motherboards/Ethernet%20and%20WiFi/MediaTek-WiFiDrivers.zip"
$OtherWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Other%20Motherboards/Ethernet%20and%20WiFi/MK-WiFiDrivers.zip"


$OtherStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Other%20Motherboards/Storage/IRST-StorageDriver.zip"


####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$OtherDestination = "C:\Drivers\Motherboards\ASUS\LGA1700\Other"

####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$OtherEthernet1 = "$OtherDestination\Ethernet1"
$OtherEthernet2 = "$OtherDestination\Ethernet2"

$OtherWiFi1 = "$OtherDestination\WLAN1"
$OtherWiFi2 = "$OtherDestination\WLAN2"

$OtherStorage = "$OtherDestination\Storage"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

Write-Verbose "Acquiring ASUS LGA 1700 Other Motherboard Ethernet Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $OtherEthernetURL1 -DestinationDirectory $OtherDestination
Save-WebFile -SourceUrl $OtherEthernetURL2 -DestinationDirectory $OtherDestination

Write-Host

Write-Verbose "Acquiring ASUS LGA 1700 Other Motherboard WiFi Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $OtherWiFiURL1 -DestinationDirectory $OtherDestination
Save-WebFile -SourceUrl $OtherWiFiURL2 -DestinationDirectory $OtherDestination

Write-Host

Write-Verbose "Acquiring ASUS LGA 1700 Other Motherboard Storage Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $OtherStorageURL -DestinationDirectory $OtherDestination

Write-Verbose "ASUS LGA 1700 Other Motherboard Drivers downloaded" -Verbose

Write-Verbose "Processing: ZIP File extraction" -Verbose

Expand-7Zip -ArchiveFileName "$OtherDestination\Realtek-LANDrivers.zip" -TargetPath $OtherEthernet1  
Expand-7Zip -ArchiveFileName "$OtherDestination\Realtek-LANDrivers-2.zip" -TargetPath $OtherEthernet2  
Expand-7Zip -ArchiveFileName "$OtherDestination\MediaTek-WiFiDrivers.zip" -TargetPath $OtherWiFi1  
Expand-7Zip -ArchiveFileName "$OtherDestination\MK-WiFiDrivers.zip" -TargetPath $OtherWiFi2 
Expand-7Zip -ArchiveFileName "$OtherDestination\IRSTDrivers.zip" -TargetPath $OtherStorage  

Write-Verbose "ZIP Files extracted successfully" -Verbose

Stop-Transcript
