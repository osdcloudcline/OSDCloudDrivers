$AM5PRO = "C:\Logs\OSDCloud\ASRock\AM5\PRO.log"
Start-Transcript -Path $AM5PRO

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   AM5 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$PROBluetoothURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/PRO%20Motherboards/Network%20and%20WiFi/ASRock-AM5-PRO-BluetoothDrivers.zip"
$PROEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/PRO%20Motherboards/Network%20and%20WiFi/ASRock-AM5-PRO-EthernetDrivers.zip"
$PROWiFiURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/PRO%20Motherboards/Network%20and%20WiFi/ASRock-AM5-PRO-WiFiDrivers.zip"

$PROStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/PRO%20Motherboards/Storage/ASRock-AM5-RAID-NVMeStorageDrivers.zip"


####################################################################################
#             AM5 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$PRODestination = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\PRO"

####################################################################################
#             AM5 Ethernet,Bluetooth  WiFi and Storage Driver Extraction Destination
####################################################################################

$PROEthernet = "$PRODestination\Ethernet"
$PROBluetooth = "$PRODestination\Bluetooth"
$PROWiFi = "$PRODestination\WiFi"


$PROStorage = "$PRODestination\Storage"


Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASRock AM5 PRO Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PROEthernetURL -DestinationDirectory $PRODestination

Write-Verbose "Acquiring ASRock AM5 PRO Motherboard Bluetooth Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PROBluetoothURL -DestinationDirectory $PRODestination

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

Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-AM5-PRO-BluetoothDrivers.zip" -TargetPath $PROBluetooth  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-AM5-PRO-EthernetDrivers.zip" -TargetPath $PROEthernet  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-AM5-PRO-WiFiDrivers.zip" -TargetPath $PROWiFi  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-AM5-RAID-NVMeStorageDrivers.zip" -TargetPath $PROStorage  -ErrorAction SilentlyContinue 


Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
