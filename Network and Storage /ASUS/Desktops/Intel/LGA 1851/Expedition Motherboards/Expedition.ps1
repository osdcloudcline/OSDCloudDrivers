$LGA1851Expedition = "C:\Logs\OSDCloud\LGA1851\Expedition.log"
Start-Transcript -Path $LGA1851Expedition 

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   LGA 1851 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$ExpeditionEthernet1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Expedition%20Motherboards/Ethernet/ASUS-LGA1851-Expedition-EthernetDrivers1.zip"

$ExpeditionEthernet2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Expedition%20Motherboards/Ethernet/ASUS-LGA1851-Expedition-EthernetDrivers2.zip"

$ExpeditionStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Expedition%20Motherboards/Storage/ASUS-LGA1851-Expedition-IRST-StorageDrivers.zip"


####################################################################################
#             LGA 1851 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$ExpeditionDestination = "C:\Drivers\Motherboards\ASUS\LGA1851\Expedition"

####################################################################################
#             LGA 1851 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$ExpeditionEthernet1 = "$ExpeditionDestination\Ethernet1"

$ExpeditionEthernet2 = "$ExpeditionDestination\Ethernet2"

$ExpeditionStorage = "$ExpeditionDestination\Storage"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

Write-Verbose "Acquiring ASUS LGA 1851 Expedition Motherboard Ethernet Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $ExpeditionEthernet1URL -DestinationDirectory $ExpeditionDestination
Save-WebFile -SourceUrl $ExpeditionEthernet2URL -DestinationDirectory $ExpeditionDestination

Write-Verbose "Acquiring ASUS LGA 1851 Expedition Motherboard Storage Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $ExpeditionStorageURL -DestinationDirectory $ExpeditionDestination

Write-Verbose "ASUS LGA 1851 Expedition Motherboard Drivers downloaded" -Verbose

Write-Verbose "Processing: ZIP File extraction" -Verbose

Expand-7Zip -ArchiveFileName "$ExpeditionDestination\ASUS-LGA1851-Expedition-EthernetDrivers1.zip" -TargetPath $ExpeditionEthernet1 
Expand-7Zip -ArchiveFileName "$ExpeditionDestination\ASUS-LGA1851-Expedition-EthernetDrivers2.zip" -TargetPath $ExpeditionEthernet2
Expand-7Zip -ArchiveFileName "$ExpeditionDestination\ASUS-LGA1851-Expedition-IRST-StorageDrivers.zip" -TargetPath $ExpeditionStorage  

Write-Verbose "ZIP Files extracted successfully" -Verbose

Stop-Transcript
