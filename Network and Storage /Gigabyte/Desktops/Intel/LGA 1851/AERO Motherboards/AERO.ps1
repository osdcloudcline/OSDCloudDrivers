$LGA1851AERO = "C:\Logs\OSDCloud\Gigabyte\LGA 1851\AERO.log"
Start-Transcript -Path $LGA1851AERO

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   LGA 1851 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$AEROEthernet1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201851/AERO%20Motherboards/Ethernet/Gigabyte-LGA1851-AERO-EthernetDrivers1.zip"
$AEROEthernet2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201851/AERO%20Motherboards/Ethernet/Gigabyte-LGA1851-AERO-EthernetDrivers2.zip"
$AEROEthernet3URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201851/AERO%20Motherboards/Ethernet/Gigabyte-LGA1851-AERO-EthernetDrivers3.zip"
$AEROEthernet4URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201851/AERO%20Motherboards/Ethernet/Gigabyte-LGA1851-AERO-EthernetDrivers4.zip"

$AEROWiFiURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201851/AERO%20Motherboards/WLAN/Gigabyte-LGA1851-AERO-WLANDrivers.zip"

$AEROStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201851/AERO%20Motherboards/Storage/IRST-StorageDrivers.zip"

####################################################################################
#             LGA 1851 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$AERODestination = "C:\Drivers\Motherboards\Gigabyte\LGA1851\AERO"

####################################################################################
#             LGA 1851 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$AEROEthernet1 = "$AERODestination\Ethernet1"
$AEROEthernet2 = "$AERODestination\Ethernet2"
$AEROEthernet3 = "$AERODestination\Ethernet3"
$AEROEthernet4 = "$AERODestination\Ethernet4"

$AEROWiFi = "$AERODestination\WLAN"

$AEROStorage = "$AERODestination\Storage"

Import-Module -Name OSD -Force 

Write-Verbose "Acquiring Gigabyte LGA 1851 AERO Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl  $AEROEthernet1URL -DestinationDirectory $AERODestination
Save-WebFile -SourceUrl  $AEROEthernet2URL -DestinationDirectory $AERODestination
Save-WebFile -SourceUrl  $AEROEthernet3URL -DestinationDirectory $AERODestination
Save-WebFile -SourceUrl  $AEROEthernet4URL -DestinationDirectory $AERODestination

Write-Verbose "Acquiring Gigabyte LGA 1851 AERO Motherboard WiFi Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl  $AEROWiFiURL -DestinationDirectory $AERODestination

Write-Verbose "Acquiring Gigabyte LGA 1851 AERO Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $AEROStorageURL -DestinationDirectory $AERODestination

Write-Verbose "Gigabyte LGA 1851 AERO Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$AERODestination\Gigabyte-LGA1851-AERO-EthernetDrivers1.zip" -TargetPath $AEROEthernet1
Expand-7Zip -ArchiveFileName "$AERODestination\Gigabyte-LGA1851-AERO-EthernetDrivers2.zip" -TargetPath $AEROEthernet2  
Expand-7Zip -ArchiveFileName "$AERODestination\Gigabyte-LGA1851-AERO-EthernetDrivers3.zip" -TargetPath $AEROEthernet3
Expand-7Zip -ArchiveFileName "$AERODestination\Gigabyte-LGA1851-AERO-EthernetDrivers4.zip" -TargetPath $AEROEthernet4

Expand-7Zip -ArchiveFileName "$AERODestination\Gigabyte-LGA1851-AERO-WLANDrivers.zip" -TargetPath $AEROWiFi   
   
Expand-7Zip -ArchiveFileName "$AERODestination\IRST-StorageDrivers.zip" -TargetPath $AEROStorage  

Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
