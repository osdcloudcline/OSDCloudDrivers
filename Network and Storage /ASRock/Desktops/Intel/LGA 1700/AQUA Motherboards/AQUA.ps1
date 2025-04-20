$LGA1700AQUA = "C:\Logs\OSDCloud\ASRock\LGA1700\AQUA.log"
Start-Transcript -Path $LGA1700AQUA

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#          LGA 1700 Bluetooth, Ethernet, Storage and WLAN Driver URLs
####################################################################################

$AQUAEthernet1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/AQUA%20Motherboards/Ethernet/ASRock-LGA1700-AQUA-EthernetDrivers1.zip"
$AQUAEthernet2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/AQUA%20Motherboards/Ethernet/ASRock-LGA1700-AQUA-EthernetDrivers2.zip"

$AQUAStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/AQUA%20Motherboards/Storage/ASRock-LGA1700-AQUA-IRST-StorageDrivers.zip"

$AQUAWLAN1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/AQUA%20Motherboards/WLAN/ASRock-LGA1700-AQUA-WLANDrivers1.zip"
$AQUAWLAN2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/AQUA%20Motherboards/WLAN/ASRock-LGA1700-AQUA-WLANDrivers2.zip"


####################################################################################
#    LGA 1700 Bluetooth, Ethernet, Storage and WLAN Driver Download Destination
####################################################################################

$AQUADestination = "C:\Drivers\Motherboards\ASRock\LGA1700\AQUA"


####################################################################################
#   LGA 1700 Bluetooth, Ethernet, Storage and WLAN Driver Extraction Destination
####################################################################################

$AQUAEthernet1 = "$AQUADestination\Ethernet1"
$AQUAEthernet2 = "$AQUADestination\Ethernet2"

$AQUAStorage = "$AQUADestination\Storage"

$AQUAWLAN1 = "$AQUADestination\WLAN1"
$AQUAWLAN2 = "$AQUADestination\WLAN2"

Write-Verbose "Processing: Downloading ASRock LGA 1700 Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $AQUAEthernet1URL -DestinationDirectory $AQUADestination
Save-WebFile -SourceUrl $AQUAEthernet2URL -DestinationDirectory $AQUADestination

Write-Verbose "Processing: Downloading ASRock LGA 1700 Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $AQUAStorageURL -DestinationDirectory $AQUADestination

Write-Verbose "Processing: Downloading ASRock LGA 1700 Motherboard WLAN Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $AQUAWLAN1URL -DestinationDirectory $AQUADestination
Save-WebFile -SourceUrl $AQUAWLAN2URL -DestinationDirectory $AQUADestination

Write-Verbose "Completed: ASRock LGA1700 AQUA Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$AQUADestination\ASRock-LGA1700-AQUA-EthernetDrivers1.zip" -TargetPath $AQUAEthernet1 -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$AQUADestination\ASRock-LGA1700-AQUA-EthernetDrivers2.zip" -TargetPath $AQUAEthernet2  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$AQUADestination\ASRock-LGA1700-AQUA-IRST-StorageDrivers.zip" -TargetPath $AQUAStorage  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$AQUADestination\ASRock-LGA1700-AQUA-WLANDrivers1.zip" -TargetPath $AQUAWLAN1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$AQUADestination\ASRock-LGA1700-AQUA-WLANDrivers2.zip" -TargetPath $AQUAWLAN2  -ErrorAction SilentlyContinue 

Write-Verbose "Completed: ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript


