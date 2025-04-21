$LGA1851AQUA = "C:\Logs\OSDCloud\ASRock\LGA1851\AQUA.log"
Start-Transcript -Path $LGA1851AQUA

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force


####################################################################################
#          LGA 1851 Bluetooth, Ethernet, Storage and WLAN Driver URLs
####################################################################################

$AQUAEthernet1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/AQUA%20Motherboards/Ethernet/ASRock-LGA1851-AQUA-Aquatia-EthernetDrivers1.zip"
$AQUAEthernet2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/AQUA%20Motherboards/Ethernet/ASRock-LGA1851-AQUA-Killer-EthernetDrivers2.zip"
$AQUAEthernet3URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/AQUA%20Motherboards/Ethernet/ASRock-LGA1851-AQUA-Killer-EthernetDrivers3.zip"
$AQUAEthernet4URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/AQUA%20Motherboards/Ethernet/ASRock-LGA1851-AQUA-Killer-EthernetDrivers4.zip"
$AQUAEthernet5URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/AQUA%20Motherboards/Ethernet/ASRock-LGA1851-AQUA-Killer-EthernetDrivers5.zip"
$AQUAEthernet6URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/AQUA%20Motherboards/Ethernet/ASRock-LGA1851-AQUA-Killer-EthernetDrivers6.zip"
$AQUAEthernet7URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/AQUA%20Motherboards/Ethernet/ASRock-LGA1851-AQUA-Realtek-EthernetDrivers7.zip"

$AQUAStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/AQUA%20Motherboards/Storage/ASRock-LGA1851-AQUA-IRST-StorageDrivers.zip"

$AQUAWLANURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/AQUA%20Motherboards/WLAN/ASRock-LGA1851-AQUA-WLANDrivers.zip"


####################################################################################
#    LGA 1851 Bluetooth, Ethernet, Storage and WLAN Driver Download Destination
####################################################################################

$AQUADestination = "C:\Drivers\Motherboards\ASRock\LGA1851\AQUA"

####################################################################################
#   LGA 1851 Bluetooth, Ethernet, Storage and WLAN Driver Extraction Destination
####################################################################################

$AQUAEthernet1 = "$AQUADestination\Ethernet1"
$AQUAEthernet2 = "$AQUADestination\Ethernet2"
$AQUAEthernet3 = "$AQUADestination\Ethernet3"
$AQUAEthernet4 = "$AQUADestination\Ethernet4"
$AQUAEthernet5 = "$AQUADestination\Ethernet5"
$AQUAEthernet6 = "$AQUADestination\Ethernet6"
$AQUAEthernet7 = "$AQUADestination\Ethernet7"


$AQUAStorage = "$AQUADestination\Storage"

$AQUAWLAN = "$AQUADestination\WLAN"

Write-Verbose "Processing: Downloading ASRock LGA 1851 Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $AQUAEthernet1URL -DestinationDirectory $AQUADestination
Save-WebFile -SourceUrl $AQUAEthernet2URL -DestinationDirectory $AQUADestination
Save-WebFile -SourceUrl $AQUAEthernet3URL -DestinationDirectory $AQUADestination
Save-WebFile -SourceUrl $AQUAEthernet4URL -DestinationDirectory $AQUADestination
Save-WebFile -SourceUrl $AQUAEthernet5URL -DestinationDirectory $AQUADestination
Save-WebFile -SourceUrl $AQUAEthernet6URL -DestinationDirectory $AQUADestination
Save-WebFile -SourceUrl $AQUAEthernet7URL -DestinationDirectory $AQUADestination


Write-Verbose "Processing: Downloading ASRock LGA 1851 Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $AQUAStorageURL -DestinationDirectory $AQUADestination

Write-Verbose "Processing: Downloading ASRock LGA 1851 Motherboard WLAN Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $AQUAWLANURL -DestinationDirectory $AQUADestination


Write-Verbose "Completed: ASRock LGA1851 AQUA Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$AQUADestination\ASRock-LGA1851-AQUA-Aquatia-EthernetDrivers1.zip" -TargetPath $AQUAEthernet1  
Expand-7Zip -ArchiveFileName "$AQUADestination\ASRock-LGA1851-AQUA-Killer-EthernetDrivers2.zip" -TargetPath $AQUAEthernet2   
Expand-7Zip -ArchiveFileName "$AQUADestination\ASRock-LGA1851-AQUA-Killer-EthernetDrivers3.zip" -TargetPath $AQUAEthernet3  
Expand-7Zip -ArchiveFileName "$AQUADestination\ASRock-LGA1851-AQUA-Killer-EthernetDrivers4.zip" -TargetPath $AQUAEthernet4   
Expand-7Zip -ArchiveFileName "$AQUADestination\ASRock-LGA1851-AQUA-Killer-EthernetDrivers5.zip" -TargetPath $AQUAEthernet5  
Expand-7Zip -ArchiveFileName "$AQUADestination\ASRock-LGA1851-AQUA-Killer-EthernetDrivers6.zip" -TargetPath $AQUAEthernet6   
Expand-7Zip -ArchiveFileName "$AQUADestination\ASRock-LGA1851-AQUA-Realtek-EthernetDrivers7.zip" -TargetPath $AQUAEthernet7  
Expand-7Zip -ArchiveFileName "$AQUADestination\ASRock-LGA1851-AQUA-IRST-StorageDrivers.zip" -TargetPath $AQUAStorage   
Expand-7Zip -ArchiveFileName "$AQUADestination\ASRock-LGA1851-AQUA-WLANDrivers.zip" -TargetPath $AQUAWLAN  


Write-Verbose "Completed: ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
