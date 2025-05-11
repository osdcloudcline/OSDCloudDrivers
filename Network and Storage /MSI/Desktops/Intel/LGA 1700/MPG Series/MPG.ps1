$LGA1700MPG = "C:\Logs\OSDCloud\MSI\LGA1700\MPG.log"
Start-Transcript -Path $LGA1700MPG

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   LGA1700 Ethernet Driver URLs
####################################################################################

$MPGEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MPG%20Series/Ethernet/MSI-LGA1700-MPGSeries-EthernetDrivers1.zip"
$MPGEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MPG%20Series/Ethernet/MSI-LGA1700-MPGSeries-EthernetDrivers2.zip"
$MPGEthernetURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MPG%20Series/Ethernet/MSI-LGA1700-MPGSeries-EthernetDrivers3.zip"
$MPGEthernetURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MPG%20Series/Ethernet/MSI-LGA1700-MPGSeries-EthernetDrivers4.zip"
$MPGEthernetURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MPG%20Series/Ethernet/MSI-LGA1700-MPGSeries-EthernetDrivers5.zip"
$MPGEthernetURL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MPG%20Series/Ethernet/MSI-LGA1700-MPGSeries-EthernetDrivers6.zip"
$MPGEthernetURL7 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MPG%20Series/Ethernet/MSI-LGA1700-MPGSeries-EthernetDrivers7.zip"



####################################################################################
#                   LGA1700 Storage Driver URLs
####################################################################################

$MPGStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MPG%20Series/Storage/MSI-LGA1700-MPGSeries-IRST-StorageDrivers.zip"


####################################################################################
#                   LGA1700 WiFi Driver URLs
####################################################################################

$MPGWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MPG%20Series/WLAN/MSI-LGA1700-MPGSeries-WLANDrivers1.zip"
$MPGWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MPG%20Series/WLAN/MSI-LGA1700-MPGSeries-WLANDrivers2.zip"


###########################################################################################
#        MPG Ethernet, Bluetooth, Storage and WiFi Destination Folders
###########################################################################################

$MPGDestination =  "C:\Drivers\Motherboards\MSI\LGA1700\MPG"

###########################################################################################
#        MPG Ethernet, Bluetooth, Storage and WiFi Extraction Folders
###########################################################################################

$MPGEthernet1 = "$MPGDestination\Ethernet1"
$MPGEthernet2 = "$MPGDestination\Ethernet2"
$MPGEthernet3 = "$MPGDestination\Ethernet3"
$MPGEthernet4 = "$MPGDestination\Ethernet4"
$MPGEthernet5 = "$MPGDestination\Ethernet5"
$MPGEthernet6 = "$MPGDestination\Ethernet6"
$MPGEthernet7 = "$MPGDestination\Ethernet7"


$MPGStorage = "$MPGDestination\Storage"

$MPGWLAN1 = "$MPGDestination\WLAN1"
$MPGWLAN2 = "$MPGDestination\WLAN2"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

Write-Host
Write-Verbose "Processing: MSI MPG LGA1700 motherboard drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring MSI MPG LGA1700 Ethernet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $MPGEthernetURL1 -DestinationDirectory $MPGDestination
Save-WebFile -SourceUrl $MPGEthernetURL2 -DestinationDirectory $MPGDestination
Save-WebFile -SourceUrl $MPGEthernetURL3 -DestinationDirectory $MPGDestination
Save-WebFile -SourceUrl $MPGEthernetURL4 -DestinationDirectory $MPGDestination
Save-WebFile -SourceUrl $MPGEthernetURL5 -DestinationDirectory $MPGDestination
Save-WebFile -SourceUrl $MPGEthernetURL6 -DestinationDirectory $MPGDestination
Save-WebFile -SourceUrl $MPGEthernetURL7 -DestinationDirectory $MPGDestination


Write-Host
Write-Verbose "Processing: Acquiring MSI MPG LGA1700 Storage Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $MPGStorageURL -DestinationDirectory $MPGDestination

Write-Host
Write-Verbose "Processing: Acquiring MSI MPG LGA1700 WLAN Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $MPGWiFiURL1 -DestinationDirectory $MPGDestination
Save-WebFile -SourceUrl $MPGWiFiURL2 -DestinationDirectory $MPGDestination

Write-Host
Write-Verbose "Completed: Download of ALL MSI MPG LGA1700 motherboard drivers..." -Verbose

Write-Host
Write-Verbose "Processing: MSI MPG LGA1700 motherboard drivers file extraction..." -Verbose
Write-Host
Write-Verbose "Processing: Extracting Ethernet drivers..." -Verbose

Expand-7zip -ArchiveFileName "$MPGDestination\MSI-LGA1700-MPGSeries-EthernetDrivers1.zip" -TargetPath $MPGEthernet1 
Expand-7zip -ArchiveFileName "$MPGDestination\MSI-LGA1700-MPGSeries-EthernetDrivers2.zip" -TargetPath $MPGEthernet2
Expand-7zip -ArchiveFileName "$MPGDestination\MSI-LGA1700-MPGSeries-EthernetDrivers3.zip" -TargetPath $MPGEthernet3 
Expand-7zip -ArchiveFileName "$MPGDestination\MSI-LGA1700-MPGSeries-EthernetDrivers4.zip" -TargetPath $MPGEthernet4
Expand-7zip -ArchiveFileName "$MPGDestination\MSI-LGA1700-MPGSeries-EthernetDrivers5.zip" -TargetPath $MPGEthernet5 
Expand-7zip -ArchiveFileName "$MPGDestination\MSI-LGA1700-MPGSeries-EthernetDrivers6.zip" -TargetPath $MPGEthernet6
Expand-7zip -ArchiveFileName "$MPGDestination\MSI-LGA1700-MPGSeries-EthernetDrivers7.zip" -TargetPath $MPGEthernet7 


Write-Host
Write-Verbose "Processing: Extracting NVMe Storage drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$MPGDestination\MSI-LGA1700-MPGSeries-IRST-StorageDrivers.zip" -TargetPath $MPGStorage 

Write-Host
Write-Verbose "Processing: Extracting WLAN drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$MPGDestination\MSI-LGA1700-MPGSeries-WLANDrivers1.zip" -TargetPath $MPGWLAN1 
Expand-7zip -ArchiveFileName "$MPGDestination\MSI-LGA1700-MPGSeries-WLANDrivers2.zip" -TargetPath $MPGWLAN2 

Write-Host
Write-Verbose "Completed: Extraction of ALL MSI MPG LGA1700 WLAN Drivers..." -Verbose
Write-Host

Write-Verbose "Completed: Extraction of ALL MSI MPG LGA1700 motherboard Drivers..." -Verbose

Stop-Transcript
