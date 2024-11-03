$LGA1851CSM = "C:\Logs\OSDCloud\LGA1851\CSM.log"
Start-Transcript

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   LGA 1851 Ethernet and WiFi Driver URLs
####################################################################################

$CSMEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/CSM%20Motherboards/Ethernet%20and%20WiFi/RealtekLANDrivers.zip"
$CSMWiFiURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/CSM%20Motherboards/Ethernet%20and%20WiFi/MediaTek-WiFiDrivers.zip"



####################################################################################
#             LGA 1851 Ethernet and WiFi Driver Download Destination
####################################################################################

$CSMDestination = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\Business"

####################################################################################
#             LGA 1851 Ethernet and WiFi Driver Extraction Destination
####################################################################################

$CSMEthernet = "$CSMDestination\Ethernet"
$CSMWiFi = "$CSMDestination\WiFi"


Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASUS LGA 1851 CSM Motherboard Ethernet Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $CSMEthernetURL -DestinationDirectory $CSMDestination

Write-Verbose "Acquiring ASUS LGA 1851 CSM Motherboard WiFi Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $CSMWiFiURL -DestinationDirectory $CSMDestination

Write-Verbose "ASUS LGA 1851 CSM Motherboard Drivers downloaded" -Verbose

Write-Verbose "Processing: ZIP File extraction" -Verbose

Expand-7Zip -ArchiveFileName "$CSMDestination\Realtek-LANDriver.zip" -TargetPath $CSMEthernet  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$CSMDestination\MediaTekWiFiDrivers.zip" -TargetPath $CSMWiFi  -ErrorAction SilentlyContinue 


Write-Verbose "ZIP Files extracted successfully" -Verbose


Stop-Transcript
