$LGA1700Extreme = "C:\Logs\OSDCloud\ASRock\LGA1700\Extreme.log"
Start-Transcript -Path $LGA1700Extreme

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#          LGA 1700 Bluetooth, Ethernet, Storage and WLAN Driver URLs
####################################################################################

$ExtremeEthernet1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Extreme%20Motherboards/Ethernet/ASRock-LGA1700-Extreme-Intel-EthernetDrivers1.zip"
$ExtremeEthernet2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Extreme%20Motherboards/Ethernet/ASRock-LGA1700-Extreme-Intel-EthernetDrivers2.zip"
$ExtremeEthernet3URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Extreme%20Motherboards/Ethernet/ASRock-LGA1700-Extreme-Intel-EthernetDrivers3.zip"
$ExtremeEthernet4URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Extreme%20Motherboards/Ethernet/ASRock-LGA1700-Extreme-Intel-EthernetDrivers4.zip"
$ExtremeEthernet5URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Extreme%20Motherboards/Ethernet/ASRock-LGA1700-Extreme-Realtek-EthernetDrivers5.zip"

$ExtremeStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Extreme%20Motherboards/Storage/ASRock-LGA1700-Extreme-IRST-StorageDrivers.zip"

$ExtremeWLANURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Extreme%20Motherboards/WLAN/ASRock-LGA1700-Extreme-Intel-Killer-WLANDrivers.zip"

####################################################################################
#    LGA 1700 Bluetooth, Ethernet, Storage and WLAN Driver Download Destination
####################################################################################

$ExtremeDestination = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\Extreme"

####################################################################################
#   LGA 1700 Bluetooth, Ethernet, Storage and WLAN Driver Extraction Destination
####################################################################################

$ExtremeEthernet1 = "$ExtremeDestination\Ethernet1"
$ExtremeEthernet2 = "$ExtremeDestination\Ethernet2"
$ExtremeEthernet3 = "$ExtremeDestination\Ethernet3"
$ExtremeEthernet4 = "$ExtremeDestination\Ethernet4"
$ExtremeEthernet5 = "$ExtremeDestination\Ethernet5"

$ExtremeStorage = "$ExtremeDestination\Storage"

$ExtremeWLAN = "$ExtremeDestination\WLAN"

Write-Verbose "Processing: Downloading ASRock LGA 1700 Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $ExtremeEthernet1URL -DestinationDirectory $ExtremeDestination
Save-WebFile -SourceUrl $ExtremeEthernet2URL -DestinationDirectory $ExtremeDestination
Save-WebFile -SourceUrl $ExtremeEthernet3URL -DestinationDirectory $ExtremeDestination
Save-WebFile -SourceUrl $ExtremeEthernet4URL -DestinationDirectory $ExtremeDestination
Save-WebFile -SourceUrl $ExtremeEthernet5URL -DestinationDirectory $ExtremeDestination

Write-Verbose "Processing: Downloading ASRock LGA 1700 Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $ExtremeStorageURL -DestinationDirectory $ExtremeDestination

Write-Verbose "Processing: Downloading ASRock LGA 1700 Motherboard WLAN Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $ExtremeWLANURL -DestinationDirectory $ExtremeDestination

Write-Verbose "Completed: ASRock LGA1700 Extreme Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$ExtremeDestination\ASRock-LGA1700-Extreme-Intel-EthernetDrivers1.zip" -TargetPath $ExtremeEthernet1 -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ExtremeDestination\ASRock-LGA1700-Extreme-Intel-EthernetDrivers2.zip" -TargetPath $ExtremeEthernet2  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ExtremeDestination\ASRock-LGA1700-Extreme-Intel-EthernetDrivers3.zip" -TargetPath $ExtremeEthernet3 -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ExtremeDestination\ASRock-LGA1700-Extreme-Intel-EthernetDrivers4.zip" -TargetPath $ExtremeEthernet4  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ExtremeDestination\ASRock-LGA1700-Extreme-Intel-EthernetDrivers5.zip" -TargetPath $ExtremeEthernet5 -ErrorAction SilentlyContinue 

Expand-7Zip -ArchiveFileName "$ExtremeDestination\ASRock-LGA1700-Extreme-IRST-StorageDrivers.zip" -TargetPath $ExtremeStorage  -ErrorAction SilentlyContinue 

Expand-7Zip -ArchiveFileName "$ExtremeDestination\ASRock-LGA1700-Extreme-Intel-Killer-WLANDrivers.zip" -TargetPath $ExtremeWLAN1  -ErrorAction SilentlyContinue 

Write-Verbose "Completed: ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
