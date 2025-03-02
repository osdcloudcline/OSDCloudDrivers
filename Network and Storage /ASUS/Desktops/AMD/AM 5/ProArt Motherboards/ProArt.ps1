$AM5ProArt = "C:\Logs\OSDCloud\ASUS\AM5\ProArt.log"
Start-Transcript -Path $AM5ProArt

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   AM5 Ethernet and Storage Driver URLs
####################################################################################

$ProArtBluetoothURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/ProArt%20Motherboards/Bluetooth/ASUS-AM5-ProArt-BluetoothDrivers.zip"

$ProArtThunderboltURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/ProArt%20Motherboards/Thunderbolt/ASUS-AM5-ProArt-ThunderboltDrivers.zip"


$ProArtEthernet1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/ProArt%20Motherboards/Ethernet/ASUS-AM5-ProArt-EthernetDrivers1.zip"
$ProArtEthernet2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/ProArt%20Motherboards/Ethernet/ASUS-AM5-ProArt-EthernetDrivers2.zip"


$ProArtStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/ProArt%20Motherboards/Storage/ASUS-AM5-ProArt-RAID-StorageDrivers.zip"


$ProArtWLANURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/ProArt%20Motherboards/WLAN/ASUS-AM5-ProArt-WLANDrivers.zip"


####################################################################################
#             AM5 Ethernet and Storage Driver Download Destination
####################################################################################

$ProArtDestination = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM5\ProArt"

####################################################################################
#             AM5 Ethernet and Storage Driver Extraction Destination
####################################################################################

$ProArtEthernet1 = "$ProArtDestination\Ethernet1"
$ProArtEthernet2 = "$ProArtDestination\Ethernet2"


$ProArtBluetooth = "$ProArtDestination\Bluetooth"

$ProArtThunderbolt = "$ProArtDestination\Thunderbolt"

$ProArtStorage = "$ProArtDestination\Storage"

$ProArtWLAN = "$ProArtDestination\WLAN"


Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASUS AM5 ProArt Motherboard Bluetooth Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $ProArtBluetoothURL -DestinationDirectory $ProArtDestination

Write-Verbose "Acquiring ASUS AM5 ProArt Motherboard Thunderbolt Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $ProArtThunderboltURL -DestinationDirectory $ProArtDestination


Write-Verbose "Acquiring ASUS AM5 ProArt Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $ProArtEthernet1URL -DestinationDirectory $ProArtDestination
Save-WebFile -SourceUrl $ProArtEthernet2URL -DestinationDirectory $ProArtDestination


Write-Verbose "Acquiring ASUS AM5 ProArt Motherboard WLAN Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $ProArtWLANURL -DestinationDirectory $ProArtDestination


Write-Verbose "Acquiring ASUS AM5 ProArt Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $ProArtStorageURL -DestinationDirectory $ProArtDestination


Write-Verbose "ASUS AM5 ProArt Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$ProArtDestination\ASUS-AM5-ProArt-BluetoothDrivers.zip" -TargetPath $ProArtBluetooth  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ProArtDestination\ASUS-AM5-ProArt-ThunderboltDrivers.zip" -TargetPath $ProArtThunderbolt  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ProArtDestination\ASUS-AM5-ProArt-EthernetDrivers1.zip" -TargetPath $ProArtEthernet1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ProArtDestination\ASUS-AM5-ProArt-EthernetDrivers2.zip" -TargetPath $ProArtEthernet2  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ProArtDestination\ASUS-AM5-ProArt-WLANDrivers.zip" -TargetPath $ProArtWLAN  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ProArtDestination\ASUS-AM5-ProArt-RAID-StorageDrivers.zip" -TargetPath $ProArtStorage  -ErrorAction SilentlyContinue 

Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
