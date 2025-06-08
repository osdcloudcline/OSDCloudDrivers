$AM5MEG = "C:\Logs\OSDCloud\MSI\AM5\MEG.log"
Start-Transcript -Path $AM5MEG

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   AM5 Ethernet Driver URLs
####################################################################################

$MEGEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/MEG%20Series/Ethernet/MSI-MEGSeries-AM5-10GSuperLAN1-EthernetDrivers.zip"
$MEGEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/MEG%20Series/Ethernet/MSI-MEGSeries-AM5-10GSuperLAN2-EthernetDrivers.zip"
$MEGEthernetURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/MEG%20Series/Ethernet/MSI-MEGSeries-AM5-Intel-EthernetDrivers.zip"
$MEGEthernetURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/MEG%20Series/Ethernet/MSI-MEGSeries-AM5-Realtek-EthernetDrivers.zip"

####################################################################################
#                   AM5 Storage Driver URLs
####################################################################################

$MEGStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/MEG%20Series/Storage/MSI-MEGSeries-RAID-StorageDrivers.zip"


####################################################################################
#                   AM5 WiFi Driver URLs
####################################################################################

$MEGWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/MEG%20Series/WLAN/MSI-MEGSeries-AMD-WLANDrivers.zip"
$MEGWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/MEG%20Series/WLAN/MSI-MEGSeries-Qualcomm-WLANDrivers.zip"



###########################################################################################
#        MEG Ethernet, Bluetooth, Storage and WiFi Destination Folders
###########################################################################################

$MEGDestination =  "C:\Drivers\Motherboards\MSI\AM5\MEG"


###########################################################################################
#        MEG Ethernet, Bluetooth, Storage and WiFi Extraction Folders
###########################################################################################


$MEGEthernet1 = "$MEGDestination\Ethernet1"
$MEGEthernet2 = "$MEGDestination\Ethernet2"
$MEGEthernet3 = "$MEGDestination\Ethernet3"
$MEGEthernet4 = "$MEGDestination\Ethernet4"


$MEGStorage = "$MEGDestination\Storage\RAID\NVMe"


$MEGWLAN1 = "$MEGDestination\WLAN1"
$MEGWLAN2 = "$MEGDestination\WLAN2"


Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

Write-Host
Write-Verbose "Processing: MSI MEG AM5 motherboard drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring MSI MEG AM5 Ethernet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $MEGEthernetURL1 -DestinationDirectory $MEGDestination
Save-WebFile -SourceUrl $MEGEthernetURL2 -DestinationDirectory $MEGDestination
Save-WebFile -SourceUrl $MEGEthernetURL3 -DestinationDirectory $MEGDestination
Save-WebFile -SourceUrl $MEGEthernetURL4 -DestinationDirectory $MEGDestination

Write-Host
Write-Verbose "Processing: Acquiring MSI MEG AM5 Storage Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $MEGStorageURL -DestinationDirectory $MEGDestination

Write-Host
Write-Verbose "Processing: Acquiring MSI MEG AM5 WLAN Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $MEGWiFiURL1 -DestinationDirectory $MEGDestination
Save-WebFile -SourceUrl $MEGWiFiURL2 -DestinationDirectory $MEGDestination


Write-Host
Write-Verbose "Completed: Download of ALL MSI MEG AM5 motherboard drivers..." -Verbose


Write-Host
Write-Verbose "Processing: MSI MEG AM5 motherboard drivers file extraction..." -Verbose
Write-Host
Write-Verbose "Processing: Extracting Ethernet drivers..." -Verbose

Expand-7zip -ArchiveFileName "$MEGDestination\MSI-MEGSeries-AM5-10GSuperLAN1-EthernetDrivers.zip" -TargetPath $MEGEthernet1 
Expand-7zip -ArchiveFileName "$MEGDestination\MSI-MEGSeries-AM5-10GSuperLAN2-EthernetDrivers.zip" -TargetPath $MEGEthernet2 
Expand-7zip -ArchiveFileName "$MEGDestination\MSI-MEGSeries-AM5-Intel-EthernetDrivers.zip" -TargetPath $MEGEthernet3 
Expand-7zip -ArchiveFileName "$MEGDestination\MSI-MEGSeries-AM5-Realtek-EthernetDrivers.zip" -TargetPath $MEGEthernet4 

Write-Host
Write-Verbose "Processing: Extracting NVMe Storage drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$MEGDestination\MSI-MEGSeries-RAID-StorageDrivers.zip" -TargetPath $MEGStorage 


Write-Host
Write-Verbose "Processing: Extracting WiFi drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$MEGDestination\MSI-MEGSeries-AMD-WLANDrivers.zip" -TargetPath $MEGWLAN1 
Expand-7zip -ArchiveFileName "$MEGDestination\MSI-MEGSeries-Qualcomm-WLANDrivers.zip" -TargetPath $MEGWLAN2 

Write-Host
Write-Verbose "Completed: Extraction of ALL MSI MEG AM5 WiFi Drivers..." -Verbose
Write-Host

Write-Verbose "Completed: Extraction of ALL MSI MEG AM5 motherboard Drivers..." -Verbose

Stop-Transcript
