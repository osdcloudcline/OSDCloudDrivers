$AM4Workstation = "C:\Logs\OSDCloud\AM4\Workstation.log"
Start-Transcript -Path $AM4Workstation

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   AM4 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$WorkstationEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/Workstation%20Motherboards/Ethernet%20and%20WiFi/Workstation-Realtek-LANDrivers.zip"


$WorkstationStorageURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/Workstation%20Motherboards/Storage/Workstation-NVMe-StorageDrivers.zip"
$WorkstationStorageURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/Workstation%20Motherboards/Storage/Workstation-RAID-SATA-StorageDrivers.zip"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$WorkstationDestination = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Workstation"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$WorkstationEthernet = "$WorkstationDestination\Ethernet"

$WorkstationStorage1 = "$WorkstationDestination\Storage1"
$WorkstationStorage2 = "$WorkstationDestination\Storage2"

Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASUS AM4 ROG - Republic of Gamers Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $WorkstationEthernetURL -DestinationDirectory $WorkstationDestination


Write-Verbose "Acquiring ASUS AM4 ROG - Republic of Gamers Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $WorkstationStorageURL1 -DestinationDirectory $WorkstationDestination
Save-WebFile -SourceUrl $WorkstationStorageURL2 -DestinationDirectory $WorkstationDestination

Write-Verbose "ASUS AM4 ROG - Republic of Gamers Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$WorkstationDestination\Workstation-Realtek-LANDrivers.zip" -TargetPath $WorkstationEthernet  -ErrorAction SilentlyContinue 

Expand-7Zip -ArchiveFileName "$WorkstationDestination\Workstation-NVMe-StorageDrivers.zip" -TargetPath $WorkstationStorage1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$WorkstationDestination\Workstation-RAID-SATA-StorageDrivers.zip" -TargetPath $WorkstationStorage2  -ErrorAction SilentlyContinue 


Write-Verbose "ZIP Files extracted successfully" -Verbose


Stop-Transcript


