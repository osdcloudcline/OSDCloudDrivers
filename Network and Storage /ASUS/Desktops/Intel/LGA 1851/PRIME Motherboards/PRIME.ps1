$LGA1851PRIME = "C:\Logs\OSDCloud\LGA1851\PRIME.log"
Start-Transcript -Path $LGA1851PRIME

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   LGA 1851 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$PRIMEEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/PRIME%20Motherboards/Ethernet%20and%20WiFi/RealTek-LANDrivers.zip"
$PRIMEWiFiURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/PRIME%20Motherboards/Ethernet%20and%20WiFi/MediaTek-WiFiDrivers.zip"
$PRIMEStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/PRIME%20Motherboards/Storage/IRST-StorageDrivers.zip"


####################################################################################
#             LGA 1851 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$PRIMEDestination = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\PRIME"

####################################################################################
#             LGA 1851 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$PRIMEEthernet = "$PRIMEDestination\Ethernet"
$PRIMEWiFi = "$PRIMEDestination\WiFi"
$PRIMEStorage = "$PRIMEDestination\Storage"

Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASUS LGA 1851 PRIME Motherboard Ethernet Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $PRIMEEthernetURL -DestinationDirectory $PRIMEDestination

Write-Verbose "Acquiring ASUS LGA 1851 PRIME Motherboard WiFi Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $PRIMEWiFiURL -DestinationDirectory $PRIMEDestination

Write-Verbose "Acquiring ASUS LGA 1851 PRIME Motherboard Storage Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $PRIMEStorageURL -DestinationDirectory $PRIMEDestination

Write-Verbose "ASUS LGA 1851 PRIME Motherboard Drivers downloaded" -Verbose

Write-Verbose "Processing: ZIP File extraction" -Verbose

Expand-7Zip -ArchiveFileName "$PRIMEDestination\Realtek-LANDriver.zip" -TargetPath $PRIMEEthernet  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PRIMEDestination\MediaTekWiFiDrivers.zip" -TargetPath $PRIMEWiFi  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PRIMEDestination\IRST-StorageDrivers.zip" -TargetPath $PRIMEStorage  -ErrorAction SilentlyContinue 

Write-Verbose "ZIP Files extracted successfully" -Verbose


Stop-Transcript

$ASUSOSDCloudISOMain = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/CreateISO-Main.ps1")
Invoke-Expression $($ASUSOSDCloudISOMain.Content)
