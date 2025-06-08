$AM5PRIME = "C:\Logs\OSDCloud\ASUS\AM5\PRIME.log"
Start-Transcript -Path $AM5PRIME

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   AM5 Ethernet and Storage Driver URLs
####################################################################################

$PRIMEEthernet1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/PRIME%20Motherboards/Ethernet/ASUS-AM5-PRIME-EthernetDrivers1.zip"
$PRIMEEthernet2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/PRIME%20Motherboards/Ethernet/ASUS-AM5-PRIME-EthernetDrivers2.zip"
$PRIMEEthernet3URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/PRIME%20Motherboards/Ethernet/ASUS-AM5-PRIME-EthernetDrivers3.zip"
$PRIMEEthernet4URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/PRIME%20Motherboards/Ethernet/ASUS-AM5-PRIME-EthernetDrivers4.zip"
$PRIMEEthernet5URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/PRIME%20Motherboards/Ethernet/ASUS-AM5-PRIME-EthernetDrivers5.zip"
$PRIMEEthernet6URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/PRIME%20Motherboards/Ethernet/ASUS-AM5-PRIME-EthernetDrivers6.zip"

$PRIMEStorage1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/PRIME%20Motherboards/Storage/ASUS-AM5-PRIME-RAID-StorageDrivers1.zip"
$PRIMEStorage2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/PRIME%20Motherboards/Storage/ASUS-AM5-PRIME-RAID-StorageDrivers2.zip"

$PRIMEWLAN1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/PRIME%20Motherboards/WLAN/ASUS-AM5-PRIME-WLANDrivers1.zip"
$PRIMEWLAN2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/PRIME%20Motherboards/WLAN/ASUS-AM5-PRIME-WLANDrivers2.zip"
$PRIMEWLAN3URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/PRIME%20Motherboards/WLAN/ASUS-AM5-PRIME-WLANDrivers3.zip"
$PRIMEWLAN4URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/PRIME%20Motherboards/WLAN/ASUS-AM5-PRIME-WLANDrivers4.zip"

####################################################################################
#             AM5 Ethernet and Storage Driver Download Destination
####################################################################################

$PRIMEDestination = "C:\Drivers\Motherboards\ASUS\AM5\PRIME"

####################################################################################
#             AM5 Ethernet and Storage Driver Extraction Destination
####################################################################################

$PRIMEEthernet1 = "$PRIMEDestination\Ethernet1"
$PRIMEEthernet2 = "$PRIMEDestination\Ethernet2"
$PRIMEEthernet3 = "$PRIMEDestination\Ethernet3"
$PRIMEEthernet4 = "$PRIMEDestination\Ethernet4"
$PRIMEEthernet5 = "$PRIMEDestination\Ethernet5"
$PRIMEEthernet6 = "$PRIMEDestination\Ethernet6"

$PRIMEStorage1 = "$PRIMEDestination\Storage1"
$PRIMEStorage2 = "$PRIMEDestination\Storage2"

$PRIMEWLAN1 = "$PRIMEDestination\WLAN1"
$PRIMEWLAN2 = "$PRIMEDestination\WLAN2"
$PRIMEWLAN3 = "$PRIMEDestination\WLAN3"
$PRIMEWLAN4 = "$PRIMEDestination\WLAN4"

Write-Verbose "Acquiring ASUS AM5 PRIME Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PRIMEEthernet1URL -DestinationDirectory $PRIMEDestination
Save-WebFile -SourceUrl $PRIMEEthernet2URL -DestinationDirectory $PRIMEDestination
Save-WebFile -SourceUrl $PRIMEEthernet3URL -DestinationDirectory $PRIMEDestination
Save-WebFile -SourceUrl $PRIMEEthernet4URL -DestinationDirectory $PRIMEDestination
Save-WebFile -SourceUrl $PRIMEEthernet5URL -DestinationDirectory $PRIMEDestination
Save-WebFile -SourceUrl $PRIMEEthernet6URL -DestinationDirectory $PRIMEDestination

Write-Verbose "Acquiring ASUS AM5 PRIME Motherboard WLAN Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PRIMEWLAN1URL -DestinationDirectory $PRIMEDestination
Save-WebFile -SourceUrl $PRIMEWLAN2URL -DestinationDirectory $PRIMEDestination
Save-WebFile -SourceUrl $PRIMEWLAN3URL -DestinationDirectory $PRIMEDestination
Save-WebFile -SourceUrl $PRIMEWLAN4URL -DestinationDirectory $PRIMEDestination

Write-Verbose "Acquiring ASUS AM5 PRIME Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PRIMEStorage1URL -DestinationDirectory $PRIMEDestination
Save-WebFile -SourceUrl $PRIMEStorage2URL -DestinationDirectory $PRIMEDestination

Write-Verbose "ASUS AM5 PRIME Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$PRIMEDestination\ASUS-AM5-PRIME-EthernetDrivers1.zip" -TargetPath $PRIMEEthernet1   
Expand-7Zip -ArchiveFileName "$PRIMEDestination\ASUS-AM5-PRIME-EthernetDrivers2.zip" -TargetPath $PRIMEEthernet2   
Expand-7Zip -ArchiveFileName "$PRIMEDestination\ASUS-AM5-PRIME-EthernetDrivers3.zip" -TargetPath $PRIMEEthernet3   
Expand-7Zip -ArchiveFileName "$PRIMEDestination\ASUS-AM5-PRIME-EthernetDrivers4.zip" -TargetPath $PRIMEEthernet4   
Expand-7Zip -ArchiveFileName "$PRIMEDestination\ASUS-AM5-PRIME-EthernetDrivers5.zip" -TargetPath $PRIMEEthernet5   
Expand-7Zip -ArchiveFileName "$PRIMEDestination\ASUS-AM5-PRIME-EthernetDrivers6.zip" -TargetPath $PRIMEEthernet6   
Expand-7Zip -ArchiveFileName "$PRIMEDestination\ASUS-AM5-PRIME-WLANDrivers1.zip" -TargetPath $PRIMEWLAN1   
Expand-7Zip -ArchiveFileName "$PRIMEDestination\ASUS-AM5-PRIME-WLANDrivers2.zip" -TargetPath $PRIMEWLAN2  
Expand-7Zip -ArchiveFileName "$PRIMEDestination\ASUS-AM5-PRIME-WLANDrivers3.zip" -TargetPath $PRIMEWLAN1   
Expand-7Zip -ArchiveFileName "$PRIMEDestination\ASUS-AM5-PRIME-WLANDrivers4.zip" -TargetPath $PRIMEWLAN2  
Expand-7Zip -ArchiveFileName "$PRIMEDestination\ASUS-AM5-PRIME-RAID-StorageDrivers1.zip" -TargetPath $PRIMEStorage1   
Expand-7Zip -ArchiveFileName "$PRIMEDestination\ASUS-AM5-PRIME-RAID-StorageDrivers2.zip" -TargetPath $PRIMEStorage1   

Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
