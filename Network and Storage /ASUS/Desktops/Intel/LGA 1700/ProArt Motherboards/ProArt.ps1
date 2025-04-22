$LGA1700ProArt = "C:\Logs\OSDCloud\ASUS\LGA1700\ProArt.log"
Start-Transcript -Path $LGA1700ProArt

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   LGA 1700 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$ProArtEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ProArt%20Motherboards/Ethernet%20and%20WiFi/Intel-I219-LANDrivers.zip"
$ProArtEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ProArt%20Motherboards/Ethernet%20and%20WiFi/Intel-I226-LANDriver.zip"
$ProArtEthernetURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ProArt%20Motherboards/Ethernet%20and%20WiFi/Realtek-LANDriver.zip"

$ProArtWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ProArt%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-1.zip"
$ProArtWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ProArt%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-2.zip"
$ProArtWiFiURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ProArt%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-3.zip"
$ProArtWiFiURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ProArt%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-4.zip"
$ProArtWiFiURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ProArt%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-5.zip"
$ProArtWiFiURL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ProArt%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-6.zip"
$ProArtWiFiURL7 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ProArt%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-7.zip"
$ProArtWiFiURL8 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ProArt%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-8.zip"
$ProArtWiFiURL9 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ProArt%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-9.zip"

$ProArtStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ProArt%20Motherboards/Storage/IRST-StorageDriver.zip"


####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$ProArtDestination = "C:\Drivers\Motherboards\ASUS\LGA1700\ProArt"

####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$ProArtEthernet1 = "$ProArtDestination\Ethernet1"
$ProArtEthernet2 = "$ProArtDestination\Ethernet2"
$ProArtEthernet3 = "$ProArtDestination\Ethernet3"

$ProArtWiFi1 = "$ProArtDestination\WLAN1"
$ProArtWiFi2 = "$ProArtDestination\WLAN2"
$ProArtWiFi3 = "$ProArtDestination\WLAN3"
$ProArtWiFi4 = "$ProArtDestination\WLAN4"
$ProArtWiFi5 = "$ProArtDestination\WLAN5"
$ProArtWiFi6 = "$ProArtDestination\WLAN6"
$ProArtWiFi7 = "$ProArtDestination\WLAN7"
$ProArtWiFi8 = "$ProArtDestination\WLAN8"
$ProArtWiFi9 = "$ProArtDestination\WLAN9"

$ProArtStorage = "$ProArtDestination\Storage"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

Write-Verbose "Acquiring ASUS LGA 1700 ProArt Motherboard Ethernet Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $ProArtEthernetURL1 -DestinationDirectory $ProArtDestination
Save-WebFile -SourceUrl $ProArtEthernetURL2 -DestinationDirectory $ProArtDestination
Save-WebFile -SourceUrl $ProArtEthernetURL3 -DestinationDirectory $ProArtDestination

Write-Host

Write-Verbose "Acquiring ASUS LGA 1700 ProArt Motherboard WiFi Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $ProArtWiFiURL1 -DestinationDirectory $ProArtDestination
Save-WebFile -SourceUrl $ProArtWiFiURL2 -DestinationDirectory $ProArtDestination
Save-WebFile -SourceUrl $ProArtWiFiURL3 -DestinationDirectory $ProArtDestination
Save-WebFile -SourceUrl $ProArtWiFiURL4 -DestinationDirectory $ProArtDestination
Save-WebFile -SourceUrl $ProArtWiFiURL5 -DestinationDirectory $ProArtDestination
Save-WebFile -SourceUrl $ProArtWiFiURL6 -DestinationDirectory $ProArtDestination
Save-WebFile -SourceUrl $ProArtWiFiURL7 -DestinationDirectory $ProArtDestination
Save-WebFile -SourceUrl $ProArtWiFiURL8 -DestinationDirectory $ProArtDestination
Save-WebFile -SourceUrl $ProArtWiFiURL9 -DestinationDirectory $ProArtDestination

Write-Host

Write-Verbose "Acquiring ASUS LGA 1700 ProArt Motherboard Storage Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $ProArtStorageURL -DestinationDirectory $ProArtDestination

Write-Verbose "ASUS LGA 1700 ProArt Motherboard Drivers downloaded" -Verbose

Write-Verbose "Processing: ZIP File extraction" -Verbose

Expand-7Zip -ArchiveFileName "$ProArtDestination\Intel-I219-LANDrivers.zip" -TargetPath $ProArtEthernet1   
Expand-7Zip -ArchiveFileName "$ProArtDestination\Intel-I226-LANDriver.zip" -TargetPath $ProArtEthernet2   
Expand-7Zip -ArchiveFileName "$ProArtDestination\Realtek-LANDriver.zip" -TargetPath $ProArtEthernet3   
   
Expand-7Zip -ArchiveFileName "$ProArtDestination\Intel-WiFiDrivers-1.zip" -TargetPath $ProArtWiFi1   
Expand-7Zip -ArchiveFileName "$ProArtDestination\Intel-WiFiDrivers-2.zip" -TargetPath $ProArtWiFi2  
Expand-7Zip -ArchiveFileName "$ProArtDestination\Intel-WiFiDrivers-3.zip" -TargetPath $ProArtWiFi3   
Expand-7Zip -ArchiveFileName "$ProArtDestination\Intel-WiFiDrivers-4.zip" -TargetPath $ProArtWiFi4 
Expand-7Zip -ArchiveFileName "$ProArtDestination\Intel-WiFiDrivers-5.zip" -TargetPath $ProArtWiFi5   
Expand-7Zip -ArchiveFileName "$ProArtDestination\Intel-WiFiDrivers-6.zip" -TargetPath $ProArtWiFi6 
Expand-7Zip -ArchiveFileName "$ProArtDestination\Intel-WiFiDrivers-7.zip" -TargetPath $ProArtWiFi7   
Expand-7Zip -ArchiveFileName "$ProArtDestination\Intel-WiFiDrivers-8.zip" -TargetPath $ProArtWiFi8 
Expand-7Zip -ArchiveFileName "$ProArtDestination\Intel-WiFiDrivers-9.zip" -TargetPath $ProArtWiFi9   
 
Expand-7Zip -ArchiveFileName "$ProArtDestination\IRSTDriver.zip" -TargetPath $ProArtStorage 

Write-Verbose "ZIP Files extracted successfully" -Verbose

Stop-Transcript 
