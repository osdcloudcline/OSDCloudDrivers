$AM4ProArt = "C:\Logs\OSDCloud\AM4\ProArt.log"
Start-Transcript -Path $AM4ProArt

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   AM4 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$ProArtEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/ProArt%20Motherboards/Ethernet%20and%20WiFi/ProArt-LANDriver.zip"

$ProArtWiFiURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/ProArt%20Motherboards/Ethernet%20and%20WiFi/ProArt-WiFiDrivers.zip"

$ProArtStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/ProArt%20Motherboards/Storage/ProArt-NVMe-RAIDStorageDrivers.zip"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$ProArtDestination = "C:\Drivers\Motherboards\ASUS\AM4\ProArt"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$ProArtEthernet = "$ProArtDestination\Ethernet"

$ProArtWiFi = "$ProArtDestination\WiFi"

$ProArtStorage = "$ProArtDestination\Storage"


Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASUS AM4 ProArt Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $ProArtEthernetURL -DestinationDirectory $ProArtDestination

Write-Verbose "Acquiring ASUS AM4 ProArt Motherboard WiFi Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $ProArtWiFiURL -DestinationDirectory $ProArtDestination

Write-Verbose "Acquiring ASUS AM4 ProArt Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $ProArtStorageURL -DestinationDirectory $ProArtDestination

Write-Verbose "ASUS AM4 ProArt Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$ProArtDestination\ProArt-LANDriver.zip" -TargetPath $ProArtEthernet   
Expand-7Zip -ArchiveFileName "$ProArtDestination\ProArt-WiFiDrivers.zip" -TargetPath $ProArtWiFi   
Expand-7Zip -ArchiveFileName "$ProArtDestination\ProArt-NVMe-RAIDStorageDrivers.zip" -TargetPath $ProArtStorage 

Write-Verbose "ZIP Files extracted successfully" -Verbose

Stop-Transcript


