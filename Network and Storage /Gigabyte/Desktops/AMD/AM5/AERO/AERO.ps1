$AM5AERO = "C:\Logs\OSDCloud\Gigabyte\AM5\AERO.log"
Start-Transcript -Path $AM5AERO

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"


####################################################################################
#                   AM5 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$AEROEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AERO/Ethernet,%20WiFi%20and%20Bluetooth/Gigabyte-AM5-AERO-EthernetDriver.zip"

$AEROBluetoothURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AERO/Ethernet,%20WiFi%20and%20Bluetooth/Gigabyte-AM5-AERO-BluetoothDriver.zip"

$AEROWiFiURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AERO/Ethernet,%20WiFi%20and%20Bluetooth/Gigabyte-AM5-AERO-WLANDrivers.zip"

$AEROStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AERO/Storage/Gigabyte-AM5-AERO-NVME-RAID-StorageDrivers.zip"


####################################################################################
#             AM5 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$AERODestination = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\AERO"

####################################################################################
#             AM5 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$AEROEthernet = "$AERODestination\Ethernet"

$AEROBluetooth = "$AERODestination\Bluetooth"

$AEROWiFi = "$AERODestination\WiFi1"

$AEROStorage = "$AERODestination\Storage"


Import-Module -Name OSD -Force 

Write-Verbose "Acquiring Gigabyte AM5 AERO Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl  $AEROEthernetURL -DestinationDirectory $AERODestination

Write-Verbose "Acquiring Gigabyte AM5 AERO Motherboard Bluetooth Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl  $AEROBluetoothURL -DestinationDirectory $AERODestination

Write-Verbose "Acquiring Gigabyte AM5 AERO Motherboard WiFi Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl  $AEROWiFiURL -DestinationDirectory $AERODestination



Write-Verbose "Acquiring Gigabyte AM5 AERO Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $AEROStorageURL -DestinationDirectory $AERODestination


Write-Verbose "Gigabyte AM5 AERO Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$AERODestination\Gigabyte-AM5-AERO-EthernetDriver.zip" -TargetPath $AEROEthernet  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$AERODestination\Gigabyte-AM5-AERO-BluetoothDriver.zip" -TargetPath $AEROBluetooth  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$AERODestination\Gigabyte-AM5-AERO-WLANDrivers.zip" -TargetPath $AEROWiFi  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$AERODestination\Gigabyte-AM5-AERO-NVME-RAID-StorageDrivers.zip" -TargetPath $AEROStorage  -ErrorAction SilentlyContinue 


Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript

