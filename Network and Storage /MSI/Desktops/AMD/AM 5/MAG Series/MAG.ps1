$AM5MAG = "C:\Logs\OSDCloud\MSI\AM5\MAG.log"
Start-Transcript -Path $AM5MAG

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   AM5 Ethernet Driver URLs
####################################################################################

$MAGEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/MAG%20Series/Ethernet/MSI-MAGSeries-AM5-Realtek-EthernetDrivers.zip"


####################################################################################
#                   AM5 Storage Driver URLs
####################################################################################

$MAGStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/MAG%20Series/Storage/MSI-MAGSeries-RAID-StorageDrivers.zip"


####################################################################################
#                   AM5 WiFi Driver URLs
####################################################################################

$MAGWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/MAG%20Series/WLAN/MSI-MAGSeries-AMD-WLANDrivers.zip"
$MAGWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/MAG%20Series/WLAN/MSI-MAGSeries-Qualcomm-WLANDrivers.zip"
$MAGWiFiURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/MAG%20Series/WLAN/MSI-MAGSeries-Realtek-WLANDrivers.zip"


###########################################################################################
#        MAG Ethernet, Bluetooth, Storage and WiFi Destination Folders
###########################################################################################

$MAGDestination =  "C:\Drivers\Motherboards\MSI\AM5\MAG"


###########################################################################################
#        MAG Ethernet, Bluetooth, Storage and WiFi Extraction Folders
###########################################################################################


$MAGEthernet = "$MAGDestination\Ethernet"


$MAGStorage = "$MAGDestination\Storage\RAID\NVMe"


$MAGWLAN1 = "$MAGDestination\WLAN1"
$MAGWLAN2 = "$MAGDestination\WLAN2"
$MAGWLAN3 = "$MAGDestination\WLAN3"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

Write-Host
Write-Verbose "Processing: MSI MAG AM5 motherboard drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring MSI MAG AM5 Ethernet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $MAGEthernetURL -DestinationDirectory $MAGDestination

Write-Host
Write-Verbose "Processing: Acquiring MSI MAG AM5 Storage Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $MAGStorageURL -DestinationDirectory $MAGDestination

Write-Host
Write-Verbose "Processing: Acquiring MSI MAG AM5 WLAN Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $MAGWiFiURL1 -DestinationDirectory $MAGDestination
Save-WebFile -SourceUrl $MAGWiFiURL2 -DestinationDirectory $MAGDestination
Save-WebFile -SourceUrl $MAGWiFiURL3 -DestinationDirectory $MAGDestination

Write-Host
Write-Verbose "Completed: Download of ALL MSI MAG AM5 motherboard drivers..." -Verbose


Write-Host
Write-Verbose "Processing: MSI MAG AM5 motherboard drivers file extraction..." -Verbose
Write-Host
Write-Verbose "Processing: Extracting Ethernet drivers..." -Verbose

Expand-7zip -ArchiveFileName "$MAGDestination\MSI-MAGSeries-AM5-Realtek-EthernetDrivers.zip" -TargetPath $MAGEthernet 

Write-Host
Write-Verbose "Processing: Extracting NVMe Storage drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$MAGDestination\MSI-MAGSeries-RAID-StorageDrivers.zip" -TargetPath $MAGStorage 


Write-Host
Write-Verbose "Processing: Extracting WiFi drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$MAGDestination\MSI-MAGSeries-AMD-WLANDrivers.zip" -TargetPath $MAGWLAN1 
Expand-7zip -ArchiveFileName "$MAGDestination\MSI-MAGSeries-Qualcomm-WLANDrivers.zip" -TargetPath $MAGWLAN2 
Expand-7zip -ArchiveFileName "$MAGDestination\MSI-MAGSeries-Realtek-WLANDrivers.zip" -TargetPath $MAGWLAN3 


Write-Host
Write-Verbose "Completed: Extraction of ALL MSI MAG AM5 WiFi Drivers..." -Verbose
Write-Host

Write-Verbose "Completed: Extraction of ALL MSI MAG AM5 motherboard Drivers..." -Verbose

Stop-Transcript
