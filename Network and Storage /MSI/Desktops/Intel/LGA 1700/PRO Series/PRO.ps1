$LGA1700PRO = "C:\Logs\OSDCloud\MSI\LGA1700\PRO.log"
Start-Transcript -Path $LGA1700PRO

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   LGA1700 Ethernet Driver URLs
####################################################################################

$PROEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/PRO%20Series/Ethernet/MSI-LGA1700-PROSeries-EthernetDrivers1.zip"
$PROEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/PRO%20Series/Ethernet/MSI-LGA1700-PROSeries-EthernetDrivers2.zip"
$PROEthernetURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/PRO%20Series/Ethernet/MSI-LGA1700-PROSeries-EthernetDrivers3.zip"
$PROEthernetURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/PRO%20Series/Ethernet/MSI-LGA1700-PROSeries-EthernetDrivers4.zip"
$PROEthernetURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/PRO%20Series/Ethernet/MSI-LGA1700-PROSeries-EthernetDrivers5.zip"
$PROEthernetURL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/PRO%20Series/Ethernet/MSI-LGA1700-PROSeries-EthernetDrivers6.zip"
$PROEthernetURL7 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/PRO%20Series/Ethernet/MSI-LGA1700-PROSeries-EthernetDrivers7.zip"
$PROEthernetURL8 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/PRO%20Series/Ethernet/MSI-LGA1700-PROSeries-EthernetDrivers8.zip"


####################################################################################
#                   LGA1700 Storage Driver URLs
####################################################################################

$PROStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/PRO%20Series/Storage/MSI-LGA1700-PROSeries-IRST-StorageDrivers.zip"


####################################################################################
#                   LGA1700 WiFi Driver URLs
####################################################################################

$PROWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/PRO%20Series/WLAN/MSI-LGA1700-PROSeries-WLANDrivers1.zip"
$PROWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/PRO%20Series/WLAN/MSI-LGA1700-PROSeries-WLANDrivers2.zip"
$PROWiFiURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/PRO%20Series/WLAN/MSI-LGA1700-PROSeries-WLANDrivers3.zip"

###########################################################################################
#        PRO Ethernet, Bluetooth, Storage and WiFi Destination Folders
###########################################################################################

$PRODestination =  "C:\Drivers\Motherboards\MSI\LGA1700\PRO"

###########################################################################################
#        PRO Ethernet, Bluetooth, Storage and WiFi Extraction Folders
###########################################################################################

$PROEthernet1 = "$PRODestination\Ethernet1"
$PROEthernet2 = "$PRODestination\Ethernet2"
$PROEthernet3 = "$PRODestination\Ethernet3"
$PROEthernet4 = "$PRODestination\Ethernet4"
$PROEthernet5 = "$PRODestination\Ethernet5"
$PROEthernet6 = "$PRODestination\Ethernet6"
$PROEthernet7 = "$PRODestination\Ethernet7"
$PROEthernet8 = "$PRODestination\Ethernet8"

$PROStorage = "$PRODestination\Storage"

$PROWLAN1 = "$PRODestination\WLAN1"
$PROWLAN2 = "$PRODestination\WLAN2"
$PROWLAN3 = "$PRODestination\WLAN3"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

Write-Host
Write-Verbose "Processing: MSI PRO LGA1700 motherboard drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring MSI PRO LGA1700 Ethernet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $PROEthernetURL1 -DestinationDirectory $PRODestination
Save-WebFile -SourceUrl $PROEthernetURL2 -DestinationDirectory $PRODestination
Save-WebFile -SourceUrl $PROEthernetURL3 -DestinationDirectory $PRODestination
Save-WebFile -SourceUrl $PROEthernetURL4 -DestinationDirectory $PRODestination
Save-WebFile -SourceUrl $PROEthernetURL5 -DestinationDirectory $PRODestination
Save-WebFile -SourceUrl $PROEthernetURL6 -DestinationDirectory $PRODestination
Save-WebFile -SourceUrl $PROEthernetURL7 -DestinationDirectory $PRODestination
Save-WebFile -SourceUrl $PROEthernetURL8 -DestinationDirectory $PRODestination

Write-Host
Write-Verbose "Processing: Acquiring MSI PRO LGA1700 Storage Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $PROStorageURL -DestinationDirectory $PRODestination

Write-Host
Write-Verbose "Processing: Acquiring MSI PRO LGA1700 WLAN Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $PROWiFiURL1 -DestinationDirectory $PRODestination
Save-WebFile -SourceUrl $PROWiFiURL2 -DestinationDirectory $PRODestination
Save-WebFile -SourceUrl $PROWiFiURL3 -DestinationDirectory $PRODestination

Write-Host
Write-Verbose "Completed: Download of ALL MSI PRO LGA1700 motherboard drivers..." -Verbose

Write-Host
Write-Verbose "Processing: MSI PRO LGA1700 motherboard drivers file extraction..." -Verbose
Write-Host
Write-Verbose "Processing: Extracting Ethernet drivers..." -Verbose

Expand-7zip -ArchiveFileName "$PRODestination\MSI-LGA1700-PROSeries-EthernetDrivers1.zip" -TargetPath $PROEthernet1 
Expand-7zip -ArchiveFileName "$PRODestination\MSI-LGA1700-PROSeries-EthernetDrivers2.zip" -TargetPath $PROEthernet2
Expand-7zip -ArchiveFileName "$PRODestination\MSI-LGA1700-PROSeries-EthernetDrivers3.zip" -TargetPath $PROEthernet3 
Expand-7zip -ArchiveFileName "$PRODestination\MSI-LGA1700-PROSeries-EthernetDrivers4.zip" -TargetPath $PROEthernet4
Expand-7zip -ArchiveFileName "$PRODestination\MSI-LGA1700-PROSeries-EthernetDrivers5.zip" -TargetPath $PROEthernet5 
Expand-7zip -ArchiveFileName "$PRODestination\MSI-LGA1700-PROSeries-EthernetDrivers6.zip" -TargetPath $PROEthernet6
Expand-7zip -ArchiveFileName "$PRODestination\MSI-LGA1700-PROSeries-EthernetDrivers7.zip" -TargetPath $PROEthernet7 
Expand-7zip -ArchiveFileName "$PRODestination\MSI-LGA1700-PROSeries-EthernetDrivers8.zip" -TargetPath $PROEthernet8

Write-Host
Write-Verbose "Processing: Extracting NVMe Storage drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$PRODestination\MSI-LGA1700-PROSeries-IRST-StorageDrivers.zip" -TargetPath $PROStorage 

Write-Host
Write-Verbose "Processing: Extracting WLAN drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$PRODestination\MSI-LGA1700-PROSeries-WLANDrivers1.zip" -TargetPath $PROWLAN1 
Expand-7zip -ArchiveFileName "$PRODestination\MSI-LGA1700-PROSeries-WLANDrivers2.zip" -TargetPath $PROWLAN2 
Expand-7zip -ArchiveFileName "$PRODestination\MSI-LGA1700-PROSeries-WLANDrivers2.zip" -TargetPath $PROWLAN3

Write-Host
Write-Verbose "Completed: Extraction of ALL MSI PRO LGA1700 WLAN Drivers..." -Verbose
Write-Host

Write-Verbose "Completed: Extraction of ALL MSI PRO LGA1700 motherboard Drivers..." -Verbose

Stop-Transcript
