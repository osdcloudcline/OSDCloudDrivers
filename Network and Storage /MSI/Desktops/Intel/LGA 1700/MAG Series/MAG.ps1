$LGA1700MAG = "C:\Logs\OSDCloud\MSI\LGA1700\MAG.log"
Start-Transcript -Path $LGA1700MAG

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   LGA1700 Ethernet Driver URLs
####################################################################################

$MAGEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MAG%20Series/Ethernet/MSI-LGA1700-MAG%20Series-EthernetDrivers1.zip"
$MAGEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MAG%20Series/Ethernet/MSI-LGA1700-MAG%20Series-EthernetDrivers2.zip"
$MAGEthernetURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MAG%20Series/Ethernet/MSI-LGA1700-MAG%20Series-EthernetDrivers3.zip"
$MAGEthernetURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MAG%20Series/Ethernet/MSI-LGA1700-MAG%20Series-EthernetDrivers4.zip"
$MAGEthernetURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MAG%20Series/Ethernet/MSI-LGA1700-MAG%20Series-EthernetDrivers5.zip"
$MAGEthernetURL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MAG%20Series/Ethernet/MSI-LGA1700-MAG%20Series-EthernetDrivers6.zip"

####################################################################################
#                   LGA1700 Storage Driver URLs
####################################################################################

$MAGStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MAG%20Series/Storage/MSI-LGA1700-MAG%20Series-IRST-StorageDrivers.zip"


####################################################################################
#                   LGA1700 WiFi Driver URLs
####################################################################################

$MAGWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MAG%20Series/WLAN/MSI-LGA1700-MAG%20Series-WLANDrivers1.zip"
$MAGWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MAG%20Series/WLAN/MSI-LGA1700-MAG%20Series-WLANDrivers2.zip"


###########################################################################################
#        MAG Ethernet, Bluetooth, Storage and WiFi Destination Folders
###########################################################################################

$MAGDestination =  "C:\Drivers\Motherboards\MSI\LGA1700\MAG"

###########################################################################################
#        MAG Ethernet, Bluetooth, Storage and WiFi Extraction Folders
###########################################################################################

$MAGEthernet1 = "$MAGDestination\Ethernet1"
$MAGEthernet2 = "$MAGDestination\Ethernet2"
$MAGEthernet3 = "$MAGDestination\Ethernet3"
$MAGEthernet4 = "$MAGDestination\Ethernet4"
$MAGEthernet5 = "$MAGDestination\Ethernet5"
$MAGEthernet6 = "$MAGDestination\Ethernet6"

$MAGStorage = "$MAGDestination\Storage"

$MAGWLAN1 = "$MAGDestination\WLAN1"
$MAGWLAN2 = "$MAGDestination\WLAN2"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

Write-Host
Write-Verbose "Processing: MSI MAG LGA1700 motherboard drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring MSI MAG LGA1700 Ethernet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $MAGEthernetURL1 -DestinationDirectory $MAGDestination
Save-WebFile -SourceUrl $MAGEthernetURL2 -DestinationDirectory $MAGDestination
Save-WebFile -SourceUrl $MAGEthernetURL3 -DestinationDirectory $MAGDestination
Save-WebFile -SourceUrl $MAGEthernetURL4 -DestinationDirectory $MAGDestination
Save-WebFile -SourceUrl $MAGEthernetURL5 -DestinationDirectory $MAGDestination
Save-WebFile -SourceUrl $MAGEthernetURL6 -DestinationDirectory $MAGDestination

Write-Host
Write-Verbose "Processing: Acquiring MSI MAG LGA1700 Storage Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $MAGStorageURL -DestinationDirectory $MAGDestination

Write-Host
Write-Verbose "Processing: Acquiring MSI MAG LGA1700 WLAN Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $MAGWiFiURL1 -DestinationDirectory $MAGDestination
Save-WebFile -SourceUrl $MAGWiFiURL2 -DestinationDirectory $MAGDestination

Write-Host
Write-Verbose "Completed: Download of ALL MSI MAG LGA1700 motherboard drivers..." -Verbose

Write-Host
Write-Verbose "Processing: MSI MAG LGA1700 motherboard drivers file extraction..." -Verbose
Write-Host
Write-Verbose "Processing: Extracting Ethernet drivers..." -Verbose

Expand-7zip -ArchiveFileName "$MAGDestination\MSI-LGA1700-MAG Series-EthernetDrivers1.zip" -TargetPath $MAGEthernet1 
Expand-7zip -ArchiveFileName "$MAGDestination\MSI-LGA1700-MAG Series-EthernetDrivers2.zip" -TargetPath $MAGEthernet2
Expand-7zip -ArchiveFileName "$MAGDestination\MSI-LGA1700-MAG Series-EthernetDrivers3.zip" -TargetPath $MAGEthernet1 
Expand-7zip -ArchiveFileName "$MAGDestination\MSI-LGA1700-MAG Series-EthernetDrivers4.zip" -TargetPath $MAGEthernet2
Expand-7zip -ArchiveFileName "$MAGDestination\MSI-LGA1700-MAG Series-EthernetDrivers5.zip" -TargetPath $MAGEthernet1 
Expand-7zip -ArchiveFileName "$MAGDestination\MSI-LGA1700-MAG Series-EthernetDrivers6.zip" -TargetPath $MAGEthernet2

Write-Host
Write-Verbose "Processing: Extracting NVMe Storage drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$MAGDestination\MSI-LGA1700-MAG Series-IRST-StorageDrivers.zip" -TargetPath $MAGStorage 

Write-Host
Write-Verbose "Processing: Extracting WLAN drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$MAGDestination\MSI-LGA1700-MAG Series-WLANDrivers1.zip" -TargetPath $MAGWLAN1 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$MAGDestination\MSI-LGA1700-MAG Series-WLANDrivers2.zip" -TargetPath $MAGWLAN2 -ErrorAction SilentlyContinue

Write-Host
Write-Verbose "Completed: Extraction of ALL MSI MAG LGA1700 WLAN Drivers..." -Verbose
Write-Host

Write-Verbose "Completed: Extraction of ALL MSI MAG LGA1700 motherboard Drivers..." -Verbose

Stop-Transcript
