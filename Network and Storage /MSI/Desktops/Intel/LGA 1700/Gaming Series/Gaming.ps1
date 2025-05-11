$LGA1700Gaming = "C:\Logs\OSDCloud\MSI\LGA1700\Gaming.log"
Start-Transcript -Path $LGA1700Gaming

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   LGA1700 Ethernet Driver URLs
####################################################################################

$GamingEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/Gaming%20Series/Ethernet/MSI-LGA1700-GamingSeries-EthernetDrivers1.zip"
$GamingEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/Gaming%20Series/Ethernet/MSI-LGA1700-GamingSeries-EthernetDrivers2.zip"

####################################################################################
#                   LGA1700 Storage Driver URLs
####################################################################################

$GamingStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/Gaming%20Series/Storage/MSI-LGA1700-GamingSeries-IRST-StorageDrivers.zip"


####################################################################################
#                   LGA1700 WiFi Driver URLs
####################################################################################

$GamingWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/Gaming%20Series/WLAN/MSI-LGA1700-GamingSeries-WLANDrivers1.zip"
$GamingWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/Gaming%20Series/WLAN/MSI-LGA1700-GamingSeries-WLANDrivers2.zip"


###########################################################################################
#        Gaming Ethernet, Bluetooth, Storage and WiFi Destination Folders
###########################################################################################

$GamingDestination =  "C:\Drivers\Motherboards\MSI\LGA1700\Gaming"

###########################################################################################
#        Gaming Ethernet, Bluetooth, Storage and WiFi Extraction Folders
###########################################################################################

$GamingEthernet1 = "$GamingDestination\Ethernet1"
$GamingEthernet2 = "$GamingDestination\Ethernet2"

$GamingStorage = "$GamingDestination\Storage"

$GamingWLAN1 = "$GamingDestination\WLAN1"
$GamingWLAN2 = "$GamingDestination\WLAN2"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

Write-Host
Write-Verbose "Processing: MSI Gaming LGA1700 motherboard drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring MSI Gaming LGA1700 Ethernet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $GamingEthernetURL1 -DestinationDirectory $GamingDestination
Save-WebFile -SourceUrl $GamingEthernetURL2 -DestinationDirectory $GamingDestination

Write-Host
Write-Verbose "Processing: Acquiring MSI Gaming LGA1700 Storage Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $GamingStorageURL -DestinationDirectory $GamingDestination

Write-Host
Write-Verbose "Processing: Acquiring MSI Gaming LGA1700 WLAN Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $GamingWiFiURL1 -DestinationDirectory $GamingDestination
Save-WebFile -SourceUrl $GamingWiFiURL2 -DestinationDirectory $GamingDestination

Write-Host
Write-Verbose "Completed: Download of ALL MSI Gaming LGA1700 motherboard drivers..." -Verbose

Write-Host
Write-Verbose "Processing: MSI Gaming LGA1700 motherboard drivers file extraction..." -Verbose
Write-Host
Write-Verbose "Processing: Extracting Ethernet drivers..." -Verbose

Expand-7zip -ArchiveFileName "$GamingDestination\MSI-LGA1700-GamingSeries-EthernetDrivers1.zip" -TargetPath $GamingEthernet1 
Expand-7zip -ArchiveFileName "$GamingDestination\MSI-LGA1700-GamingSeries-EthernetDrivers2.zip" -TargetPath $GamingEthernet2

Write-Host
Write-Verbose "Processing: Extracting NVMe Storage drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$GamingDestination\MSI-LGA1700-GamingSeries-IRST-StorageDrivers.zip" -TargetPath $GamingStorage 

Write-Host
Write-Verbose "Processing: Extracting WLAN drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$GamingDestination\MSI-LGA1700-GamingSeries-WLANDrivers1.zip" -TargetPath $GamingWLAN1 
Expand-7zip -ArchiveFileName "$GamingDestination\MSI-LGA1700-GamingSeries-WLANDrivers2.zip" -TargetPath $GamingWLAN2 

Write-Host
Write-Verbose "Completed: Extraction of ALL MSI Gaming LGA1700 WLAN Drivers..." -Verbose
Write-Host

Write-Verbose "Completed: Extraction of ALL MSI Gaming LGA1700 motherboard Drivers..." -Verbose

Stop-Transcript
