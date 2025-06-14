$AM5CSM = "C:\Logs\OSDCloud\ASUS\AM5\CSM.log"
Start-Transcript -Path $AM5CSM

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   AM5 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$CSMEthernet1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/CSM%20Motherboards/Ethernet/ASUS-AM5-CSM-EthernetDrivers1.zip"
$CSMEthernet2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/CSM%20Motherboards/Ethernet/ASUS-AM5-CSM-EthernetDrivers2.zip"
$CSMEthernet3URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/CSM%20Motherboards/Ethernet/ASUS-AM5-CSM-EthernetDrivers3.zip"
$CSMEthernet4URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/CSM%20Motherboards/Ethernet/ASUS-AM5-CSM-EthernetDrivers4.zip"
$CSMEthernet5URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/CSM%20Motherboards/Ethernet/ASUS-AM5-CSM-EthernetDrivers5.zip"
$CSMEthernet6URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/CSM%20Motherboards/Ethernet/ASUS-AM5-CSM-EthernetDrivers6.zip"
$CSMEthernet7URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/CSM%20Motherboards/Ethernet/ASUS-AM5-CSM-EthernetDrivers7.zip"
$CSMEthernet8URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/CSM%20Motherboards/Ethernet/ASUS-AM5-CSM-EthernetDrivers8.zip"
$CSMEthernet9URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/CSM%20Motherboards/Ethernet/ASUS-AM5-CSM-EthernetDrivers9.zip"
$CSMEthernet10URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/CSM%20Motherboards/Ethernet/ASUS-AM5-CSM-EthernetDrivers10.zip"

$CSMStorage1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/CSM%20Motherboards/Storage/ASUS-AM5-CSM-StorageDrivers.zip"

$CSMWLAN1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/CSM%20Motherboards/WLAN/ASUS-AM5-CSM-MediaTek-WLANDrivers1.zip"
$CSMWLAN2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/CSM%20Motherboards/WLAN/ASUS-AM5-CSM-Realtek-WLANDrivers2.zip"
$CSMWLAN3URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/CSM%20Motherboards/WLAN/ASUS-AM5-CSM-Realtek-WLANDrivers3.zip"
$CSMWLAN4URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/CSM%20Motherboards/WLAN/ASUS-AM5-CSM-Realtek-WLANDrivers4.zip"

####################################################################################
#             AM5 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$CSMDestination = "C:\Drivers\Motherboards\ASUS\AM5\CSM"

####################################################################################
#             AM5 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$CSMEthernet1 = "$CSMDestination\Ethernet1"
$CSMEthernet2 = "$CSMDestination\Ethernet2"
$CSMEthernet3 = "$CSMDestination\Ethernet3"
$CSMEthernet4 = "$CSMDestination\Ethernet4"
$CSMEthernet5 = "$CSMDestination\Ethernet5"
$CSMEthernet6 = "$CSMDestination\Ethernet6"
$CSMEthernet7 = "$CSMDestination\Ethernet7"
$CSMEthernet8 = "$CSMDestination\Ethernet8"
$CSMEthernet9 = "$CSMDestination\Ethernet9"
$CSMEthernet10 = "$CSMDestination\Ethernet10"

$CSMStorage = "$CSMDestination\Storage"

$CSMWLAN1 = "$CSMDestination\WLAN1"
$CSMWLAN2 = "$CSMDestination\WLAN2"
$CSMWLAN3 = "$CSMDestination\WLAN3"
$CSMWLAN4 = "$CSMDestination\WLAN4"

