$LGA1700Business = "C:\Logs\OSDCloud\ASUS\LGA1700\Business.log"
Start-Transcript -Path $LGA1700Business

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   LGA 1700 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$BusinessEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Business%20Motherboards/Ethernet%20and%20WiFi/Intel-I219-LANDrivers.zip"
$BusinessEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Business%20Motherboards/Ethernet%20and%20WiFi/Realtek-LANDriver-1.zip"
$BusinessEthernetURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Business%20Motherboards/Ethernet%20and%20WiFi/Realtek-LANDriver-2.zip"
$BusinessEthernetURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Business%20Motherboards/Ethernet%20and%20WiFi/Realtek-LANDriver-3.zip"
$BusinessWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Business%20Motherboards/Ethernet%20and%20WiFi/MediaTek-WiFiDrivers.zip"
$BusinessWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Business%20Motherboards/Ethernet%20and%20WiFi/Realtek-WiFiDrivers-1.zip"
$BusinessWiFiURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Business%20Motherboards/Ethernet%20and%20WiFi/Realtek-WiFiDrivers-2.zip"
$BusinessStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Business%20Motherboards/Storage/IRST-StorageDrivers.zip"


####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$BusinessDestination = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Business"

####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$BusinessEthernet1 = "$BusinessDestination\Ethernet1"
$BusinessEthernet2 = "$BusinessDestination\Ethernet2"
$BusinessEthernet3 = "$BusinessDestination\Ethernet3"
$BusinessEthernet4 = "$BusinessDestination\Ethernet4"
$BusinessWiFi1 = "$BusinessDestination\WiFi1"
$BusinessWiFi2 = "$BusinessDestination\WiFi2"
$BusinessWiFi3 = "$BusinessDestination\WiFi3"
$BusinessStorage = "$BusinessDestination\Storage"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

Write-Verbose "Acquiring ASUS LGA 1700 Business Motherboard Ethernet Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $BusinessEthernetURL1 -DestinationDirectory $BusinessDestination
Save-WebFile -SourceUrl $BusinessEthernetURL2 -DestinationDirectory $BusinessDestination
Save-WebFile -SourceUrl $BusinessEthernetURL3 -DestinationDirectory $BusinessDestination
Save-WebFile -SourceUrl $BusinessEthernetURL4 -DestinationDirectory $BusinessDestination
Write-Host

Write-Verbose "Acquiring ASUS LGA 1700 Business Motherboard WiFi Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $BusinessWiFiURL1 -DestinationDirectory $BusinessDestination
Save-WebFile -SourceUrl $BusinessWiFiURL2 -DestinationDirectory $BusinessDestination
Save-WebFile -SourceUrl $BusinessWiFiURL3 -DestinationDirectory $BusinessDestination
Write-Host

Write-Verbose "Acquiring ASUS LGA 1700 Business Motherboard Storage Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $BusinessStorageURL -DestinationDirectory $BusinessDestination

Write-Verbose "ASUS LGA 1700 Business Motherboard Drivers downloaded" -Verbose

Write-Verbose "Processing: ZIP File extraction" -Verbose

Expand-7Zip -ArchiveFileName "$BusinessDestination\Intel-I219-LANDrivers.zip" -TargetPath $BusinessEthernet1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$BusinessDestination\Realtek-LANDriver-1.zip" -TargetPath $BusinessEthernet2  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$BusinessDestination\Realtek-LANDriver-2.zip" -TargetPath $BusinessEthernet3  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$BusinessDestination\Realtek-LANDriver-3.zip" -TargetPath $BusinessEthernet4  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$BusinessDestination\MediaTek-WiFiDrivers.zip" -TargetPath $BusinessWiFi1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$BusinessDestination\Realtek-WiFiDrivers-1.zip" -TargetPath $BusinessWiFi2 -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$BusinessDestination\Realtek-WiFiDrivers-2.zip" -TargetPath $BusinessWiFi3  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$BusinessDestination\IRSTDrivers.zip" -TargetPath $BusinessStorage  -ErrorAction SilentlyContinue 

Write-Verbose "ZIP Files extracted successfully" -Verbose

Stop-Transcript
