$AM4Taichi = "C:\Logs\OSDCloud\ASRock\AM4\Taichi.log"
Start-Transcript -Path $AM4Taichi

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"


####################################################################################
#                   AM4 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$TaichiEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Taichi%20Motherboards/Ethernet%20and%20WiFi/ASRock-Taichi-Intel-LANDrivers.zip"

$TaichiBluetoothURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Taichi%20Motherboards/Ethernet%20and%20WiFi/ASRock-Taichi-BluetoothDrivers.zip"

$TaichiWiFiURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Taichi%20Motherboards/Ethernet%20and%20WiFi/ASRock-Taichi-Intel-WLANDrivers.zip"

$TaichiStorageURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Taichi%20Motherboards/Storage/ASRock-Taichi-NVMe-StorageDrivers.zip"
$TaichiStorageURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Taichi%20Motherboards/Storage/ASRock-Taichi-SATA-StorageDrivers.zip"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$TaichiDestination = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Taichi"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$TaichiEthernet = "$TaichiDestination\Ethernet"

$TaichiBluetooth = "$TaichiDestination\Bluetooth"

$TaichiWiFi = "$TaichiDestination\WiFi"

$TaichiStorage1 = "$TaichiDestination\Storage1"
$TaichiStorage2 = "$TaichiDestination\Storage2"

Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASRock AM4 Taichi Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $TaichiEthernetURL -DestinationDirectory $TaichiDestination

Write-Verbose "Acquiring ASRock AM4 Taichi Motherboard Bluetooth Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $TaichiBluetoothURL -DestinationDirectory $TaichiDestination

Write-Host
Write-Verbose "Acquiring ASRock AM4 Taichi Motherboard WiFi Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $TaichiWiFiURL -DestinationDirectory $TaichiDestination

Write-Host

Write-Verbose "Acquiring ASRock AM4 Taichi Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $TaichiStorageURL1 -DestinationDirectory $TaichiDestination
Save-WebFile -SourceUrl $TaichiStorageURL2 -DestinationDirectory $TaichiDestination

Write-Verbose "ASRock AM4 Taichi Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$TaichiDestination\ASRock-Taichi-Intel-LANDrivers.zip" -TargetPath $TaichiEthernet  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$TaichiDestination\ASRock-Taichi-BluetoothDrivers.zip" -TargetPath $TaichiBluetooth  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$TaichiDestinationn\ASRock-Taichi-Intel-WLANDrivers.zip" -TargetPath $TaichiWiFi  -ErrorAction SilentlyContinue 



Expand-7Zip -ArchiveFileName "$TaichiDestination\ASRock-Taichi-NVMe-StorageDrivers.zip" -TargetPath $TaichiStorage1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$TaichiDestination\ASRock-Taichi-SATA-StorageDrivers.zip" -TargetPath $TaichiStorage2  -ErrorAction SilentlyContinue 

Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
