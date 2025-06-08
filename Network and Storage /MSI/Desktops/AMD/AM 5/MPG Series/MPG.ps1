$AM5MPG = "C:\Logs\OSDCloud\MSI\AM5\MPG.log"
Start-Transcript -Path $AM5MPG

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   AM5 Ethernet Driver URLs
####################################################################################

$MPGEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/MPG%20Series/Ethernet/MSI-MPGSeries-AM5-Realtek-EthernetDrivers.zip"

####################################################################################
#                   AM5 Storage Driver URLs
####################################################################################

$MPGStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/MPG%20Series/Storage/MSI-MPGSeries-RAID-StorageDrivers.zip"


####################################################################################
#                   AM5 WiFi Driver URLs
####################################################################################

$MPGWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/MPG%20Series/WLAN/MSI-MPGSeries-AMD-WLANDrivers.zip"
$MPGWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/MPG%20Series/WLAN/MSI-MPGSeries-Qualcomm-WLANDrivers.zip"

###########################################################################################
#        MPG Ethernet, Bluetooth, Storage and WiFi Destination Folders
###########################################################################################

$MPGDestination =  "C:\Drivers\Motherboards\MSI\AM5\MPG"

###########################################################################################
#        MPG Ethernet, Bluetooth, Storage and WiFi Extraction Folders
###########################################################################################

$MPGEthernet = "$MPGDestination\Ethernet"

$MPGStorage = "$MPGDestination\Storage\RAID\NVMe"

$MPGWLAN1 = "$MPGDestination\WLAN1"
$MPGWLAN2 = "$MPGDestination\WLAN2"


Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

Write-Host
Write-Verbose "Processing: MSI MPG AM5 motherboard drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring MSI MPG AM5 Ethernet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $MPGEthernetURL -DestinationDirectory $MPGDestination

Write-Host
Write-Verbose "Processing: Acquiring MSI MPG AM5 Storage Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $MPGStorageURL -DestinationDirectory $MPGDestination

Write-Host
Write-Verbose "Processing: Acquiring MSI MPG AM5 WLAN Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $MPGWiFiURL1 -DestinationDirectory $MPGDestination
Save-WebFile -SourceUrl $MPGWiFiURL2 -DestinationDirectory $MPGDestination

Write-Host
Write-Verbose "Completed: Download of ALL MSI MPG AM5 motherboard drivers..." -Verbose

Write-Host
Write-Verbose "Processing: MSI MPG AM5 motherboard drivers file extraction..." -Verbose
Write-Host
Write-Verbose "Processing: Extracting Ethernet drivers..." -Verbose

Expand-7zip -ArchiveFileName "$MPGDestination\MSI-MPGSeries-AM5-Realtek-EthernetDrivers.zip" -TargetPath $MPGEthernet 

Write-Host
Write-Verbose "Processing: Extracting NVMe Storage drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$MPGDestination\MSI-MPGSeries-RAID-StorageDrivers.zip" -TargetPath $MPGStorage 

Write-Host
Write-Verbose "Processing: Extracting WiFi drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$MPGDestination\MSI-MPGSeries-AMD-WLANDrivers.zip" -TargetPath $MPGWLAN1 
Expand-7zip -ArchiveFileName "$MPGDestination\MSI-MPGSeries-Qualcomm-WLANDrivers.zip" -TargetPath $MPGWLAN2 

Write-Host
Write-Verbose "Completed: Extraction of ALL MSI MPG AM5 WiFi Drivers..." -Verbose
Write-Host

Write-Verbose "Completed: Extraction of ALL MSI MPG AM5 motherboard Drivers..." -Verbose

Stop-Transcript
