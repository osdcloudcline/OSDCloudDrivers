$AM4PRIME = "C:\Logs\OSDCloud\ASUS\AM4\PRIME.log"
Start-Transcript -Path $AM4PRIME

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   AM4 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$PRIMEEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/PRIME%20Motherboards/Ethernet%20and%20WiFi/PRIME-Intel-i211-LANDrivers.zip"
$PRIMEEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/PRIME%20Motherboards/Ethernet%20and%20WiFi/PRIME-Realtek-LANDrivers.zip"
$PRIMEEthernetURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/PRIME%20Motherboards/Ethernet%20and%20WiFi/PRIME-Realtek-LANDrivers2.zip"

$PRIMEWiFiURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/PRIME%20Motherboards/Ethernet%20and%20WiFi/PRIME-WiFiDrivers.zip"

$PRIMEStorageURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/PRIME%20Motherboards/Storage/PRIME-NVMeStorageDrivers.zip"
$PRIMEStorageURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/PRIME%20Motherboards/Storage/PRIME-NVMeStorageDrivers2.zip"
$PRIMEStorageURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/PRIME%20Motherboards/Storage/PRIME-SATAStorageDrivers.zip"
$PRIMEStorageURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/PRIME%20Motherboards/Storage/PRIME-SATAStorageDrivers2.zip"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$PRIMEDestination = "C:\Drivers\Motherboards\ASUS\AM4\PRIME"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$PRIMEEthernet1 = "$PRIMEDestination\Ethernet1"
$PRIMEEthernet2 = "$PRIMEDestination\Ethernet2"
$PRIMEEthernet3 = "$PRIMEDestination\Ethernet3"

$PRIMEWiFi = "$PRIMEDestination\WiFi"

$PRIMEStorage1 = "$PRIMEDestination\Storage1"
$PRIMEStorage2 = "$PRIMEDestination\Storage2"
$PRIMEStorage3 = "$PRIMEDestination\Storage3"
$PRIMEStorage4 = "$PRIMEDestination\Storage4"

Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASUS AM4 PRIME Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PRIMEEthernetURL1 -DestinationDirectory $PRIMEDestination
Save-WebFile -SourceUrl $PRIMEEthernetURL2 -DestinationDirectory $PRIMEDestination
Save-WebFile -SourceUrl $PRIMEEthernetURL3 -DestinationDirectory $PRIMEDestination


Write-Verbose "Acquiring ASUS AM4 PRIME Motherboard WiFi Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PRIMEWiFiURL -DestinationDirectory $PRIMEDestination

Write-Verbose "Acquiring ASUS AM4 PRIME Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PRIMEStorageURL1 -DestinationDirectory $PRIMEDestination
Save-WebFile -SourceUrl $PRIMEStorageURL2 -DestinationDirectory $PRIMEDestination
Save-WebFile -SourceUrl $PRIMEStorageURL3 -DestinationDirectory $PRIMEDestination
Save-WebFile -SourceUrl $PRIMEStorageURL4 -DestinationDirectory $PRIMEDestination

Write-Verbose "ASUS AM4 PRIME Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$PRIMEDestination\PRIME-Intel-i211-LANDrivers.zip" -TargetPath $PRIMEEthernet1  
Expand-7Zip -ArchiveFileName "$PRIMEDestination\PRIME-Realtek-LANDrivers.zip" -TargetPath $PRIMEEthernet2   
Expand-7Zip -ArchiveFileName "$PRIMEDestination\PRIME-Realtek-LANDrivers2.zip" -TargetPath $PRIMEEthernet3   
Expand-7Zip -ArchiveFileName "$PRIMEDestination\PRIME-WiFiDrivers.zip" -TargetPath $PRIMEWiFi   
Expand-7Zip -ArchiveFileName "$PRIMEDestination\PRIME-NVMeStorageDrivers.zip" -TargetPath $PRIMEStorage1   
Expand-7Zip -ArchiveFileName "$PRIMEDestination\PRIME-NVMeStorageDrivers2.zip" -TargetPath $PRIMEStorage2   
Expand-7Zip -ArchiveFileName "$PRIMEDestination\PRIME-SATAStorageDrivers.zip" -TargetPath $PRIMEStorage3   
Expand-7Zip -ArchiveFileName "$PRIMEDestination\PRIME-SATAStorageDrivers2.zip" -TargetPath $PRIMEStorage4  

Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript


