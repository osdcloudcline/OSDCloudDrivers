$LGA1700CSM = "C:\Logs\OSDCloud\ASUS\LGA1700\CSM.log"
Start-Transcript -Path $LGA1700CSM

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   LGA 1700 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$CSMEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/CSM%20Motherboards/Ethernet%20and%20WiFi/Intel-I219-LANDrivers.zip"
$CSMEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/CSM%20Motherboards/Ethernet%20and%20WiFi/Realtek-LANDrivers-1.zip"
$CSMEthernetURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/CSM%20Motherboards/Ethernet%20and%20WiFi/Realtek-LANDrivers-2.zip"
$CSMEthernetURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/CSM%20Motherboards/Ethernet%20and%20WiFi/Realtek-LANDrivers-3.zip"
$CSMWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/CSM%20Motherboards/Ethernet%20and%20WiFi/MediaTek-WiFiDrivers.zip"
$CSMWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/CSM%20Motherboards/Ethernet%20and%20WiFi/Realtek-WiFiDrivers-1.zip"
$CSMWiFiURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/CSM%20Motherboards/Ethernet%20and%20WiFi/Realtek-WiFiDrivers-2.zip"
$CSMStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/CSM%20Motherboards/Storage/IRST-StorageDrivers.zip"


####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$CSMDestination = "C:\Drivers\Motherboards\ASUS\LGA1700\CSM"

####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$CSMEthernet1 = "$CSMDestination\Ethernet1"
$CSMEthernet2 = "$CSMDestination\Ethernet2"
$CSMEthernet3 = "$CSMDestination\Ethernet3"
$CSMEthernet4 = "$CSMDestination\Ethernet4"
$CSMWiFi1 = "$CSMDestination\WLAN1"
$CSMWiFi2 = "$CSMDestination\WLAN2"
$CSMWiFi3 = "$CSMDestination\WLAN3"
$CSMStorage = "$CSMDestination\Storage"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

Write-Verbose "Acquiring ASUS LGA 1700 CSM Motherboard Ethernet Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $CSMEthernetURL1 -DestinationDirectory $CSMDestination
Save-WebFile -SourceUrl $CSMEthernetURL2 -DestinationDirectory $CSMDestination
Save-WebFile -SourceUrl $CSMEthernetURL3 -DestinationDirectory $CSMDestination
Save-WebFile -SourceUrl $CSMEthernetURL4 -DestinationDirectory $CSMDestination
Write-Host

Write-Verbose "Acquiring ASUS LGA 1700 CSM Motherboard WiFi Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $CSMWiFiURL1 -DestinationDirectory $CSMDestination
Save-WebFile -SourceUrl $CSMWiFiURL2 -DestinationDirectory $CSMDestination
Save-WebFile -SourceUrl $CSMWiFiURL3 -DestinationDirectory $CSMDestination
Write-Host

Write-Verbose "Acquiring ASUS LGA 1700 CSM Motherboard Storage Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $CSMStorageURL -DestinationDirectory $CSMDestination

Write-Verbose "ASUS LGA 1700 CSM Motherboard Drivers downloaded" -Verbose

Write-Verbose "Processing: ZIP File extraction" -Verbose

Expand-7Zip -ArchiveFileName "$CSMDestination\Intel-I219-LANDrivers.zip" -TargetPath $CSMEthernet1   
Expand-7Zip -ArchiveFileName "$CSMDestination\Realtek-LANDriver-1.zip" -TargetPath $CSMEthernet2   
Expand-7Zip -ArchiveFileName "$CSMDestination\Realtek-LANDriver-2.zip" -TargetPath $CSMEthernet3   
Expand-7Zip -ArchiveFileName "$CSMDestination\Realtek-LANDriver-3.zip" -TargetPath $CSMEthernet4   
Expand-7Zip -ArchiveFileName "$CSMDestination\MediaTek-WiFiDrivers.zip" -TargetPath $CSMWiFi1   
Expand-7Zip -ArchiveFileName "$CSMDestination\Realtek-WiFiDrivers-1.zip" -TargetPath $CSMWiFi2  
Expand-7Zip -ArchiveFileName "$CSMDestination\Realtek-WiFiDrivers-2.zip" -TargetPath $CSMWiFi3   
Expand-7Zip -ArchiveFileName "$CSMDestination\IRSTDrivers.zip" -TargetPath $CSMStorage 

Write-Verbose "ZIP Files extracted successfully" -Verbose

Stop-Transcript
