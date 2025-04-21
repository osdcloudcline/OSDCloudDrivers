$LGA1700Expedition = "C:\Logs\OSDCloud\ASUS\LGA1700\Expedition.log"
Start-Transcript -Path $LGA1700Expedition

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   LGA 1700 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$ExpeditionEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Expedition%20Motherboards/Ethernet%20and%20WiFi/Realtek-LANDrivers.zip"

$ExpeditionStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Expedition%20Motherboards/Storage/IRST-StorageDrivers.zip"


####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$ExpeditionDestination = "C:\Drivers\Motherboards\ASUS\LGA1700\Expedition"

####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$ExpeditionEthernet = "$ExpeditionDestination\Ethernet"


$ExpeditionStorage = "$ExpeditionDestination\Storage"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

Write-Verbose "Acquiring ASUS LGA 1700 Expedition Motherboard Ethernet Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $ExpeditionEthernetURL -DestinationDirectory $ExpeditionDestination

Write-Host

Write-Verbose "Acquiring ASUS LGA 1700 Expedition Motherboard Storage Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $ExpeditionStorageURL -DestinationDirectory $ExpeditionDestination

Write-Verbose "ASUS LGA 1700 Expedition Motherboard Drivers downloaded" -Verbose

Write-Verbose "Processing: ZIP File extraction" -Verbose

Expand-7Zip -ArchiveFileName "$ExpeditionDestination\Realtek-LANDrivers.zip" -TargetPath $ExpeditionEthernet  

Expand-7Zip -ArchiveFileName "$ExpeditionDestination\IRSTDrivers.zip" -TargetPath $ExpeditionStorage  

Write-Verbose "ZIP Files extracted successfully" -Verbose

Stop-Transcript
