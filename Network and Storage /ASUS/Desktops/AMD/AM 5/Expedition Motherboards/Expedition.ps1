$AM5Expedition = "C:\Logs\OSDCloud\ASUS\AM5\Expedition.log"
Start-Transcript -Path $AM5Expedition

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   AM5 Ethernet and Storage Driver URLs
####################################################################################

$ExpeditionEthernet1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/Expedition%20Motherboards/Ethernet/ASUS-AM5-Expedition-EthernetDrivers1.zip"
$ExpeditionEthernet2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/Expedition%20Motherboards/Ethernet/ASUS-AM5-Expedition-EthernetDrivers2.zip"

$ExpeditionStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/Expedition%20Motherboards/Storage/ASUS-AM5-Expedition-RAID-StorageDrivers.zip"


####################################################################################
#             AM5 Ethernet and Storage Driver Download Destination
####################################################################################

$ExpeditionDestination = "C:\Drivers\Motherboards\ASUS\AM5\Expedition"

####################################################################################
#             AM5 Ethernet and Storage Driver Extraction Destination
####################################################################################

$ExpeditionEthernet1 = "$ExpeditionDestination\Ethernet1"
$ExpeditionEthernet2 = "$ExpeditionDestination\Ethernet2"
$ExpeditionStorage = "$ExpeditionDestination\Storage"

Write-Verbose "Acquiring ASUS AM5 Expedition Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $ExpeditionEthernet1URL -DestinationDirectory $ExpeditionDestination
Save-WebFile -SourceUrl $ExpeditionEthernet2URL -DestinationDirectory $ExpeditionDestination

Write-Verbose "Acquiring ASUS AM5 Expedition Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $ExpeditionStorageURL -DestinationDirectory $ExpeditionDestination

Write-Verbose "ASUS AM5 Expedition Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$ExpeditionDestination\ASUS-AM5-Expedition-EthernetDrivers1.zip" -TargetPath $ExpeditionEthernet1   
Expand-7Zip -ArchiveFileName "$ExpeditionDestination\ASUS-AM5-Expedition-EthernetDrivers2.zip" -TargetPath $ExpeditionEthernet2   
Expand-7Zip -ArchiveFileName "$ExpeditionDestination\ASUS-AM5-Expedition-RAID-StorageDrivers.zip" -TargetPath $ExpeditionStorage 


Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
