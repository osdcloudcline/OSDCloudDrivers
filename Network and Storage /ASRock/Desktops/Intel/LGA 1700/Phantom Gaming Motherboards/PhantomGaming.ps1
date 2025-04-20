$LGA1700PhantomGaming = "C:\Logs\OSDCloud\ASRock\LGA1700\PhantomGaming.log"
Start-Transcript -Path $LGA1700PhantomGaming

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#          LGA 1700 Bluetooth, Ethernet, Storage and WLAN Driver URLs
####################################################################################

$PhantomGamingEthernet1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Phantom%20Gaming%20Motherboards/Ethernet/ASRock-LGA1700-PhantomGaming-Intel-EthernetDrivers1.zip"
$PhantomGamingEthernet2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Phantom%20Gaming%20Motherboards/Ethernet/ASRock-LGA1700-PhantomGaming-Intel-EthernetDrivers2.zip"
$PhantomGamingEthernet3URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Phantom%20Gaming%20Motherboards/Ethernet/ASRock-LGA1700-PhantomGaming-Intel-EthernetDrivers3.zip"
$PhantomGamingEthernet4URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Phantom%20Gaming%20Motherboards/Ethernet/ASRock-LGA1700-PhantomGaming-Intel-EthernetDrivers4.zip"
$PhantomGamingEthernet5URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Phantom%20Gaming%20Motherboards/Ethernet/ASRock-LGA1700-PhantomGaming-Realtek-EthernetDrivers5.zip"

$PhantomGamingStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Phantom%20Gaming%20Motherboards/Storage/ASRock-LGA1700-PhantomGaming-IRST-StorageDrivers.zip"

$PhantomGamingWLAN1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Phantom%20Gaming%20Motherboards/WLAN/ASRock-LGA1700-PhantomGaming-Intel-Killer-WLANDrivers.zip"
$PhantomGamingWLAN2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Phantom%20Gaming%20Motherboards/WLAN/ASRock-LGA1700-PhantomGaming-Mediatek-WLANDrivers.zip"

####################################################################################
#    LGA 1700 Bluetooth, Ethernet, Storage and WLAN Driver Download Destination
####################################################################################

$PhantomGamingDestination = "C:\Drivers\Motherboards\ASRock\LGA1700\PhantomGaming"

####################################################################################
#   LGA 1700 Bluetooth, Ethernet, Storage and WLAN Driver Extraction Destination
####################################################################################

$PhantomGamingEthernet1 = "$PhantomGamingDestination\Ethernet1"
$PhantomGamingEthernet2 = "$PhantomGamingDestination\Ethernet2"
$PhantomGamingEthernet3 = "$PhantomGamingDestination\Ethernet3"
$PhantomGamingEthernet4 = "$PhantomGamingDestination\Ethernet4"
$PhantomGamingEthernet5 = "$PhantomGamingDestination\Ethernet5"

$PhantomGamingStorage = "$PhantomGamingDestination\Storage"

$PhantomGamingWLAN1 = "$PhantomGamingDestination\WLAN1"
$PhantomGamingWLAN2 = "$PhantomGamingDestination\WLAN2"

Write-Verbose "Processing: Downloading ASRock LGA 1700 Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PhantomGamingEthernet1URL -DestinationDirectory $PhantomGamingDestination
Save-WebFile -SourceUrl $PhantomGamingEthernet2URL -DestinationDirectory $PhantomGamingDestination
Save-WebFile -SourceUrl $PhantomGamingEthernet3URL -DestinationDirectory $PhantomGamingDestination
Save-WebFile -SourceUrl $PhantomGamingEthernet4URL -DestinationDirectory $PhantomGamingDestination
Save-WebFile -SourceUrl $PhantomGamingEthernet5URL -DestinationDirectory $PhantomGamingDestination

Write-Verbose "Processing: Downloading ASRock LGA 1700 Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PhantomGamingStorageURL -DestinationDirectory $PhantomGamingDestination

Write-Verbose "Processing: Downloading ASRock LGA 1700 Motherboard WLAN Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PhantomGamingWLAN1URL -DestinationDirectory $PhantomGamingDestination
Save-WebFile -SourceUrl $PhantomGamingWLAN2URL -DestinationDirectory $PhantomGamingDestination

Write-Verbose "Completed: ASRock LGA1700 PhantomGaming Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$PhantomGamingDestination\ASRock-LGA1700-PhantomGaming-Intel-EthernetDrivers1.zip" -TargetPath $PhantomGamingEthernet1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PhantomGamingDestination\ASRock-LGA1700-PhantomGaming-Intel-EthernetDrivers2.zip" -TargetPath $PhantomGamingEthernet2 -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PhantomGamingDestination\ASRock-LGA1700-PhantomGaming-Intel-EthernetDrivers3.zip" -TargetPath $PhantomGamingEthernet3  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PhantomGamingDestination\ASRock-LGA1700-PhantomGaming-Intel-EthernetDrivers4.zip" -TargetPath $PhantomGamingEthernet4 -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PhantomGamingDestination\ASRock-LGA1700-PhantomGaming-Realtek-EthernetDrivers5.zip" -TargetPath $PhantomGamingEthernet5 -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PhantomGamingDestination\ASRock-LGA1700-PhantomGaming-IRST-StorageDrivers.zip" -TargetPath $PhantomGamingStorage  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PhantomGamingDestination\ASRock-LGA1700-PhantomGaming-Intel-Killer-WLANDrivers.zip" -TargetPath $PhantomGamingWLAN1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PhantomGamingDestination\ASRock-LGA1700-PhantomGaming-Mediatek-WLANDrivers.zip" -TargetPath $PhantomGamingWLAN2  -ErrorAction SilentlyContinue 

Write-Verbose "Completed: ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
