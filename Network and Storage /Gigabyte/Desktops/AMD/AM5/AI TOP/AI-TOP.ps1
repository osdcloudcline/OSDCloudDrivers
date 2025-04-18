$AM5AITOP = "C:\Logs\OSDCloud\Gigabyte\AM5\AI-TOP.log"
Start-Transcript -Path $AM5AITOP

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"


####################################################################################
#                   AM5 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$AITOPEthernet1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AI%20TOP/Ethernet/Gigabyte-AM5-AI%20TOP-EthernetDrivers-Windows10.zip"
$AITOPEthernet2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AI%20TOP/Ethernet/Gigabyte-AM5-AI%20TOP-EthernetDrivers-Windows11.zip"

$AITOPWiFiURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AI%20TOP/WiFi/Gigabyte-AM5-AI%20TOP-WLANDrivers.zip"

$AITOPStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AI%20TOP/Storage/Gigabyte-AM5-AI%20TOP-NVMe-RAID-StorageDrivers.zip"

####################################################################################
#             AM5 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$AITOPDestination = "C:\Drivers\Motherboards\Gigabyte\AM5\AI-TOP"

####################################################################################
#             AM5 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$AITOPEthernet1 = "$AITOPDestination\Ethernet1"
$AITOPEthernet2 = "$AITOPDestination\Ethernet2"

$AITOPWiFi = "$AITOPDestination\WiFi1"

$AITOPStorage = "$AITOPDestination\Storage"


Import-Module -Name OSD -Force 

Write-Verbose "Acquiring Gigabyte AM5 AI TOP Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl  $AITOPEthernet1URL -DestinationDirectory $AITOPDestination
Save-WebFile -SourceUrl  $AITOPEthernet2URL -DestinationDirectory $AITOPDestination

Write-Verbose "Acquiring Gigabyte AM5 AI TOP Motherboard WiFi Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl  $AITOPWiFiURL -DestinationDirectory $AITOPDestination

Write-Verbose "Acquiring Gigabyte AM5 AI TOP Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $AITOPStorageURL -DestinationDirectory $AITOPDestination

Write-Verbose "Gigabyte AM5 AI TOP Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$AITOPDestination\Gigabyte-AM5-AI%20TOP-EthernetDrivers-Windows10.zip" -TargetPath $AITOPEthernet1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$AITOPDestination\Gigabyte-AM5-AI%20TOP-EthernetDrivers-Windows11.zip" -TargetPath $AITOPEthernet2  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$AITOPDestination\Gigabyte-AM5-AI%20TOP-WLANDrivers.zip" -TargetPath $AITOPWiFi  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$AITOPDestination\Gigabyte-AM5-AI%20TOP-NVMe-RAID-StorageDrivers.zip" -TargetPath $AITOPStorage  -ErrorAction SilentlyContinue 


Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
