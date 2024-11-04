$LGA1851Other = "C:\Logs\OSDCloud\LGA1851\Other.log"
Start-Transcript -Path $LGA1851Other

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   LGA 1851 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$OtherEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Other%20Motherboards/Ethernet%20and%20WiFi/RealTek-LANDrivers.zip"
$OtherWiFiURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Other%20Motherboards/Ethernet%20and%20WiFi/MediaTek-WiFiDrivers.zip"
$OtherStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Other%20Motherboards/Storage/IRST-StorageDrivers.zip"


####################################################################################
#             LGA 1851 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$OtherDestination = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\Other"

####################################################################################
#             LGA 1851 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$OtherEthernet = "$OtherDestination\Ethernet"
$OtherWiFi = "$OtherDestination\WiFi"
$OtherStorage = "$OtherDestination\Storage"

Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASUS LGA 1851 Other Motherboard Ethernet Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $OtherEthernetURL -DestinationDirectory $OtherDestination

Write-Verbose "Acquiring ASUS LGA 1851 Other Motherboard WiFi Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $OtherWiFiURL -DestinationDirectory $OtherDestination

Write-Verbose "Acquiring ASUS LGA 1851 Other Motherboard Storage Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $OtherStorageURL -DestinationDirectory $OtherDestination

Write-Verbose "ASUS LGA 1851 Other Motherboard Drivers downloaded" -Verbose

Write-Verbose "Processing: ZIP File extraction" -Verbose

Expand-7Zip -ArchiveFileName "$OtherDestination\Realtek-LANDriver.zip" -TargetPath $OtherEthernet  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OtherDestination\MediaTekWiFiDrivers.zip" -TargetPath $OtherWiFi  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OtherDestination\IRST-StorageDrivers.zi" -TargetPath $OtherStorage  -ErrorAction SilentlyContinue 

Write-Verbose "ZIP Files extracted successfully" -Verbose


Stop-Transcript
