$LGA1851Taichi = "C:\Logs\OSDCloud\ASRock\LGA1851\Taichi.log"
Start-Transcript -Path $LGA1851Taichi

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force


####################################################################################
#          LGA 1851 Bluetooth, Ethernet, Storage and WLAN Driver URLs
####################################################################################

$TaichiEthernet1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/Taichi%20Motherboards/Ethernet/ASRock-LGA1851-Taichi-Aquatia-EthernetDrivers1.zip"
$TaichiEthernet2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/Taichi%20Motherboards/Ethernet/ASRock-LGA1851-Taichi-Killer-EthernetDrivers2.zip"
$TaichiEthernet3URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/Taichi%20Motherboards/Ethernet/ASRock-LGA1851-Taichi-Killer-EthernetDrivers3.zip"
$TaichiEthernet4URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/Taichi%20Motherboards/Ethernet/ASRock-LGA1851-Taichi-Killer-EthernetDrivers4.zip"
$TaichiEthernet5URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/Taichi%20Motherboards/Ethernet/ASRock-LGA1851-Taichi-Killer-EthernetDrivers5.zip"
$TaichiEthernet6URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/Taichi%20Motherboards/Ethernet/ASRock-LGA1851-Taichi-Killer-EthernetDrivers6.zip"
$TaichiEthernet7URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/Taichi%20Motherboards/Ethernet/ASRock-LGA1851-Taichi-Realtek-EthernetDrivers7.zip"

$TaichiStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/Taichi%20Motherboards/Storage/ASRock-LGA1851-Taichi-IRST-StorageDrivers.zip"

$TaichiWLANURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/Taichi%20Motherboards/WLAN/ASRock-LGA1851-Taichi-WLANDrivers.zip"

####################################################################################
#    LGA 1851 Bluetooth, Ethernet, Storage and WLAN Driver Download Destination
####################################################################################

$TaichiDestination = "C:\Drivers\Motherboards\ASRock\LGA1851\Taichi"

####################################################################################
#   LGA 1851 Bluetooth, Ethernet, Storage and WLAN Driver Extraction Destination
####################################################################################



$TaichiEthernet1 = "$TaichiDestination\Ethernet1"
$TaichiEthernet2 = "$TaichiDestination\Ethernet2"
$TaichiEthernet3 = "$TaichiDestination\Ethernet3"
$TaichiEthernet4 = "$TaichiDestination\Ethernet4"
$TaichiEthernet5 = "$TaichiDestination\Ethernet5"
$TaichiEthernet6 = "$TaichiDestination\Ethernet6"
$TaichiEthernet7 = "$TaichiDestination\Ethernet7"


$TaichiStorage = "$TaichiDestination\Storage"

$TaichiWLAN = "$TaichiDestination\WLAN"

Write-Verbose "Processing: Downloading ASRock LGA 1851 Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $TaichiEthernet1URL -DestinationDirectory $TaichiDestination
Save-WebFile -SourceUrl $TaichiEthernet2URL -DestinationDirectory $TaichiDestination
Save-WebFile -SourceUrl $TaichiEthernet3URL -DestinationDirectory $TaichiDestination
Save-WebFile -SourceUrl $TaichiEthernet4URL -DestinationDirectory $TaichiDestination
Save-WebFile -SourceUrl $TaichiEthernet5URL -DestinationDirectory $TaichiDestination
Save-WebFile -SourceUrl $TaichiEthernet6URL -DestinationDirectory $TaichiDestination
Save-WebFile -SourceUrl $TaichiEthernet7URL -DestinationDirectory $TaichiDestination

Write-Verbose "Processing: Downloading ASRock LGA 1851 Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $TaichiStorageURL -DestinationDirectory $TaichiDestination

Write-Verbose "Processing: Downloading ASRock LGA 1851 Motherboard WLAN Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $TaichiWLANURL -DestinationDirectory $TaichiDestination


Write-Verbose "Completed: ASRock LGA1851 Taichi Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$TaichiDestination\ASRock-LGA1851-Taichi-Taichitia-EthernetDrivers1.zip" -TargetPath $TaichiEthernet1  
Expand-7Zip -ArchiveFileName "$TaichiDestination\ASRock-LGA1851-Taichi-Killer-EthernetDrivers2.zip" -TargetPath $TaichiEthernet2   
Expand-7Zip -ArchiveFileName "$TaichiDestination\ASRock-LGA1851-Taichi-Killer-EthernetDrivers3.zip" -TargetPath $TaichiEthernet3  
Expand-7Zip -ArchiveFileName "$TaichiDestination\ASRock-LGA1851-Taichi-Killer-EthernetDrivers4.zip" -TargetPath $TaichiEthernet4   
Expand-7Zip -ArchiveFileName "$TaichiDestination\ASRock-LGA1851-Taichi-Killer-EthernetDrivers5.zip" -TargetPath $TaichiEthernet5  
Expand-7Zip -ArchiveFileName "$TaichiDestination\ASRock-LGA1851-Taichi-Killer-EthernetDrivers6.zip" -TargetPath $TaichiEthernet6   
Expand-7Zip -ArchiveFileName "$TaichiDestination\ASRock-LGA1851-Taichi-Realtek-EthernetDrivers7.zip" -TargetPath $TaichiEthernet7  
Expand-7Zip -ArchiveFileName "$TaichiDestination\ASRock-LGA1851-Taichi-IRST-StorageDrivers.zip" -TargetPath $TaichiStorage   
Expand-7Zip -ArchiveFileName "$TaichiDestination\ASRock-LGA1851-Taichi-WLANDrivers.zip" -TargetPath $TaichiWLAN  


Write-Verbose "Completed: ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
