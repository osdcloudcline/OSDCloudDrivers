$AM5Gaming = "C:\Logs\OSDCloud\MSI\AM5\Gaming.log"
Start-Transcript -Path $AM5Gaming

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   AM5 Ethernet Driver URLs
####################################################################################

$GamingEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/Gaming%20Series/Ethernet/MSI-GamingSeries-AM5-Realtek-EthernetDrivers.zip"


####################################################################################
#                   AM5 Storage Driver URLs
####################################################################################

$GamingStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/Gaming%20Series/Storage/MSI-GamingSeries-RAID-StorageDrivers.zip"


####################################################################################
#                   AM5 WiFi Driver URLs
####################################################################################

$GamingWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/Gaming%20Series/WLAN/MSI-GamingSeries-AMD-WLANDrivers.zip"
$GamingWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/Gaming%20Series/WLAN/MSI-GamingSeries-Qualcomm-WLANDrivers.zip"
$GamingWiFiURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/Gaming%20Series/WLAN/MSI-GamingSeries-Realtek-WLANDrivers.zip"


###########################################################################################
#        Gaming Ethernet, Bluetooth, Storage and WiFi Destination Folders
###########################################################################################

$GamingDestination =  "C:\Drivers\Motherboards\MSI\AM5\Gaming"


###########################################################################################
#        Gaming Ethernet, Bluetooth, Storage and WiFi Extraction Folders
###########################################################################################


$GamingEthernet = "$GamingDestination\Ethernet"


$GamingStorage = "$GamingDestination\Storage\RAID\NVMe"


$GamingWLAN1 = "$GamingDestination\WLAN1"
$GamingWLAN2 = "$GamingDestination\WLAN2"
$GamingWLAN3 = "$GamingDestination\WLAN3"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

Write-Host
Write-Verbose "Processing: MSI Gaming AM5 motherboard drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring MSI Gaming AM5 Ethernet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $GamingEthernetURL -DestinationDirectory $GamingDestination

Write-Host
Write-Verbose "Processing: Acquiring MSI Gaming AM5 Storage Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $GamingStorageURL -DestinationDirectory $GamingDestination

Write-Host
Write-Verbose "Processing: Acquiring MSI Gaming AM5 WLAN Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $GamingWiFiURL1 -DestinationDirectory $GamingDestination
Save-WebFile -SourceUrl $GamingWiFiURL2 -DestinationDirectory $GamingDestination
Save-WebFile -SourceUrl $GamingWiFiURL3 -DestinationDirectory $GamingDestination

Write-Host
Write-Verbose "Completed: Download of ALL MSI Gaming AM5 motherboard drivers..." -Verbose


Write-Host
Write-Verbose "Processing: MSI Gaming AM5 motherboard drivers file extraction..." -Verbose
Write-Host
Write-Verbose "Processing: Extracting Ethernet drivers..." -Verbose

Expand-7zip -ArchiveFileName "$GamingDestination\MSI-GamingSeries-AM5-Realtek-EthernetDrivers.zip" -TargetPath $GamingEthernet1 -ErrorAction SilentlyContinue

Write-Host
Write-Verbose "Processing: Extracting NVMe Storage drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$GamingDestination\MSI-GamingSeries-RAID-StorageDrivers.zip" -TargetPath $GamingStorage1 -ErrorAction SilentlyContinue


Write-Host
Write-Verbose "Processing: Extracting WiFi drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$GamingDestination\MSI-GamingSeries-AMD-WLANDrivers.zip" -TargetPath $GamingWLAN1 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$GamingDestination\MSI-GamingSeries-Qualcomm-WLANDrivers.zip" -TargetPath $GamingWLAN2 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$GamingDestination\MSI-GamingSeries-Realtek-WLANDrivers.zip" -TargetPath $GamingWLAN3 -ErrorAction SilentlyContinue


Write-Host
Write-Verbose "Completed: Extraction of ALL MSI Gaming AM5 WiFi Drivers..." -Verbose
Write-Host

Write-Verbose "Completed: Extraction of ALL MSI Gaming AM5 motherboard Drivers..." -Verbose

Stop-Transcript
