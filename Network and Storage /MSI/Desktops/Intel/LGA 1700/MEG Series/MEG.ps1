$LGA1700MEG = "C:\Logs\OSDCloud\MSI\LGA1700\MEG.log"
Start-Transcript -Path $LGA1700MEG

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   LGA1700 Ethernet Driver URLs
####################################################################################

$MEGEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MEG%20Series/Ethernet/MSI-LGA1700-MEGSeries-EthernetDrivers1.zip"
$MEGEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MEG%20Series/Ethernet/MSI-LGA1700-MEGSeries-EthernetDrivers2.zip"
$MEGEthernetURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MEG%20Series/Ethernet/MSI-LGA1700-MEGSeries-EthernetDrivers3.zip"
$MEGEthernetURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MEG%20Series/Ethernet/MSI-LGA1700-MEGSeries-EthernetDrivers4.zip"
$MEGEthernetURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MEG%20Series/Ethernet/MSI-LGA1700-MEGSeries-EthernetDrivers5.zip"
$MEGEthernetURL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MEG%20Series/Ethernet/MSI-LGA1700-MEGSeries-EthernetDrivers6.zip"
$MEGEthernetURL7 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MEG%20Series/Ethernet/MSI-LGA1700-MEGSeries-EthernetDrivers7.zip"
$MEGEthernetURL8 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MEG%20Series/Ethernet/MSI-LGA1700-MEGSeries-EthernetDrivers8.zip"


####################################################################################
#                   LGA1700 Storage Driver URLs
####################################################################################

$MEGStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MEG%20Series/Storage/MSI-LGA1700-MEGSeries-IRST-StorageDrivers.zip"


####################################################################################
#                   LGA1700 WiFi Driver URLs
####################################################################################

$MEGWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MEG%20Series/WLAN/MSI-LGA1700-MEGSeries-WLANDrivers1.zip"
$MEGWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MEG%20Series/WLAN/MSI-LGA1700-MEGSeries-WLANDrivers2.zip"


###########################################################################################
#        MEG Ethernet, Bluetooth, Storage and WiFi Destination Folders
###########################################################################################

$MEGDestination =  "C:\Drivers\Motherboards\MSI\LGA1700\MEG"

###########################################################################################
#        MEG Ethernet, Bluetooth, Storage and WiFi Extraction Folders
###########################################################################################

$MEGEthernet1 = "$MEGDestination\Ethernet1"
$MEGEthernet2 = "$MEGDestination\Ethernet2"
$MEGEthernet3 = "$MEGDestination\Ethernet3"
$MEGEthernet4 = "$MEGDestination\Ethernet4"
$MEGEthernet5 = "$MEGDestination\Ethernet5"
$MEGEthernet6 = "$MEGDestination\Ethernet6"
$MEGEthernet7 = "$MEGDestination\Ethernet7"
$MEGEthernet8 = "$MEGDestination\Ethernet8"

$MEGStorage = "$MEGDestination\Storage"

$MEGWLAN1 = "$MEGDestination\WLAN1"
$MEGWLAN2 = "$MEGDestination\WLAN2"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

Write-Host
Write-Verbose "Processing: MSI MEG LGA1700 motherboard drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring MSI MEG LGA1700 Ethernet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $MEGEthernetURL1 -DestinationDirectory $MEGDestination
Save-WebFile -SourceUrl $MEGEthernetURL2 -DestinationDirectory $MEGDestination
Save-WebFile -SourceUrl $MEGEthernetURL3 -DestinationDirectory $MEGDestination
Save-WebFile -SourceUrl $MEGEthernetURL4 -DestinationDirectory $MEGDestination
Save-WebFile -SourceUrl $MEGEthernetURL5 -DestinationDirectory $MEGDestination
Save-WebFile -SourceUrl $MEGEthernetURL6 -DestinationDirectory $MEGDestination
Save-WebFile -SourceUrl $MEGEthernetURL7 -DestinationDirectory $MEGDestination
Save-WebFile -SourceUrl $MEGEthernetURL8 -DestinationDirectory $MEGDestination

Write-Host
Write-Verbose "Processing: Acquiring MSI MEG LGA1700 Storage Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $MEGStorageURL -DestinationDirectory $MEGDestination

Write-Host
Write-Verbose "Processing: Acquiring MSI MEG LGA1700 WLAN Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $MEGWiFiURL1 -DestinationDirectory $MEGDestination
Save-WebFile -SourceUrl $MEGWiFiURL2 -DestinationDirectory $MEGDestination

Write-Host
Write-Verbose "Completed: Download of ALL MSI MEG LGA1700 motherboard drivers..." -Verbose

Write-Host
Write-Verbose "Processing: MSI MEG LGA1700 motherboard drivers file extraction..." -Verbose
Write-Host
Write-Verbose "Processing: Extracting Ethernet drivers..." -Verbose

Expand-7zip -ArchiveFileName "$MEGDestination\MSI-LGA1700-MEGSeries-EthernetDrivers1.zip" -TargetPath $MEGEthernet1 
Expand-7zip -ArchiveFileName "$MEGDestination\MSI-LGA1700-MEGSeries-EthernetDrivers2.zip" -TargetPath $MEGEthernet2
Expand-7zip -ArchiveFileName "$MEGDestination\MSI-LGA1700-MEGSeries-EthernetDrivers3.zip" -TargetPath $MEGEthernet3 
Expand-7zip -ArchiveFileName "$MEGDestination\MSI-LGA1700-MEGSeries-EthernetDrivers4.zip" -TargetPath $MEGEthernet4
Expand-7zip -ArchiveFileName "$MEGDestination\MSI-LGA1700-MEGSeries-EthernetDrivers5.zip" -TargetPath $MEGEthernet5 
Expand-7zip -ArchiveFileName "$MEGDestination\MSI-LGA1700-MEGSeries-EthernetDrivers6.zip" -TargetPath $MEGEthernet6
Expand-7zip -ArchiveFileName "$MEGDestination\MSI-LGA1700-MEGSeries-EthernetDrivers7.zip" -TargetPath $MEGEthernet7 
Expand-7zip -ArchiveFileName "$MEGDestination\MSI-LGA1700-MEGSeries-EthernetDrivers8.zip" -TargetPath $MEGEthernet8

Write-Host
Write-Verbose "Processing: Extracting NVMe Storage drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$MEGDestination\MSI-LGA1700-MEGSeries-IRST-StorageDrivers.zip" -TargetPath $MEGStorage 

Write-Host
Write-Verbose "Processing: Extracting WLAN drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$MEGDestination\MSI-LGA1700-MEGSeries-WLANDrivers1.zip" -TargetPath $MEGWLAN1 
Expand-7zip -ArchiveFileName "$MEGDestination\MSI-LGA1700-MEGSeries-WLANDrivers2.zip" -TargetPath $MEGWLAN2 

Write-Host
Write-Verbose "Completed: Extraction of ALL MSI MEG LGA1700 WLAN Drivers..." -Verbose
Write-Host

Write-Verbose "Completed: Extraction of ALL MSI MEG LGA1700 motherboard Drivers..." -Verbose

Stop-Transcript
