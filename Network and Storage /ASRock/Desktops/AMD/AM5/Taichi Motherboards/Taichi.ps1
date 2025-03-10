$AM5Taichi = "C:\Logs\OSDCloud\ASRock\AM5\Taichi.log"
Start-Transcript -Path $AM5Taichi

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   AM5 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$TaichiBluetoothURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/Taichi%20Motherboards/Network%20and%20WiFi/ASRock-AM5-Taichi-Intel-BluetoothDrivers.zip"
$TaichiBluetoothURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/Taichi%20Motherboards/Network%20and%20WiFi/ASRock-AM5-Taichi-MediaTek-BluetoothDrivers.zip"
$TaichiEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/Taichi%20Motherboards/Network%20and%20WiFi/ASRock-AM5-Taichi-Realtek-EthernetDrivers.zip"
$TaichiWiFiURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/Taichi%20Motherboards/Network%20and%20WiFi/ASRock-AM5-Taichi-MediaTek-WiFiDrivers.zip"

$TaichiStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/Taichi%20Motherboards/Storage/ASRock-AM5-Taichi-RAID-NVMe-StorageDrivers.zip"


####################################################################################
#             AM5 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$TaichiDestination = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\Taichi"

####################################################################################
#             AM5 Ethernet,Bluetooth  WiFi and Storage Driver Extraction Destination
####################################################################################

$TaichiEthernet = "$TaichiDestination\Ethernet"
$TaichiBluetooth1 = "$TaichiDestination\Bluetooth1"
$TaichiBluetooth2 = "$TaichiDestination\Bluetooth2"
$TaichiWiFi = "$TaichiDestination\WiFi"


$TaichiStorage = "$TaichiDestination\Storage"


Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASRock AM5 Taichi Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $TaichiEthernetURL -DestinationDirectory $TaichiDestination

Write-Verbose "Acquiring ASRock AM5 Taichi Motherboard Bluetooth Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $TaichiBluetoothURL1 -DestinationDirectory $TaichiDestination
Save-WebFile -SourceUrl $TaichiBluetoothURL2 -DestinationDirectory $TaichiDestination

Write-Verbose "Acquiring ASRock AM5 Taichi Motherboard WiFi Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $TaichiWiFiURL -DestinationDirectory $TaichiDestination

Write-Verbose "Acquiring ASRock AM5 Taichi Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $TaichiStorageURL -DestinationDirectory $TaichiDestination

Write-Verbose "ASRock AM5 Taichi Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$TaichiDestination\ASRock-AM5-Taichi-Intel-BluetoothDrivers.zip" -TargetPath $TaichiBluetooth1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$TaichiDestination\ASRock-AM5-Taichi-MediaTek-BluetoothDrivers.zip" -TargetPath $TaichiBluetooth2  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$TaichiDestination\ASRock-AM5-Taichi-Realtek-EthernetDrivers.zip" -TargetPath $TaichiEthernet  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$TaichiDestination\ASRock-AM5-Taichi-MediaTek-WiFiDrivers.zip" -TargetPath $TaichiWiFi  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$TaichiDestination\ASRock-AM5-Taichi-RAID-NVMe-StorageDrivers.zip" -TargetPath $TaichiStorage  -ErrorAction SilentlyContinue 


Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
