$AM4PhantomGaming = "C:\Logs\OSDCloud\ASRock\AM4\PhantomGaming.log"
Start-Transcript -Path $AM4PhantomGaming

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   AM4 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$PhantomGamingEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Phantom%20Gaming%20Motherboards/Ethernet%20and%20WiFi/ASRock-PhantomGaming-Intel-LANDrivers1.zip"
$PhantomGamingEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Phantom%20Gaming%20Motherboards/Ethernet%20and%20WiFi/ASRock-PhantomGaming-Intel-LANDrivers2.zip"
$PhantomGamingEthernetURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Phantom%20Gaming%20Motherboards/Ethernet%20and%20WiFi/ASRock-PhantomGaming-Realtek-LANDriver1.zip"
$PhantomGamingEthernetURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Phantom%20Gaming%20Motherboards/Ethernet%20and%20WiFi/ASRock-PhantomGaming-Realtek-LANDriver2.zip"
$PhantomGamingEthernetURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Phantom%20Gaming%20Motherboards/Ethernet%20and%20WiFi/ASRock-PhantomGaming-Realtek-LANDrivers3.zip"

$PhantomGamingWiFiURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Phantom%20Gaming%20Motherboards/Ethernet%20and%20WiFi/ASRock-PhantomGaming-Intel-WLANDrivers.zip"

$PhantomGamingStorageURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Phantom%20Gaming%20Motherboards/Storage/ASRock-PhantomGaming-NVMe-StorageDrivers.zip"
$PhantomGamingStorageURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Phantom%20Gaming%20Motherboards/Storage/ASRock-PhantomGaming-SATA-NVMe-StorageDrivers.zip"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$PhantomGamingDestination = "C:\Drivers\Motherboards\ASRock\AM4\PhantomGaming"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$PhantomGamingEthernet1 = "$PhantomGamingDestination\Ethernet1"
$PhantomGamingEthernet2 = "$PhantomGamingDestination\Ethernet2"
$PhantomGamingEthernet3 = "$PhantomGamingDestination\Ethernet3"
$PhantomGamingEthernet4 = "$PhantomGamingDestination\Ethernet4"
$PhantomGamingEthernet5 = "$PhantomGamingDestination\Ethernet5"

$PhantomGamingWiFi = "$PhantomGamingDestination\WiFi"

$PhantomGamingStorage1 = "$PhantomGamingDestination\Storage1"
$PhantomGamingStorage2 = "$PhantomGamingDestination\Storage2"

Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASRock AM4 Phantom Gaming Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PhantomGamingEthernetURL1 -DestinationDirectory $PhantomGamingDestination
Save-WebFile -SourceUrl $PhantomGamingEthernetURL2 -DestinationDirectory $PhantomGamingDestination
Save-WebFile -SourceUrl $PhantomGamingEthernetURL3 -DestinationDirectory $PhantomGamingDestination
Save-WebFile -SourceUrl $PhantomGamingEthernetURL4 -DestinationDirectory $PhantomGamingDestination
Save-WebFile -SourceUrl $PhantomGamingEthernetURL5 -DestinationDirectory $PhantomGamingDestination

Write-Host
Write-Verbose "Acquiring ASRock AM4 Phantom Gaming Motherboard WiFi Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PhantomGamingWiFiURL -DestinationDirectory $PhantomGamingDestination

Write-Verbose "Acquiring ASRock AM4 Phantom Gaming Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PhantomGamingStorageURL1 -DestinationDirectory $PhantomGamingDestination
Save-WebFile -SourceUrl $PhantomGamingStorageURL2 -DestinationDirectory $PhantomGamingDestination

Write-Verbose "ASRock AM4 Phantom Gaming Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$PhantomGamingDestination\ASRock-PhantomGaming-Intel-LANDrivers1.zip" -TargetPath $PhantomGamingEthernet1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PhantomGamingDestination\ASRock-PhantomGaming-Intel-LANDrivers2.zip" -TargetPath $PhantomGamingEthernet2  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PhantomGamingDestination\ASRock-PhantomGaming-Realtek-LANDriver1.zip" -TargetPath $PhantomGamingEthernet3  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PhantomGamingDestinationn\ASRock-PhantomGaming-Realtek-LANDriver2.zip" -TargetPath $PhantomGamingEthernet4  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PhantomGamingDestination\ASRock-PhantomGaming-Realtek-LANDrivers3.zip" -TargetPath $PhantomGamingEthernet5  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PhantomGamingDestinationn\ASRock-PhantomGaming-Intel-WLANDrivers.zip" -TargetPath $PhantomGamingWiFi  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PhantomGamingDestination\ASRock-PhantomGaming-NVMe-StorageDrivers.zip" -TargetPath $PhantomGamingStorage1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PhantomGamingDestination\ASRock-PhantomGaming-SATA-NVMe-StorageDrivers.zip" -TargetPath $PhantomGamingStorage2  -ErrorAction SilentlyContinue 

Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript

