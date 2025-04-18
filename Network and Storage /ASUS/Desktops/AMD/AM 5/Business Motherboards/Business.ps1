$AM5Business = "C:\Logs\OSDCloud\ASUS\AM5\Business.log"
Start-Transcript -Path $AM5Business

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   AM5 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$BusinessEthernet1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/Business%20Motherboards/Ethernet%20and%20WiFi/ASUS-AM5-Business-EthernetDriver-Realtek-Windows10.zip"
$BusinessEthernet2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/Business%20Motherboards/Ethernet%20and%20WiFi/ASUS-AM5-Business-EthernetDriver-Realtek-Windows10-2.zip"
$BusinessEthernet3URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/Business%20Motherboards/Ethernet%20and%20WiFi/ASUS-AM5-Business-EthernetDriver-Realtek-Windows11.zip"
$BusinessEthernet4URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/Business%20Motherboards/Ethernet%20and%20WiFi/ASUS-AM5-Business-EthernetDriver-Realtek-Windows11-2.zip"

$BusinessWiFiURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/Business%20Motherboards/Ethernet%20and%20WiFi/ASUS-AM5-Business-MediaTek-WirelessDriver.zip"

$BusinessStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/Business%20Motherboards/Storage/ASUS-AM5-Business-RAID-NVMe-StorageDriver.zip"


####################################################################################
#             AM5 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$BusinessDestination = "C:\Drivers\Motherboards\ASUS\AM5\Business"

####################################################################################
#             AM5 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$BusinessEthernet1 = "$BusinessDestination\Ethernet1"
$BusinessEthernet2 = "$BusinessDestination\Ethernet2"
$BusinessEthernet3 = "$BusinessDestination\Ethernet3"
$BusinessEthernet4 = "$BusinessDestination\Ethernet4"

$BusinessWiFi = "$BusinessDestination\WLAN"

$BusinessStorage = "$BusinessDestination\Storage"


Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASUS AM5 Business Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $BusinessEthernet1URL -DestinationDirectory $BusinessDestination
Save-WebFile -SourceUrl $BusinessEthernet2URL -DestinationDirectory $BusinessDestination
Save-WebFile -SourceUrl $BusinessEthernet3URL -DestinationDirectory $BusinessDestination
Save-WebFile -SourceUrl $BusinessEthernet4URL -DestinationDirectory $BusinessDestination


Write-Verbose "Acquiring ASUS AM5 Business Motherboard WiFi Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $BusinessWiFiURL -DestinationDirectory $BusinessDestination

Write-Verbose "Acquiring ASUS AM5 Business Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $BusinessStorageURL -DestinationDirectory $BusinessDestination

Write-Verbose "ASUS AM4 Business Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$BusinessDestination\ASUS-AM5-Business-EthernetDriver-Realtek-Windows10.zip" -TargetPath $BusinessEthernet1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$BusinessDestination\ASUS-AM5-Business-EthernetDriver-Realtek-Windows10-2.zip" -TargetPath $BusinessEthernet2  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$BusinessDestination\ASUS-AM5-Business-EthernetDriver-Realtek-Windows11.zip" -TargetPath $BusinessEthernet3  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$BusinessDestination\ASUS-AM5-Business-EthernetDriver-Realtek-Windows11-2.zip" -TargetPath $BusinessEthernet4  -ErrorAction SilentlyContinue 

Expand-7Zip -ArchiveFileName "$BusinessDestination\ASUS-AM5-Business-MediaTek-WirelessDriver.zip" -TargetPath $BusinessWiFi  -ErrorAction SilentlyContinue 

Expand-7Zip -ArchiveFileName "$BusinessDestination\ASUS-AM5-Business-RAID-NVMe-StorageDriver.zip" -TargetPath $BusinessStorage1  -ErrorAction SilentlyContinue 


Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript




