$AM4CSM = "C:\Logs\OSDCloud\ASUS\AM4\CSM.log"
Start-Transcript -Path $AM4CSM

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   AM4 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$CSMEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/CSM%20Motherboards/Ethernet%20and%20WiFi/Intel-I211-LANDrivers.zip"

$CSMStorage1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/CSM%20Motherboards/Storage/RAID-StorageDrivers-NVMe.zip"
$CSMStorage2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/CSM%20Motherboards/Storage/RAID-StorageDrivers-SATA.zip"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$CSMDestination = "C:\Drivers\Motherboards\ASUS\AM4\CSM"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$CSMEthernet = "$CSMDestination\Ethernet"
$CSMStorage1 = "$CSMDestination\Storage1"
$CSMStorage2 = "$CSMDestination\Storage2"

Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASUS AM4 CSM Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $CSMEthernetURL -DestinationDirectory $CSMDestination

Write-Verbose "Acquiring ASUS AM4 CSM Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $CSMStorage1URL -DestinationDirectory $CSMDestination
Save-WebFile -SourceUrl $CSMStorage2URL -DestinationDirectory $CSMDestination

Write-Verbose "ASUS AM4 CSM Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$CSMDestination\Intel-I211-LANDrivers.zip" -TargetPath $CSMEthernet   
Expand-7Zip -ArchiveFileName "$CSMDestination\RAID-StorageDrivers-NVMe.zip" -TargetPath $CSMStorage1   
Expand-7Zip -ArchiveFileName "$CSMDestination\RAID-StorageDrivers-SATA.zip" -TargetPath $CSMStorage2

Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript


