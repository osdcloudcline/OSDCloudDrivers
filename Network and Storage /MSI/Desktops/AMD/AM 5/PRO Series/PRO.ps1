$AM5PRO = "C:\Logs\OSDCloud\MSI\AM5\PRO.log"
Start-Transcript -Path $AM5PRO

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   AM5 Ethernet Driver URLs
####################################################################################

$PROEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/PRO%20Series/Ethernet/MSI-PROSeries-AM5-Realtek-EthernetDrivers.zip"

####################################################################################
#                   AM5 Storage Driver URLs
####################################################################################

$PROStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/PRO%20Series/Storage/MSI-PROSeries-RAID-StorageDrivers.zip"

####################################################################################
#                   AM5 WiFi Driver URLs
####################################################################################

$PROWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/PRO%20Series/WLAN/MSI-PROSeries-AMD-WLANDrivers.zip"
$PROWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/PRO%20Series/WLAN/MSI-PROSeries-Qualcomm-WLANDrivers.zip"
$PROWiFiURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/PRO%20Series/WLAN/MSI-PROSeries-Realtek-WLANDrivers.zip"

###########################################################################################
#        PRO Ethernet, Bluetooth, Storage and WiFi Destination Folders
###########################################################################################

$PRODestination =  "C:\Drivers\Motherboards\MSI\AM5\PRO"

###########################################################################################
#        PRO Ethernet, Bluetooth, Storage and WiFi Extraction Folders
###########################################################################################

$PROEthernet = "$PRODestination\Ethernet"

$PROStorage = "$PRODestination\Storage\RAID\NVMe"

$PROWLAN1 = "$PRODestination\WLAN1"
$PROWLAN2 = "$PRODestination\WLAN2"
$PROWLAN3 = "$PRODestination\WLAN3"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

Write-Host
Write-Verbose "Processing: MSI PRO AM5 motherboard drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring MSI PRO AM5 Ethernet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $PROEthernetURL -DestinationDirectory $PRODestination


Write-Host
Write-Verbose "Processing: Acquiring MSI PRO AM5 Storage Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $PROStorageURL -DestinationDirectory $PRODestination

Write-Host
Write-Verbose "Processing: Acquiring MSI PRO AM5 WLAN Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $PROWiFiURL1 -DestinationDirectory $PRODestination
Save-WebFile -SourceUrl $PROWiFiURL2 -DestinationDirectory $PRODestination
Save-WebFile -SourceUrl $PROWiFiURL3 -DestinationDirectory $PRODestination

Write-Host
Write-Verbose "Completed: Download of ALL MSI PRO AM5 motherboard drivers..." -Verbose

Write-Host
Write-Verbose "Processing: MSI PRO AM5 motherboard drivers file extraction..." -Verbose
Write-Host
Write-Verbose "Processing: Extracting Ethernet drivers..." -Verbose

Expand-7zip -ArchiveFileName "$PRODestination\MSI-PROSeries-AM5-Realtek-EthernetDrivers.zip" -TargetPath $PROEthernet -ErrorAction SilentlyContinue

Write-Host
Write-Verbose "Processing: Extracting NVMe Storage drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$PRODestination\MSI-PROSeries-RAID-StorageDrivers.zip" -TargetPath $PROStorage -ErrorAction SilentlyContinue


Write-Host
Write-Verbose "Processing: Extracting WiFi drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$PRODestination\MSI-PROSeries-AMD-WLANDrivers.zip" -TargetPath $PROWLAN1 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$PRODestination\MSI-PROSeries-Qualcomm-WLANDrivers.zip" -TargetPath $PROWLAN2 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$PRODestination\MSI-PROSeries-Realtek-WLANDrivers.zip" -TargetPath $PROWLAN3 -ErrorAction SilentlyContinue

Write-Host
Write-Verbose "Completed: Extraction of ALL MSI PRO AM5 WiFi Drivers..." -Verbose
Write-Host

Write-Verbose "Completed: Extraction of ALL MSI PRO AM5 motherboard Drivers..." -Verbose

Stop-Transcript
