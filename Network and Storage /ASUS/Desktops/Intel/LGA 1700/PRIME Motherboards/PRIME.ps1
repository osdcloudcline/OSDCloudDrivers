$LGA1700PRIME = "C:\Logs\OSDCloud\ASUS\LGA1700\PRIME.log"
Start-Transcript -Path $LGA1700PRIME

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   LGA 1700 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$PRIMEEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/PRIME%20Motherboards/Ethernet%20and%20WiFi/Intel-I219-LANDrivers.zip"
$PRIMEEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/PRIME%20Motherboards/Ethernet%20and%20WiFi/Realtek-LANDrivers-1.zip"
$PRIMEEthernetURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/PRIME%20Motherboards/Ethernet%20and%20WiFi/Realtek-LANDrivers-2.zip"
$PRIMEEthernetURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/PRIME%20Motherboards/Ethernet%20and%20WiFi/Realtek-LANDrivers-3.zip"
$PRIMEWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/PRIME%20Motherboards/Ethernet%20and%20WiFi/MediaTek-WiFiDrivers.zip"
$PRIMEWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/PRIME%20Motherboards/Ethernet%20and%20WiFi/Realtek-WiFiDrivers.zip"
$PRIMEStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/PRIME%20Motherboards/Storage/IRST-StorageDriver.zip"


####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$PRIMEDestination = "C:\Drivers\Motherboards\ASUS\LGA1700\PRIME"

####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$PRIMEEthernet1 = "$PRIMEDestination\Ethernet1"
$PRIMEEthernet2 = "$PRIMEDestination\Ethernet2"
$PRIMEEthernet3 = "$PRIMEDestination\Ethernet3"
$PRIMEEthernet4 = "$PRIMEDestination\Ethernet4"
$PRIMEWiFi1 = "$PRIMEDestination\WLAN1"
$PRIMEWiFi2 = "$PRIMEDestination\WLAN2"

$PRIMEStorage = "$PRIMEDestination\Storage"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

Write-Verbose "Acquiring ASUS LGA 1700 PRIME Motherboard Ethernet Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $PRIMEEthernetURL1 -DestinationDirectory $PRIMEDestination
Save-WebFile -SourceUrl $PRIMEEthernetURL2 -DestinationDirectory $PRIMEDestination
Save-WebFile -SourceUrl $PRIMEEthernetURL3 -DestinationDirectory $PRIMEDestination
Save-WebFile -SourceUrl $PRIMEEthernetURL4 -DestinationDirectory $PRIMEDestination
Write-Host

Write-Verbose "Acquiring ASUS LGA 1700 PRIME Motherboard WiFi Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $PRIMEWiFiURL1 -DestinationDirectory $PRIMEDestination
Save-WebFile -SourceUrl $PRIMEWiFiURL2 -DestinationDirectory $PRIMEDestination
Save-WebFile -SourceUrl $PRIMEWiFiURL3 -DestinationDirectory $PRIMEDestination
Write-Host

Write-Verbose "Acquiring ASUS LGA 1700 PRIME Motherboard Storage Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $PRIMEStorageURL -DestinationDirectory $PRIMEDestination

Write-Verbose "ASUS LGA 1700 PRIME Motherboard Drivers downloaded" -Verbose

Write-Verbose "Processing: ZIP File extraction" -Verbose

Expand-7Zip -ArchiveFileName "$PRIMEDestination\Intel-I219-LANDrivers.zip" -TargetPath $PRIMEEthernet1   
Expand-7Zip -ArchiveFileName "$PRIMEDestination\Realtek-LANDrivers-1.zip" -TargetPath $PRIMEEthernet2   
Expand-7Zip -ArchiveFileName "$PRIMEDestination\Realtek-LANDrivers-2.zip" -TargetPath $PRIMEEthernet3   
Expand-7Zip -ArchiveFileName "$PRIMEDestination\Realtek-LANDrivers-3.zip" -TargetPath $PRIMEEthernet4   
Expand-7Zip -ArchiveFileName "$PRIMEDestination\MediaTek-WiFiDrivers.zip" -TargetPath $PRIMEWiFi1   
Expand-7Zip -ArchiveFileName "$PRIMEDestination\Realtek-WiFiDrivers.zip" -TargetPath $PRIMEWiFi2  
Expand-7Zip -ArchiveFileName "$PRIMEDestination\IRSTDriver.zip" -TargetPath $PRIMEStorage 

Write-Verbose "ZIP Files extracted successfully" -Verbose

Stop-Transcript    