Write-Verbose "Acquiring ASUS AM5 CSM Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $CSMEthernet1URL -DestinationDirectory $CSMDestination
Save-WebFile -SourceUrl $CSMEthernet2URL -DestinationDirectory $CSMDestination
Save-WebFile -SourceUrl $CSMEthernet3URL -DestinationDirectory $CSMDestination
Save-WebFile -SourceUrl $CSMEthernet4URL -DestinationDirectory $CSMDestination
Save-WebFile -SourceUrl $CSMEthernet5URL -DestinationDirectory $CSMDestination
Save-WebFile -SourceUrl $CSMEthernet6URL -DestinationDirectory $CSMDestination
Save-WebFile -SourceUrl $CSMEthernet7URL -DestinationDirectory $CSMDestination
Save-WebFile -SourceUrl $CSMEthernet8URL -DestinationDirectory $CSMDestination
Save-WebFile -SourceUrl $CSMEthernet9URL -DestinationDirectory $CSMDestination
Save-WebFile -SourceUrl $CSMEthernet10URL -DestinationDirectory $CSMDestination

Write-Verbose "Acquiring ASUS AM5 CSM Motherboard WLAN Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $CSMWLAN1URL -DestinationDirectory $CSMDestination
Save-WebFile -SourceUrl $CSMWLAN2URL -DestinationDirectory $CSMDestination
Save-WebFile -SourceUrl $CSMWLAN3URL -DestinationDirectory $CSMDestination
Save-WebFile -SourceUrl $CSMWLAN4URL -DestinationDirectory $CSMDestination

Write-Verbose "Acquiring ASUS AM5 CSM Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $CSMStorage1URL -DestinationDirectory $CSMDestination


Write-Verbose "ASUS AM5 CSM Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$CSMDestination\ASUS-AM5-CSM-EthernetDrivers1.zip" -TargetPath $CSMEthernet1   
Expand-7Zip -ArchiveFileName "$CSMDestination\ASUS-AM5-CSM-EthernetDrivers2.zip" -TargetPath $CSMEthernet2   
Expand-7Zip -ArchiveFileName "$CSMDestination\ASUS-AM5-CSM-EthernetDrivers3.zip" -TargetPath $CSMEthernet3   
Expand-7Zip -ArchiveFileName "$CSMDestination\ASUS-AM5-CSM-EthernetDrivers4.zip" -TargetPath $CSMEthernet4   
Expand-7Zip -ArchiveFileName "$CSMDestination\ASUS-AM5-CSM-EthernetDrivers5.zip" -TargetPath $CSMEthernet5   
Expand-7Zip -ArchiveFileName "$CSMDestination\ASUS-AM5-CSM-EthernetDrivers6.zip" -TargetPath $CSMEthernet6   
Expand-7Zip -ArchiveFileName "$CSMDestination\ASUS-AM5-CSM-EthernetDrivers7.zip" -TargetPath $CSMEthernet7   
Expand-7Zip -ArchiveFileName "$CSMDestination\ASUS-AM5-CSM-EthernetDrivers8.zip" -TargetPath $CSMEthernet8   
Expand-7Zip -ArchiveFileName "$CSMDestination\ASUS-AM5-CSM-EthernetDrivers9.zip" -TargetPath $CSMEthernet9   
Expand-7Zip -ArchiveFileName "$CSMDestination\ASUS-AM5-CSM-EthernetDrivers10.zip" -TargetPath $CSMEthernet10   

Expand-7Zip -ArchiveFileName "$CSMDestination\ASUS-AM5-CSM-StorageDrivers.zip" -TargetPath $CSMStorage   

Expand-7Zip -ArchiveFileName "$CSMDestination\ASUS-AM5-CSM-MediaTek-WLANDrivers1.zip" -TargetPath $CSMWLAN1   
Expand-7Zip -ArchiveFileName "$CSMDestination\ASUS-AM5-CSM-Realtek-WLANDrivers2.zip" -TargetPath $CSMWLAN2   
Expand-7Zip -ArchiveFileName "$CSMDestination\ASUS-AM5-CSM-Realtek-WLANDrivers3.zip" -TargetPath $CSMWLAN3   
Expand-7Zip -ArchiveFileName "$CSMDestination\ASUS-AM5-CSM-Realtek-WLANDrivers4.zip" -TargetPath $CSMWLAN4  

Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
