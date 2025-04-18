$AM5TUFGaming = "C:\Logs\OSDCloud\AM5\TUFGaming.log"
Start-Transcript -Path $AM5TUFGaming

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   AM5 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$TUFGamingEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/TUF%20Gaming%20Motherboards/Ethernet/ASUS-AM5-TUFGaming-EthernetDrivers1.zip"
$TUFGamingEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/TUF%20Gaming%20Motherboards/Ethernet/ASUS-AM5-TUFGaming-EthernetDrivers2.zip"
$TUFGamingEthernetURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/TUF%20Gaming%20Motherboards/Ethernet/ASUS-AM5-TUFGaming-EthernetDrivers3.zip"

$TUFGamingStorageURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/TUF%20Gaming%20Motherboards/Storage/ASUS-AM5-TUFGaming-RAID-StorageDrivers.zip"

$TUFGamingWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/TUF%20Gaming%20Motherboards/WLAN/ASUS-AM5-TUFGaming-WLANDrivers1.zip"
$TUFGamingWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/TUF%20Gaming%20Motherboards/WLAN/ASUS-AM5-TUFGaming-WLANDrivers2.zip"
$TUFGamingWiFiURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/TUF%20Gaming%20Motherboards/WLAN/ASUS-AM5-TUFGaming-WLANDrivers3.zip"
$TUFGamingWiFiURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/TUF%20Gaming%20Motherboards/WLAN/ASUS-AM5-TUFGaming-WLANDrivers4.zip"

####################################################################################
#             AM5 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$TUFGamingDestination = "C:\Drivers\Motherboards\ASUS\AM5\TUFGaming"

####################################################################################
#             AM5 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$TUFGamingEthernet1 = "$TUFGamingDestination\Ethernet1"
$TUFGamingEthernet2 = "$TUFGamingDestination\Ethernet2"
$TUFGamingEthernet3 = "$TUFGamingDestination\Ethernet3"

$TUFGamingWiFi1 = "$TUFGamingDestination\WLAN1"
$TUFGamingWiFi2 = "$TUFGamingDestination\WLAN2"
$TUFGamingWiFi3 = "$TUFGamingDestination\WLAN3"
$TUFGamingWiFi4 = "$TUFGamingDestination\WLAN4"

$TUFGamingStorage1 = "$TUFGamingDestination\Storage"

Write-Verbose "Acquiring ASUS AM5 TUF Gaming Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $TUFGamingEthernetURL1 -DestinationDirectory $TUFGamingDestination
Save-WebFile -SourceUrl $TUFGamingEthernetURL2 -DestinationDirectory $TUFGamingDestination
Save-WebFile -SourceUrl $TUFGamingEthernetURL3 -DestinationDirectory $TUFGamingDestination


Write-Verbose "Acquiring ASUS AM5 TUF Gaming Motherboard WiFi Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $TUFGamingWiFiURL1 -DestinationDirectory $TUFGamingDestination
Save-WebFile -SourceUrl $TUFGamingWiFiURL2 -DestinationDirectory $TUFGamingDestination
Save-WebFile -SourceUrl $TUFGamingWiFiURL3 -DestinationDirectory $TUFGamingDestination
Save-WebFile -SourceUrl $TUFGamingWiFiURL4 -DestinationDirectory $TUFGamingDestination

Write-Verbose "Acquiring ASUS AM5 TUF Gaming Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $TUFGamingStorageURL1 -DestinationDirectory $TUFGamingDestination

Write-Verbose "ASUS AM5 TUF Gaming Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$TUFGamingDestination\ASUS-AM5-TUFGaming-EthernetDrivers1.zip" -TargetPath $TUFGamingEthernet1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\ASUS-AM5-TUFGaming-EthernetDrivers2.zip" -TargetPath $TUFGamingEthernet2  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\ASUS-AM5-TUFGaming-EthernetDrivers3.zip" -TargetPath $TUFGamingEthernet3  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\ASUS-AM5-TUFGaming-WLANDrivers1.zip" -TargetPath $TUFGamingWiFi1  -ErrorAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\ASUS-AM5-TUFGaming-WLANDrivers2.zip" -TargetPath $TUFGamingWiFi2  -ErrorAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\ASUS-AM5-TUFGaming-WLANDrivers3.zip" -TargetPath $TUFGamingWiFi3  -ErrorAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\ASUS-AM5-TUFGaming-WLANDrivers4.zip" -TargetPath $TUFGamingWiFi4  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$TUFGamingDestination\ASUS-AM5-TUFGaming-RAID-StorageDrivers.zip" -TargetPath $TUFGamingStorage1  -ErrorAction SilentlyContinue 

Write-Verbose "ZIP Files extracted successfully" -Verbose


Stop-Transcript
