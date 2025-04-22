$LGA1700ROG = "C:\Logs\OSDCloud\ASUS\LGA1700\ROG.log"
Start-Transcript -Path $LGA1700ROG

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   LGA 1700 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$ROGEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/Intel-I226-LANDriver.zip"
$ROGEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/Realtek-LANDriver.zip"

$ROGWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-1.zip"
$ROGWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-2.zip"
$ROGWiFiURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-3.zip"
$ROGWiFiURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-4.zip"
$ROGWiFiURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-5.zip"
$ROGWiFiURL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-6.zip"
$ROGWiFiURL7 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-7.zip"
$ROGWiFiURL8 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-8.zip"
$ROGWiFiURL9 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-9.zip"
$ROGWiFiURL10 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-10.zip"
$ROGWiFiURL11 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-11.zip"
$ROGWiFiURL12 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-12.zip"
$ROGWiFiURL13 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-13.zip"
$ROGWiFiURL14 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-14.zip"
$ROGWiFiURL15 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-15.zip"
$ROGWiFiURL16 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-16.zip"
$ROGWiFiURL17 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-17.zip"

$ROGStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Storage/IRST-StorageDriver.zip"


####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$ROGDestination = "C:\Drivers\Motherboards\ASUS\LGA1700\ROG"

####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$ROGEthernet1 = "$ROGDestination\Ethernet1"
$ROGEthernet2 = "$ROGDestination\Ethernet2"

$ROGWiFi1 = "$ROGDestination\WLAN1"
$ROGWiFi2 = "$ROGDestination\WLAN2"
$ROGWiFi3 = "$ROGDestination\WLAN3"
$ROGWiFi4 = "$ROGDestination\WLAN4"
$ROGWiFi5 = "$ROGDestination\WLAN5"
$ROGWiFi6 = "$ROGDestination\WLAN6"
$ROGWiFi7 = "$ROGDestination\WLAN7"
$ROGWiFi8 = "$ROGDestination\WLAN8"
$ROGWiFi9 = "$ROGDestination\WLAN9"
$ROGWiFi10 = "$ROGDestination\WLAN10"
$ROGWiFi11 = "$ROGDestination\WLAN11"
$ROGWiFi12 = "$ROGDestination\WLAN12"
$ROGWiFi13 = "$ROGDestination\WLAN13"
$ROGWiFi14 = "$ROGDestination\WLAN14"
$ROGWiFi15 = "$ROGDestination\WLAN15"
$ROGWiFi16 = "$ROGDestination\WLAN16"
$ROGWiFi17 = "$ROGDestination\WLAN17"

$ROGStorage = "$ROGDestination\Storage"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

Write-Verbose "Acquiring ASUS LGA 1700 ROG Motherboard Ethernet Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $ROGEthernetURL1 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGEthernetURL2 -DestinationDirectory $ROGDestination

Write-Host

Write-Verbose "Acquiring ASUS LGA 1700 ROG Motherboard WiFi Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $ROGWiFiURL1 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFiURL2 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFiURL3 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFiURL4 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFiURL5 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFiURL6 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFiURL7 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFiURL8 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFiURL9 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFiURL10 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFiURL11 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFiURL12 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFiURL13 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFiURL14 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFiURL15 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFiURL16 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFiURL17 -DestinationDirectory $ROGDestination

Write-Host

Write-Verbose "Acquiring ASUS LGA 1700 ROG Motherboard Storage Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $ROGStorageURL -DestinationDirectory $ROGDestination

Write-Verbose "ASUS LGA 1700 ROG Motherboard Drivers downloaded" -Verbose

Write-Verbose "Processing: ZIP File extraction" -Verbose
 
Expand-7Zip -ArchiveFileName "$ROGDestination\Intel-I226-LANDriver.zip" -TargetPath $ROGEthernet1   
Expand-7Zip -ArchiveFileName "$ROGDestination\Realtek-LANDriver.zip" -TargetPath $ROGEthernet2   
   
Expand-7Zip -ArchiveFileName "$ROGDestination\Intel-WiFiDrivers-1.zip" -TargetPath $ROGWiFi1   
Expand-7Zip -ArchiveFileName "$ROGDestination\Intel-WiFiDrivers-2.zip" -TargetPath $ROGWiFi2  
Expand-7Zip -ArchiveFileName "$ROGDestination\Intel-WiFiDrivers-3.zip" -TargetPath $ROGWiFi3   
Expand-7Zip -ArchiveFileName "$ROGDestination\Intel-WiFiDrivers-4.zip" -TargetPath $ROGWiFi4 
Expand-7Zip -ArchiveFileName "$ROGDestination\Intel-WiFiDrivers-5.zip" -TargetPath $ROGWiFi5   
Expand-7Zip -ArchiveFileName "$ROGDestination\Intel-WiFiDrivers-6.zip" -TargetPath $ROGWiFi6 
Expand-7Zip -ArchiveFileName "$ROGDestination\Intel-WiFiDrivers-7.zip" -TargetPath $ROGWiFi7   
Expand-7Zip -ArchiveFileName "$ROGDestination\Intel-WiFiDrivers-8.zip" -TargetPath $ROGWiFi8 
Expand-7Zip -ArchiveFileName "$ROGDestination\Intel-WiFiDrivers-9.zip" -TargetPath $ROGWiFi9   
Expand-7Zip -ArchiveFileName "$ROGDestination\Intel-WiFiDrivers-10.zip" -TargetPath $ROGWiFi10   
Expand-7Zip -ArchiveFileName "$ROGDestination\Intel-WiFiDrivers-11.zip" -TargetPath $ROGWiFi11  
Expand-7Zip -ArchiveFileName "$ROGDestination\Intel-WiFiDrivers-12.zip" -TargetPath $ROGWiFi12   
Expand-7Zip -ArchiveFileName "$ROGDestination\Intel-WiFiDrivers-13.zip" -TargetPath $ROGWiFi13 
Expand-7Zip -ArchiveFileName "$ROGDestination\Intel-WiFiDrivers-14.zip" -TargetPath $ROGWiFi14   
Expand-7Zip -ArchiveFileName "$ROGDestination\Intel-WiFiDrivers-15.zip" -TargetPath $ROGWiFi15 
Expand-7Zip -ArchiveFileName "$ROGDestination\Intel-WiFiDrivers-16.zip" -TargetPath $ROGWiFi16   
Expand-7Zip -ArchiveFileName "$ROGDestination\Intel-WiFiDrivers-17.zip" -TargetPath $ROGWiFi17 
 
Expand-7Zip -ArchiveFileName "$ROGDestination\IRST-StorageDriver.zip" -TargetPath $ROGStorage 

Write-Verbose "ZIP Files extracted successfully" -Verbose

Stop-Transcript  
