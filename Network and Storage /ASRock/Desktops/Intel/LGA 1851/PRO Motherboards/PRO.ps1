$LGA1851PRO = "C:\Logs\OSDCloud\ASRock\LGA1851\PRO.log"
Start-Transcript -Path $LGA1851PRO

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#          LGA 1851 Ethernet, Bluetooth, WLAN and Storage Driver URLs
####################################################################################

$PROEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/PRO%20Motherboards/Ethernet/ASRock-LGA1851-PRO-Realtek-EthernetDrivers.zip"

$PROStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/PRO%20Motherboards/Storage/ASRock-LGA1851-PRO-IRST-StorageDrivers.zip"

$PROWLANURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/PRO%20Motherboards/WLAN/ASRock-LGA1851-PRO-WLANDrivers.zip"

$PROBluetoothURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/PRO%20Motherboards/Bluetooth/ASRock-LGA1851-PRO-BluetoothDrivers.zip"

####################################################################################
#    LGA 1851 Ethernet and Storage Driver Download Destination
####################################################################################

$PRODestination = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\PRO"

####################################################################################
#   LGA 1851 Ethernet, Bluetooth, WLAN and Storage Driver Extraction Destination
####################################################################################

$PROEthernet = "$PRODestination\Ethernet"

$PROStorage = "$PRODestination\Storage"

$PROBluetooth = "$PRODestination\Bluetooth"

$PROWLAN = "$PRODestination\WLAN"

Write-Verbose "Processing: Downloading ASRock LGA 1851 Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PROEthernetURL -DestinationDirectory $PRODestination


Write-Verbose "Processing: Downloading ASRock LGA 1851 Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PROStorageURL -DestinationDirectory $PRODestination


Write-Verbose "Processing: Downloading ASRock LGA 1851 Motherboard WLAN Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PROWLANURL -DestinationDirectory $PRODestination


Write-Verbose "Processing: Downloading ASRock LGA 1851 Motherboard Bluetooth Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PROBluetoothURL -DestinationDirectory $PRODestination

Write-Verbose "Completed: ASRock LGA1851 PRO Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-LGA1851-PRO-Realtek-EthernetDrivers.zip" -TargetPath $PROEthernet -ErrorAction SilentlyContinue 

Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-LGA1851-PRO-IRST-StorageDrivers.zip" -TargetPath $PROStorage  -ErrorAction SilentlyContinue 

Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-LGA1851-PRO-BluetoothDrivers.zip" -TargetPath $PROBluetooth -ErrorAction SilentlyContinue 

Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-LGA1851-PRO-WLANDrivers.zip" -TargetPath $PROWLAN  -ErrorAction SilentlyContinue 


Write-Verbose "Completed: ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
