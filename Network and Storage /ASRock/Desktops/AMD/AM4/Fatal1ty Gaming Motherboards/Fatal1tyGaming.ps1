$AM4Fatal1tyGaming = "C:\Logs\OSDCloud\ASRock\AM4\Fatal1tyGaming.log"
Start-Transcript -Path $AM4Fatal1tyGaming

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"


####################################################################################
#                   AM4 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$Fatal1tyGamingEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Fatal1ty%20Gaming%20Motherboards/Ethernet%20and%20WiFi/ASRock-Fatal1tyGaming-Realtek-LANDrivers1.zip"
$Fatal1tyGamingEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Fatal1ty%20Gaming%20Motherboards/Ethernet%20and%20WiFi/ASRock-Fatal1tyGaming-Realtek-LANDrivers2.zip"

$Fatal1tyGamingWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Fatal1ty%20Gaming%20Motherboards/Ethernet%20and%20WiFi/ASRock-Fatal1tyGaming-Intel-WLANDrivers.zip"
$Fatal1tyGamingWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Fatal1ty%20Gaming%20Motherboards/Ethernet%20and%20WiFi/ASRock-Fatal1tyGaming-Intel-WLANDrivers2.zip"

$Fatal1tyGamingBluetoothURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Fatal1ty%20Gaming%20Motherboards/Ethernet%20and%20WiFi/ASRock-Fatal1tyGaming-Intel-BluetoothDrivers.zip"

$Fatal1tyGamingStorage1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Fatal1ty%20Gaming%20Motherboards/Storage/ASRock-Fatal1tyGaming-NVMe-StorageDrivers.zip"
$Fatal1tyGamingStorage2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Fatal1ty%20Gaming%20Motherboards/Storage/ASRock-Fatal1tyGaming-SATA-StorageDrivers.zip"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$Fatal1tyGamingDestination = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Fatal1tyGaming"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$Fatal1tyGamingEthernet1 = "$Fatal1tyGamingDestination\Ethernet1"
$Fatal1tyGamingEthernet2 = "$Fatal1tyGamingDestination\Ethernet2"

$Fatal1tyGamingWiFi1 = "$Fatal1tyGamingDestination\WiFi1"
$Fatal1tyGamingWiFi2 = "$Fatal1tyGamingDestination\WiFi2"

$Fatal1tyGamingBluetooth = "$Fatal1tyGamingDestination\Bluetooth"

$Fatal1tyGamingStorage1 = "$Fatal1tyGamingDestination\Storage1"
$Fatal1tyGamingStorage2 = "$Fatal1tyGamingDestination\Storage2"

Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASRock AM4 Fatal1ty Gaming Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $Fatal1tyGamingEthernetURL1 -DestinationDirectory $Fatal1tyGamingDestination
Save-WebFile -SourceUrl $Fatal1tyGamingEthernetURL2 -DestinationDirectory $Fatal1tyGamingDestination


Write-Verbose "Acquiring ASRock AM4 Fatal1ty Gaming Motherboard WiFi Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $Fatal1tyGamingWiFiURL1 -DestinationDirectory $Fatal1tyGamingDestination
Save-WebFile -SourceUrl $Fatal1tyGamingWiFiURL2 -DestinationDirectory $Fatal1tyGamingDestination


Write-Verbose "Acquiring ASRock AM4 Fatal1ty Gaming Motherboard Bluetooth Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $Fatal1tyGamingBluetoothURL -DestinationDirectory $Fatal1tyGamingDestination


Write-Verbose "Acquiring ASRock AM4 Fatal1ty Gaming Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $Fatal1tyGamingStorage1URL -DestinationDirectory $Fatal1tyGamingDestination
Save-WebFile -SourceUrl $Fatal1tyGamingStorage2URL -DestinationDirectory $Fatal1tyGamingDestination

Write-Verbose "ASRock AM4 Fatal1ty Gaming Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$Fatal1tyGamingDestination\ASRock-Fatal1tyGaming-Realtek-LANDrivers1.zip" -TargetPath $Fatal1tyGamingEthernet1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$Fatal1tyGamingDestination\ASRock-Fatal1tyGaming-Realtek-LANDrivers2.zip" -TargetPath $Fatal1tyGamingEthernet2  -ErrorAction SilentlyContinue 

Expand-7Zip -ArchiveFileName "$Fatal1tyGamingDestination\ASRock-Fatal1tyGaming-Intel-WLANDrivers.zip" -TargetPath $Fatal1tyGamingWiFi1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$Fatal1tyGamingDestination\ASRock-Fatal1tyGaming-Intel-WLANDrivers2.zip" -TargetPath $Fatal1tyGamingWiFi2  -ErrorAction SilentlyContinue 

Expand-7Zip -ArchiveFileName "$Fatal1tyGamingDestination\ASRock-Fatal1tyGaming-Intel-BluetoothDrivers.zip" -TargetPath $Fatal1tyGamingBluetooth  -ErrorAction SilentlyContinue 

Expand-7Zip -ArchiveFileName "$Fatal1tyGamingDestination\ASRock-Fatal1tyGaming-NVMe-StorageDrivers.zip" -TargetPath $Fatal1tyGamingStorage1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$Fatal1tyGamingDestination\ASRock-Fatal1tyGaming-SATA-StorageDrivers.zip" -TargetPath $Fatal1tyGamingStorage2  -ErrorAction SilentlyContinue 

Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
