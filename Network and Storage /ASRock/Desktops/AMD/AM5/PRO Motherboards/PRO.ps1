$AM5PRO = "C:\Logs\OSDCloud\ASRock\AM5\PRO.log"
Start-Transcript -Path $AM5PRO

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   AM5 Ethernet, WiFi and Storage Driver URLs
####################################################################################


$PROEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/PRO%20Motherboards/Network%20and%20WiFi/ASRock-AM5-PRO-EthernetDrivers.zip"
$PROWiFiURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/PRO%20Motherboards/Network%20and%20WiFi/ASRock-AM5-PRO-WiFiDrivers.zip"

$PROStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/PRO%20Motherboards/Storage/ASRock-AM5-RAID-NVMeStorageDrivers.zip"


####################################################################################
#             AM5 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$PRODestination = "C:\Drivers\Motherboards\ASRock\AM5\PRO"

####################################################################################
#             AM5 Ethernet,Bluetooth  WiFi and Storage Driver Extraction Destination
####################################################################################

$PROEthernet = "$PRODestination\Ethernet"

$PROWiFi = "$PRODestination\WLAN"

$PROStorage = "$PRODestination\Storage"

Write-Verbose "Acquiring ASRock AM5 PRO Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PROEthernetURL -DestinationDirectory $PRODestination

Write-Verbose "Acquiring ASRock AM5 PRO Motherboard WiFi Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PROWiFiURL -DestinationDirectory $PRODestination

Write-Verbose "Acquiring ASRock AM5 PRO Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PROStorageURL -DestinationDirectory $PRODestination

Write-Verbose "ASRock AM5 PRO Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-AM5-PRO-EthernetDrivers.zip" -TargetPath $PROEthernet   
Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-AM5-PRO-WiFiDrivers.zip" -TargetPath $PROWiFi   
Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-AM5-RAID-NVMeStorageDrivers.zip" -TargetPath $PROStorage   

Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
