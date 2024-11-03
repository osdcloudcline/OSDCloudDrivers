$LGA1851ProArt = "C:\Logs\OSDCloud\LGA1851\ProArt.log"
Start-Transcript

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   LGA 1851 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$ProArtEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/ProArt%20Motherboards/Ethernet%20and%20WiFi/Marvell-LANDriver.zip"
$ProArtWiFi1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/CSM%20MProArtboards/Ethernet%20and%20WiFi/MediaTek-WiFiDrivers.zip"
$ProArtWiFi2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/CSM%20MProArtboards/Ethernet%20and%20WiFi/MediaTek-WiFiDrivers.zip"
$ProArtWiFi3URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/CSM%20MProArtboards/Ethernet%20and%20WiFi/MediaTek-WiFiDrivers.zip"
$ProArtWiFi4URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/CSM%20MProArtboards/Ethernet%20and%20WiFi/MediaTek-WiFiDrivers.zip"
$ProArtStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/CSM%20MProArtboards/Storage/IRST-StorageDrivers.zip"


####################################################################################
#             LGA 1851 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$ProArtDestination = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\ProArt"

####################################################################################
#             LGA 1851 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$ProArtEthernet = "$ProArtDestination\Ethernet"
$ProArtWiFi = "$ProArtDestination\WiFi"
$ProArtStorage = "$ProArtDestination\Storage"

Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASUS LGA 1851 ProArt MProArtboard Ethernet Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $ProArtEthernetURL -DestinationDirectory $ProArtDestination

Write-Verbose "Acquiring ASUS LGA 1851 ProArt MProArtboard WiFi Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $ProArtWiFiURL -DestinationDirectory $ProArtDestination

Write-Verbose "ASUS LGA 1851 ProArt MProArtboard Drivers downloaded" -Verbose

Write-Verbose "Processing: ZIP File extraction" -Verbose

Expand-7Zip -ArchiveFileName "$ProArtDestination\Realtek-LANDriver.zip" -TargetPath $ProArtEthernet  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ProArtDestination\MediaTekWiFiDrivers.zip" -TargetPath $ProArtWiFi  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ProArtDestination\IRST-StorageDrivers.zi" -TargetPath $ProArtStorage  -ErrorAction SilentlyContinue 

Write-Verbose "ZIP Files extracted successfully" -Verbose


Stop-Transcript
