$AM5PRO = "C:\Logs\OSDCloud\ASRock\AM5\PRO.log"
Start-Transcript -Path $AM5PRO

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"


####################################################################################
#                   AM5 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$PROBluetoothURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/PRO%20Motherboards/Network%20and%20WiFi/ASRock-AM5-PRO-BluetoothDrivers.zip"
$PROEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/PRO%20Motherboards/Network%20and%20WiFi/ASRock-AM5-PRO-EthernetDrivers.zip"
$PROWiFiURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/PRO%20Motherboards/Ethernet%20and%20WiFi/ASRock-PRO-Realtek-LANDrivers2.zip"


$PROStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/PRO%20Motherboards/Storage/ASRock-PRO-NVMe-StorageDrivers.zip"


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



Write-Verbose "Acquiring ASRock AM4 PRO Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PROStorageURL -DestinationDirectory $PRODestination


Write-Verbose "ASRock AM4 PRO Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-PRO-Intel-LANDrivers.zip" -TargetPath $PROEthernet1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-PRO-Realtek-LANDrivers1.zip" -TargetPath $PROEthernet2  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-PRO-Realtek-LANDrivers2.zip" -TargetPath $PROEthernet3  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-PRO-Realtek-LANDrivers3.zip" -TargetPath $PROEthernet4  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-PRO-Realtek-LANDrivers4.zip" -TargetPath $PROEthernet5  -ErrorAction SilentlyContinue 

Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-PRO-NVMe-StorageDrivers.zip" -TargetPath $PROStorage  -ErrorAction SilentlyContinue 


Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
