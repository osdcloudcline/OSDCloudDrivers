$DellOptiplexMicro3060 = "C:\Logs\OSDCloud\DELL\Micro Form Factor\Optiplex3060.log"
Start-Transcript -Path $DellOptiplexMicro3060

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#           DELL Optiplex Micro 3060 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$OptiplexMFF3060BluetoothURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Dell%20/Micro-Form%20Factor/Optiplex/3060/Bluetooth/Dell-Optiplex-MFF-3060-BluetoothDrivers.zip"
$OptiplexMFF3060BluetoothURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Dell%20/Micro-Form%20Factor/Optiplex/3060/Bluetooth/Dell-Optiplex-MFF-3060-BluetoothDrivers2.zip"

$OptiplexMFF3060EthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Dell%20/Micro-Form%20Factor/Optiplex/3060/Ethernet/Dell-Optiplex-MFF-3060-EthernetDrivers1.zip"
$OptiplexMFF3060EthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Dell%20/Micro-Form%20Factor/Optiplex/3060/Ethernet/Dell-Optiplex-MFF-3060-EthernetDrivers2.zip"
$OptiplexMFF3060EthernetURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Dell%20/Micro-Form%20Factor/Optiplex/3060/Ethernet/Dell-Optiplex-MFF-3060-EthernetDrivers3.zip"
$OptiplexMFF3060EthernetURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Dell%20/Micro-Form%20Factor/Optiplex/3060/Ethernet/Dell-Optiplex-MFF-3060-EthernetDrivers4.zip"
$OptiplexMFF3060EthernetURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Dell%20/Micro-Form%20Factor/Optiplex/3060/Ethernet/Dell-Optiplex-MFF-3060-EthernetDrivers5.zip"
$OptiplexMFF3060EthernetURL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Dell%20/Micro-Form%20Factor/Optiplex/3060/Ethernet/Dell-Optiplex-MFF-3060-EthernetDrivers6.zip"

$OptiplexMFF3060WLANURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Dell%20/Micro-Form%20Factor/Optiplex/3060/WLAN/Dell-Optiplex-MFF-3060-WLANDrivers.zip"

$OptiplexMFF3060StorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Dell%20/Micro-Form%20Factor/Optiplex/3060/Storage/Dell-Optiplex-MFF-3060-IRST-StorageDrivers.zip"


####################################################################################
#   DELL Optiplex Micro 3060 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$OptiplexMFF3060Destination = "C:\OSDCloud\Drivers\Motherboards\DELL\Micro Form Factor\Optiplex\3060"

####################################################################################
# DELL Optiplex Micro 3060 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$OptiplexMFF3060Ethernet1 = "$OptiplexMFF3060Destination\Ethernet1"
$OptiplexMFF3060Ethernet2 = "$OptiplexMFF3060Destination\Ethernet2"
$OptiplexMFF3060Ethernet3 = "$OptiplexMFF3060Destination\Ethernet3"
$OptiplexMFF3060Ethernet4 = "$OptiplexMFF3060Destination\Ethernet4"
$OptiplexMFF3060Ethernet5 = "$OptiplexMFF3060Destination\Ethernet5"
$OptiplexMFF3060Ethernet6 = "$OptiplexMFF3060Destination\Ethernet6"

$OptiplexMFF3060Bluetooth1 = "$OptiplexMFF3060Destination\Bluetooth1"
$OptiplexMFF3060Bluetooth2 = "$OptiplexMFF3060Destination\Bluetooth2"

$OptiplexMFF3060WLAN = "$OptiplexMFF3060Destination\WiFi"
$OptiplexMFF3060Storage = "$OptiplexMFF3060Destination\Storage"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force 

Write-Verbose "Acquiring DELL Optiplex Micro Form Factor 3060 Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $OptiplexMFF3060EthernetURL1 -DestinationDirectory $OptiplexMFF3060Destination
Save-WebFile -SourceUrl $OptiplexMFF3060EthernetURL2 -DestinationDirectory $OptiplexMFF3060Destination
Save-WebFile -SourceUrl $OptiplexMFF3060EthernetURL3 -DestinationDirectory $OptiplexMFF3060Destination
Save-WebFile -SourceUrl $OptiplexMFF3060EthernetURL4 -DestinationDirectory $OptiplexMFF3060Destination
Save-WebFile -SourceUrl $OptiplexMFF3060EthernetURL5 -DestinationDirectory $OptiplexMFF3060Destination
Save-WebFile -SourceUrl $OptiplexMFF3060EthernetURL6 -DestinationDirectory $OptiplexMFF3060Destination


Write-Verbose "Acquiring DELL Optiplex Micro Form Factor 3060 Motherboard WiFi Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $OptiplexMFF3060WLANURL -DestinationDirectory $OptiplexMFF3060Destination

Write-Verbose "Acquiring DELL Optiplex Micro Form Factor 3060 Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $OptiplexMFF3060StorageURL -DestinationDirectory $OptiplexMFF3060Destination

Write-Verbose "Acquiring DELL Optiplex Micro Form Factor 3060 Motherboard Bluetooth Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $OptiplexMFF3060BluetoothURL1 -DestinationDirectory $OptiplexMFF3060Destination
Save-WebFile -SourceUrl $OptiplexMFF3060BluetoothURL2 -DestinationDirectory $OptiplexMFF3060Destination

Write-Verbose "DELL Optiplex Micro Form Factor 3060 Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$OptiplexMFF3060Destination\Dell-Optiplex-MFF-3060-EthernetDrivers1.zip" -TargetPath $OptiplexMFF3060Ethernet1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OptiplexMFF3060Destination\Dell-Optiplex-MFF-3060-EthernetDrivers2.zip" -TargetPath $OptiplexMFF3060Ethernet2  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OptiplexMFF3060Destination\Dell-Optiplex-MFF-3060-EthernetDrivers3.zip" -TargetPath $OptiplexMFF3060Ethernet3  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OptiplexMFF3060Destination\Dell-Optiplex-MFF-3060-EthernetDrivers4.zip" -TargetPath $OptiplexMFF3060Ethernet4  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OptiplexMFF3060Destination\Dell-Optiplex-MFF-3060-EthernetDrivers5.zip" -TargetPath $OptiplexMFF3060Ethernet5  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OptiplexMFF3060Destination\Dell-Optiplex-MFF-3060-EthernetDrivers6.zip" -TargetPath $OptiplexMFF3060Ethernet6  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OptiplexMFF3060Destination\Dell-Optiplex-MFF-3060-WLANDrivers.zip" -TargetPath $OptiplexMFF3060WLAN  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OptiplexMFF3060Destination\Dell-Optiplex-MFF-3060-IRST-StorageDrivers.zip" -TargetPath $OptiplexMFF3060Storage  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OptiplexMFF3060Destination\Dell-Optiplex-MFF-3060-BluetoothDrivers.zip" -TargetPath $OptiplexMFF3060Bluetooth1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OptiplexMFF3060Destination\Dell-Optiplex-MFF-3060-BluetoothDrivers2.zip" -TargetPath $OptiplexMFF3060Bluetooth2  -ErrorAction SilentlyContinue 

Write-Verbose "ZIP Files extracted successfully" -Verbose

Stop-Transcript
