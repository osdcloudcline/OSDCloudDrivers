$LGA1700Workstation = "C:\Logs\OSDCloud\ASUS\LGA1700\Workstation.log"
Start-Transcript -Path $LGA1700Workstation

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   LGA 1700 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$WorkstationEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Workstation%20Motherboards/Ethernet%20and%20WiFi/Intel-I226-LANDrivers.zip"

$WorkstationWiFiURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Workstation%20Motherboards/Ethernet%20and%20WiFi/WiFiDrivers.zip"

$WorkstationStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Workstation%20Motherboards/Storage/IRST-StorageDrivers.zip"

####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$WorkstationDestination = "C:\Drivers\Motherboards\ASUS\LGA1700\Workstation"

####################################################################################
#             LGA 1700 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$WorkstationEthernet = "$WorkstationDestination\Ethernet"

$WorkstationWiFi = "$WorkstationDestination\WLAN"

$WorkstationStorage = "$WorkstationDestination\Storage"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

Write-Verbose "Acquiring ASUS LGA 1700 Workstation Motherboard Ethernet Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $WorkstationEthernetURL -DestinationDirectory $WorkstationDestination

Write-Host

Write-Verbose "Acquiring ASUS LGA 1700 Workstation Motherboard WiFi Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $WorkstationWiFiURL -DestinationDirectory $WorkstationDestination

Write-Host

Write-Verbose "Acquiring ASUS LGA 1700 Workstation Motherboard Storage Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $WorkstationStorageURL -DestinationDirectory $WorkstationDestination

Write-Verbose "ASUS LGA 1700 Workstation Motherboard Drivers downloaded" -Verbose

Write-Verbose "Processing: ZIP File extraction" -Verbose
 
Expand-7Zip -ArchiveFileName "$WorkstationDestination\Intel-I226-LANDrivers.zip" -TargetPath $WorkstationEthernet   

Expand-7Zip -ArchiveFileName "$WorkstationDestination\WiFiDrivers.zip" -TargetPath $WorkstationWiFi   
 
Expand-7Zip -ArchiveFileName "$WorkstationDestination\IRST-StorageDrivers.zip" -TargetPath $WorkstationStorage 

Write-Verbose "ZIP Files extracted successfully" -Verbose

Stop-Transcript    
