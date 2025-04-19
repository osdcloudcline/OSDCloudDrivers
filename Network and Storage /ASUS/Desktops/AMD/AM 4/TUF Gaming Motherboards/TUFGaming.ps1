$AM4TUFGaming = "C:\Logs\OSDCloud\AM4\TUFGaming.log"
Start-Transcript -Path $AM4TUFGaming

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   AM4 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$TUFGamingEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/TUF%20Gaming%20Motherboards/Ethernet%20and%20WiFi/TUFGaming-Intel-I255-I226-LANDrivers.zip"
$TUFGamingEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/TUF%20Gaming%20Motherboards/Ethernet%20and%20WiFi/TUFGaming-Realtek1-LANDrivers.zip"
$TUFGamingEthernetURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/TUF%20Gaming%20Motherboards/Ethernet%20and%20WiFi/TUFGaming-Realtek2-LANDrivers.zip"
$TUFGamingEthernetURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/TUF%20Gaming%20Motherboards/Ethernet%20and%20WiFi/TUFGaming-Realtek3-LANDrivers.zip"

$TUFGamingWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/TUF%20Gaming%20Motherboards/Ethernet%20and%20WiFi/TUFGaming-Intel1-WiFiDrivers.zip"
$TUFGamingWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/TUF%20Gaming%20Motherboards/Ethernet%20and%20WiFi/TUFGaming-Intel2P1-WiFiDrivers.zip"
$TUFGamingWiFiURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/TUF%20Gaming%20Motherboards/Ethernet%20and%20WiFi/TUFGaming-Intel2P2-WiFiDrivers.zip"
$TUFGamingWiFiURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/TUF%20Gaming%20Motherboards/Ethernet%20and%20WiFi/TUFGaming-MediaTech-WiFiDrivers.zip"
$TUFGamingWiFiURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/TUF%20Gaming%20Motherboards/Ethernet%20and%20WiFi/TUFGaming-Realtek1-WiFiDrivers.zip"
$TUFGamingWiFiURL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/TUF%20Gaming%20Motherboards/Ethernet%20and%20WiFi/TUFGaming-Realtek2-WiFiDrivers.zip"

$TUFGamingStorageURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/TUF%20Gaming%20Motherboards/Storage/TUFGaming-NVMe-StorageDrivers.zip"
$TUFGamingStorageURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/TUF%20Gaming%20Motherboards/Storage/TUFGaming-RAID-SATA-StorageDrivers.zip"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$TUFGamingDestination = "C:\Drivers\Motherboards\ASUS\AM4\TUFGaming"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$TUFGamingEthernet1 = "$TUFGamingDestination\Ethernet1"
$TUFGamingEthernet2 = "$TUFGamingDestination\Ethernet2"
$TUFGamingEthernet3 = "$TUFGamingDestination\Ethernet3"
$TUFGamingEthernet4 = "$TUFGamingDestination\Ethernet4"


$TUFGamingWiFi1 = "$TUFGamingDestination\WiFi1"
$TUFGamingWiFi2 = "$TUFGamingDestination\WiFi2"
$TUFGamingWiFi3 = "$TUFGamingDestination\WiFi3"
$TUFGamingWiFi4 = "$TUFGamingDestination\WiFi4"
$TUFGamingWiFi5 = "$TUFGamingDestination\WiFi5"
$TUFGamingWiFi6 = "$TUFGamingDestination\WiFi6"

$TUFGamingStorage1 = "$TUFGamingDestination\Storage1"
$TUFGamingStorage2 = "$TUFGamingDestination\Storage2"

Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASUS AM4 TUF Gaming Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $TUFGamingEthernetURL1 -DestinationDirectory $TUFGamingDestination
Save-WebFile -SourceUrl $TUFGamingEthernetURL2 -DestinationDirectory $TUFGamingDestination
Save-WebFile -SourceUrl $TUFGamingEthernetURL3 -DestinationDirectory $TUFGamingDestination
Save-WebFile -SourceUrl $TUFGamingEthernetURL4 -DestinationDirectory $TUFGamingDestination


Write-Verbose "Acquiring ASUS AM4 TUF Gaming Motherboard WiFi Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $TUFGamingWiFiURL1 -DestinationDirectory $TUFGamingDestination
Save-WebFile -SourceUrl $TUFGamingWiFiURL2 -DestinationDirectory $TUFGamingDestination
Save-WebFile -SourceUrl $TUFGamingWiFiURL3 -DestinationDirectory $TUFGamingDestination
Save-WebFile -SourceUrl $TUFGamingWiFiURL4 -DestinationDirectory $TUFGamingDestination
Save-WebFile -SourceUrl $TUFGamingWiFiURL5 -DestinationDirectory $TUFGamingDestination
Save-WebFile -SourceUrl $TUFGamingWiFiURL6 -DestinationDirectory $TUFGamingDestination

Write-Verbose "Acquiring ASUS AM4 TUF Gaming Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $TUFGamingStorageURL1 -DestinationDirectory $TUFGamingDestination
Save-WebFile -SourceUrl $TUFGamingStorageURL2 -DestinationDirectory $TUFGamingDestination

Write-Verbose "ASUS AM4 TUF Gaming Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$TUFGamingDestination\TUFGaming-Intel-I255-I226-LANDrivers.zip" -TargetPath $TUFGamingEthernet1   
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\TUFGaming-Realtek1-LANDrivers.zip" -TargetPath $TUFGamingEthernet2   
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\TUFGaming-Realtek2-LANDrivers.zip" -TargetPath $TUFGamingEthernet3   
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\TUFGaming-Realtek3-LANDrivers.zip" -TargetPath $TUFGamingEthernet4   
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\TUFGaming-Intel1-WiFiDrivers.zip" -TargetPath $TUFGamingWiFi1  
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\TUFGaming-Intel2P1-WiFiDrivers.zip" -TargetPath $TUFGamingWiFi2  
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\TUFGaming-Intel2P2-WiFiDrivers.zip" -TargetPath $TUFGamingWiFi3  
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\TUFGaming-MediaTech-WiFiDrivers.zip" -TargetPath $TUFGamingWiFi4   
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\TUFGaming-Realtek1-WiFiDrivers.zip" -TargetPath $TUFGamingWiFi5  
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\TUFGaming-Realtek2-WiFiDrivers.zip" -TargetPath $TUFGamingWiFi6   
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\TUFGaming-NVMe-StorageDrivers.zip" -TargetPath $TUFGamingStorage1   
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\TUFGaming-RAID-SATA-StorageDrivers.zip" -TargetPath $TUFGamingStorage2 


Write-Verbose "ZIP Files extracted successfully" -Verbose


Stop-Transcript


