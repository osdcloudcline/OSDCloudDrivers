$AM4AERO = "C:\Logs\OSDCloud\Gigabyte\AM4\AERO.log"
Start-Transcript -Path $AM4AERO

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   AM4 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$AEROEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AERO/Ethernet%20and%20WiFi/Gigabyte-AERO-LANDrivers.zip"

$AEROBluetoothURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AERO/Ethernet%20and%20WiFi/Gigabyte-AERO-BluetoothDrivers.zip"

$AEROWiFi1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AERO/Ethernet%20and%20WiFi/Gigabyte-AERO-WLANDrivers1.zip"
$AEROWiFi2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AERO/Ethernet%20and%20WiFi/Gigabyte-AERO-WLANDrivers2.zip"

$AEROStorage1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AERO/Storage/Gigabyte-AERO-RAID-NVMe-StorageDrivers.zip"
$AEROStorage2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AERO/Storage/Gigabyte-AERO-RAID-SATA-StorageDrivers.zip"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$AERODestination = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\AERO"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$AEROEthernet = "$AERODestination\Ethernet"

$AEROBluetooth = "$AERODestination\Bluetooth"

$AEROWiFi1 = "$AERODestination\WiFi1"
$AEROWiFi2 = "$AERODestination\WiFi2"

$AEROStorage1 = "$AERODestination\Storage1"
$AEROStorage2 = "$AERODestination\Storage2"

Import-Module -Name OSD -Force 

Write-Verbose "Acquiring Gigabyte AM4 AERO Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl  $AEROEthernetURL -DestinationDirectory $AERODestination

Write-Verbose "Acquiring Gigabyte AM4 AERO Motherboard Bluetooth Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl  $AEROBluetoothURL -DestinationDirectory $AERODestination

Write-Verbose "Acquiring Gigabyte AM4 AERO Motherboard WiFi Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl  $AEROWiFi1URL -DestinationDirectory $AERODestination
Save-WebFile -SourceUrl  $AEROWiFi2URL -DestinationDirectory $AERODestination


Write-Verbose "Acquiring Gigabyte AM4 AERO Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $AEROStorage1URL -DestinationDirectory $AERODestination
Save-WebFile -SourceUrl $AEROStorage2URL -DestinationDirectory $AERODestination

Write-Verbose "Gigabyte AM4 AERO Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$AERODestination\Gigabyte-AERO-LANDrivers.zip" -TargetPath $AEROEthernet  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$AERODestination\Gigabyte-AERO-BluetoothDrivers.zip" -TargetPath $AEROBluetooth  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$AERODestination\Gigabyte-AERO-WLANDrivers1.zip" -TargetPath $AEROWiFi1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$AERODestination\Gigabyte-AERO-WLANDrivers2.zip" -TargetPath $AEROWiFi2  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$AERODestination\Gigabyte-AERO-RAID-NVMe-StorageDrivers.zip" -TargetPath $AEROStorage1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$AERODestination\Gigabyte-AERO-RAID-SATA-StorageDrivers.zip" -TargetPath $AEROStorage2  -ErrorAction SilentlyContinue 

Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
