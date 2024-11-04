$LGA1851TUF = "C:\Logs\OSDCloud\LGA1851\TUF.log"
Start-Transcript -Path $LGA1851TUF

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   LGA 1851 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$TUFEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/TUF%20Gaming/Ethernet%20and%20WiFi/Intel-LANDriver.zip"
$TUFWiFiURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/TUF%20Gaming/Ethernet%20and%20WiFi/MediaTek-WiFiDrivers.zip"
$TUFStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/TUF%20Gaming/Storage/IRST-StorageDrivers.zip"


####################################################################################
#             LGA 1851 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$TUFDestination = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\TUF"

####################################################################################
#             LGA 1851 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$TUFEthernet = "$TUFDestination\Ethernet"
$TUFWiFi = "$TUFDestination\WiFi"
$TUFStorage = "$TUFDestination\Storage"

Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASUS LGA 1851 TUF Gaming Motherboard Ethernet Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $TUFEthernetURL -DestinationDirectory $TUFDestination

Write-Verbose "Acquiring ASUS LGA 1851 TUF Gaming Motherboard WiFi Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $TUFWiFiURL -DestinationDirectory $TUFDestination

Write-Verbose "Acquiring ASUS LGA 1851 TUF Gaming Motherboard Storage Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $TUFStorageURL -DestinationDirectory $TUFDestination

Write-Verbose "ASUS LGA 1851 TUF Gaming Motherboard Drivers downloaded" -Verbose

Write-Verbose "Processing: ZIP File extraction" -Verbose

Expand-7Zip -ArchiveFileName "$TUFDestination\Intel-LANDriver.zip" -TargetPath $TUFEthernet  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$TUFDestination\MediaTek-WiFiDrivers.zip" -TargetPath $TUFWiFi  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$TUFDestination\IRST-StorageDrivers.zip" -TargetPath $TUFStorage  -ErrorAction SilentlyContinue 

Write-Verbose "ZIP Files extracted successfully" -Verbose


Stop-Transcript

