$LGA1700TUFGaming = "C:\Logs\OSDCloud\ASUS\LGA1700\TUFGaming.log"
Start-Transcript -Path $LGA1700TUFGaming

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   LGA 1700 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$TUFGamingEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/TUF%20Gaming%20Motherboards/Ethernet%20and%20WiFi/Intel-I226-LANDriver.zip"
$TUFGamingEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/TUF%20Gaming%20Motherboards/Ethernet%20and%20WiFi/Realtek-LANDriver.zip"
$TUFGamingEthernetURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/TUF%20Gaming%20Motherboards/Ethernet%20and%20WiFi/Intel-I225-LANDriver.zip"

$TUFGamingWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/TUF%20Gaming%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-1.zip"
$TUFGamingWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/TUF%20Gaming%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-2.zip"
$TUFGamingWiFiURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/TUF%20Gaming%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-3.zip"
$TUFGamingWiFiURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/TUF%20Gaming%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-4.zip"
$TUFGamingWiFiURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/TUF%20Gaming%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-5.zip"
$TUFGamingWiFiURL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/TUF%20Gaming%20Motherboards/Ethernet%20and%20WiFi/Realtek-WiFiDrivers.zip"

$TUFGamingStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/TUF%20Gaming%20Motherboards/Storage/IRST-StorageDrivers.zip"

####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$TUFGamingDestination = "C:\Drivers\Motherboards\ASUS\LGA1700\TUFGaming"

####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$TUFGamingEthernet1 = "$TUFGamingDestination\Ethernet1"
$TUFGamingEthernet2 = "$TUFGamingDestination\Ethernet2"

$TUFGamingWiFi1 = "$TUFGamingDestination\WLAN1"
$TUFGamingWiFi2 = "$TUFGamingDestination\WLAN2"
$TUFGamingWiFi3 = "$TUFGamingDestination\WLAN3"
$TUFGamingWiFi4 = "$TUFGamingDestination\WLAN4"
$TUFGamingWiFi5 = "$TUFGamingDestination\WLAN5"
$TUFGamingWiFi6 = "$TUFGamingDestination\WLAN6"

$TUFGamingStorage = "$TUFGamingDestination\Storage"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

Write-Verbose "Acquiring ASUS LGA 1700 TUFGaming Motherboard Ethernet Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $TUFGamingEthernetURL1 -DestinationDirectory $TUFGamingDestination
Save-WebFile -SourceUrl $TUFGamingEthernetURL2 -DestinationDirectory $TUFGamingDestination

Write-Host

Write-Verbose "Acquiring ASUS LGA 1700 TUFGaming Motherboard WiFi Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $TUFGamingWiFiURL1 -DestinationDirectory $TUFGamingDestination
Save-WebFile -SourceUrl $TUFGamingWiFiURL2 -DestinationDirectory $TUFGamingDestination
Save-WebFile -SourceUrl $TUFGamingWiFiURL3 -DestinationDirectory $TUFGamingDestination
Save-WebFile -SourceUrl $TUFGamingWiFiURL4 -DestinationDirectory $TUFGamingDestination
Save-WebFile -SourceUrl $TUFGamingWiFiURL5 -DestinationDirectory $TUFGamingDestination
Save-WebFile -SourceUrl $TUFGamingWiFiURL6 -DestinationDirectory $TUFGamingDestination

Write-Host

Write-Verbose "Acquiring ASUS LGA 1700 TUFGaming Motherboard Storage Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $TUFGamingStorageURL -DestinationDirectory $TUFGamingDestination

Write-Verbose "ASUS LGA 1700 TUFGaming Motherboard Drivers downloaded" -Verbose

Write-Verbose "Processing: ZIP File extraction" -Verbose
 
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\Intel-I226-LANDriver.zip" -TargetPath $TUFGamingEthernet1   
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\Realtek-LANDriver.zip" -TargetPath $TUFGamingEthernet2   
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\Intel-I225-LANDriver.zip" -TargetPath $TUFGamingEthernet3  
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\Intel-WiFiDrivers-1.zip" -TargetPath $TUFGamingWiFi1   
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\Intel-WiFiDrivers-2.zip" -TargetPath $TUFGamingWiFi2  
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\Intel-WiFiDrivers-3.zip" -TargetPath $TUFGamingWiFi3   
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\Intel-WiFiDrivers-4.zip" -TargetPath $TUFGamingWiFi4 
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\Intel-WiFiDrivers-5.zip" -TargetPath $TUFGamingWiFi5   
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\Intel-WiFiDrivers-6.zip" -TargetPath $TUFGamingWiFi6  
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\IRST-StorageDrivers.zip" -TargetPath $TUFGamingStorage 

Write-Verbose "ZIP Files extracted successfully" -Verbose

Stop-Transcript    
