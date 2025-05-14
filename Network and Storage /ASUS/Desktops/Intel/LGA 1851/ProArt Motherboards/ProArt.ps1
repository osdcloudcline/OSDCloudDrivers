$LGA1851ProArt = "C:\Logs\OSDCloud\LGA1851\ProArt.log"
Start-Transcript -Path $LGA1851ProArt

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   LGA 1851 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$ProArtEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/ProArt%20Motherboards/Ethernet%20and%20WiFi/Marvell-LANDriver.zip"
$ProArtWiFi1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/ProArt%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-1.zip"
$ProArtWiFi2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/ProArt%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-2.zip"
$ProArtWiFi3URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/ProArt%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-3.zip"
$ProArtWiFi4URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/ProArt%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-4.zip"
$ProArtStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/ProArt%20Motherboards/Storage/IRST-StorageDriver.zip"


####################################################################################
#             LGA 1851 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$ProArtDestination = "C:\Drivers\Motherboards\ASUS\LGA1851\ProArt"

####################################################################################
#             LGA 1851 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$ProArtEthernet = "$ProArtDestination\Ethernet"
$ProArtWiFi1 = "$ProArtDestination\WLAN1"
$ProArtWiFi2 = "$ProArtDestination\WLAN2"
$ProArtWiFi3 = "$ProArtDestination\WLAN3"
$ProArtWiFi4 = "$ProArtDestination\WLAN4"
$ProArtStorage = "$ProArtDestination\Storage"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force 

Write-Verbose "Acquiring ASUS LGA 1851 ProArt Motherboard Ethernet Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $ProArtEthernetURL -DestinationDirectory $ProArtDestination

Write-Verbose "Acquiring ASUS LGA 1851 ProArt Motherboard WiFi Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $ProArtWiFi1URL -DestinationDirectory $ProArtDestination
Save-WebFile -SourceUrl $ProArtWiFi2URL -DestinationDirectory $ProArtDestination
Save-WebFile -SourceUrl $ProArtWiFi3URL -DestinationDirectory $ProArtDestination
Save-WebFile -SourceUrl $ProArtWiFi4URL -DestinationDirectory $ProArtDestination

Write-Verbose "Acquiring ASUS LGA 1851 ProArt Motherboard Storage Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $ProArtStorageURL -DestinationDirectory $ProArtDestination

Write-Verbose "ASUS LGA 1851 ProArt Motherboard Drivers downloaded" -Verbose

Write-Verbose "Processing: ZIP File extraction" -Verbose

Expand-7Zip -ArchiveFileName "$ProArtDestination\Marvell-LANDriver.zip" -TargetPath $ProArtEthernet  
Expand-7Zip -ArchiveFileName "$ProArtDestination\Intel-WiFiDrivers-1.zip" -TargetPath $ProArtWiFi1  
Expand-7Zip -ArchiveFileName "$ProArtDestination\Intel-WiFiDrivers-2.zip" -TargetPath $ProArtWiFi2  
Expand-7Zip -ArchiveFileName "$ProArtDestination\Intel-WiFiDrivers-3.zip" -TargetPath $ProArtWiFi3  
Expand-7Zip -ArchiveFileName "$ProArtDestination\Intel-WiFiDrivers-4.zip" -TargetPath $ProArtWiFi4  
Expand-7Zip -ArchiveFileName "$ProArtDestination\IRST-StorageDriver.zip" -TargetPath $ProArtStorage  
Write-Verbose "ZIP Files extracted successfully" -Verbose


Stop-Transcript


