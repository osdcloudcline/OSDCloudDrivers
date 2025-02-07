$LGA1700Taichi = "C:\Logs\OSDCloud\ASRock\LGA1700\Taichi.log"
Start-Transcript -Path $LGA1700Taichi

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#          LGA 1700 Bluetooth, Ethernet, Storage and WLAN Driver URLs
####################################################################################


$TaichiBluetoothURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Taichi%20Motherboards/Bluetooth/ASRock-LGA1700-Taichi-BluetoothDrivers.zip"

$TaichiEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Taichi%20Motherboards/Ethernet/ASRock-LGA1700-Taichi-Intel-EthernetDrivers.zip"

$TaichiStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Taichi%20Motherboards/Storage/ASRock-LGA1700-Taichi-IRST-StorageDrivers.zip"

$TaichiWLANURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Taichi%20Motherboards/WLAN/ASRock-LGA1700-Taichi-Intel-Killer-WLANDrivers.zip"


####################################################################################
#    LGA 1700 Bluetooth, Ethernet, Storage and WLAN Driver Download Destination
####################################################################################

$TaichiDestination = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\Taichi"

####################################################################################
#   LGA 1700 Bluetooth, Ethernet, Storage and WLAN Driver Extraction Destination
####################################################################################

$TaichiBluetooth = "$TaichiDestination\Bluetooth"

$TaichiEthernet = "$TaichiDestination\Ethernet"

$TaichiStorage = "$TaichiDestination\Storage"

$TaichiWLAN = "$TaichiDestination\WLAN1"


Write-Verbose "Processing: Downloading ASRock LGA 1700 Motherboard Bluetooth Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $TaichiBluetoothURL -DestinationDirectory $TaichiDestination

Write-Verbose "Processing: Downloading ASRock LGA 1700 Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $TaichiEthernetURL -DestinationDirectory $TaichiDestination


Write-Verbose "Processing: Downloading ASRock LGA 1700 Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $TaichiStorageURL -DestinationDirectory $TaichiDestination

Write-Verbose "Processing: Downloading ASRock LGA 1700 Motherboard WLAN Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $TaichiWLANURL -DestinationDirectory $TaichiDestination


Write-Verbose "Completed: ASRock LGA1700 Taichi Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$TaichiDestination\ASRock-LGA1700-Taichi-BluetoothDrivers.zip" -TargetPath $TaichiBluetooth -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$TaichiDestination\ASRock-LGA1700-Taichi-Intel-EthernetDrivers.zip" -TargetPath $TaichiEthernet  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$TaichiDestination\ASRock-LGA1700-Taichi-IRST-StorageDrivers.zip" -TargetPath $TaichiStorage  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$TaichiDestination\ASRock-LGA1700-Taichi-Intel-Killer-WLANDrivers.zip" -TargetPath $TaichiWLAN  -ErrorAction SilentlyContinue 


Write-Verbose "Completed: ZIP Files extracted successfully" -Verbose
Write-Host


Stop-Transcript
