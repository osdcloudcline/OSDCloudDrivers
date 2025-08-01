$AM5Eagle = "C:\Logs\OSDCloud\Gigabyte\AM5\Eagle.log"
Start-Transcript -Path $AM5Eagle

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   AM5 Ethernet Driver URLs
####################################################################################

# Eagle B650

$EagleEthernetB650URL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Eagle/B650/Ethernet/Gigabyte-AM5-Eagle-B650-EthernetDrivers1.zip"
$EagleEthernetB650URL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Eagle/B650/Ethernet/Gigabyte-AM5-Eagle-B650-EthernetDrivers2.zip"

# Eagle X870

$EagleEthernetX870URL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Eagle/X870/Ethernet/Gigabyte-AM5-Eagle-X870-EthernetDrivers1.zip"
$EagleEthernetX870URL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Eagle/X870/Ethernet/Gigabyte-AM5-Eagle-X870-EthernetDrivers2.zip"

####################################################################################
#                   AM5 Storage Driver URLs
####################################################################################

# Eagle B650

$EagleStorageB650URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Eagle/B650/Storage/Gigabyte-AM5-Eagle-B650-NVMe-RAID-StorageDrivers.zip"


# Eagle X870

$EagleStorageX870URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Eagle/X870/Storage/Gigabyte-AM5-Eagle-X870-NVMe-RAID-StorageDrivers.zip"

####################################################################################
#                   AM5 WiFi Driver URLs
####################################################################################

# Eagle B650

$EagleWiFiB650URL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Eagle/B650/WiFi/Gigabyte-AM5-Eagle-B650-WLANDrivers1.zip"
$EagleWiFiB650URL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Eagle/B650/WiFi/Gigabyte-AM5-Eagle-B650-WLANDrivers2.zip"

# Eagle X870

$EagleWiFiX870URL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Eagle/X870/WiFi/Gigabyte-AM5-Eagle-X870-WLANDrivers1.zip"
$EagleWiFiX870URL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Eagle/X870/WiFi/Gigabyte-AM5-Eagle-X870-WLANDrivers2.zip"

###########################################################################################
#        Eagle Ethernet, Bluetooth, Storage and WiFi Destination Folders
###########################################################################################

$EagleDestination =  "C:\Drivers\Motherboards\Gigabyte\AM5\Eagle"
$EagleDestinationB650 = "C:\Drivers\Motherboards\Gigabyte\AM5\Eagle\ZIP\B650"
$EagleDestinationX870 = "C:\Drivers\Motherboards\Gigabyte\AM5\Eagle\ZIP\X870"

###########################################################################################
#        Eagle Ethernet, Bluetooth, Storage and WiFi Extraction Folders
###########################################################################################

# Eagle B650 - Ethernet

$EagleEthernet1 = "$EagleDestination\B650\Ethernet1"
$EagleEthernet2 = "$EagleDestination\B650\Ethernet2"

# Eagle X870 - Ethernet

$EagleEthernet3 = "$EagleDestination\X870\Ethernet1"
$EagleEthernet4 = "$EagleDestination\X870\Ethernet2"

# Eagle AM5 - Storage

$EagleStorage1 = "$EagleDestination\B650\Storage\RAID\NVMe"
$EagleStorage2 = "$EagleDestination\X870\Storage\RAID\NVMe"

# Eagle B650 - WLAN

$EagleWLAN1 = "$EagleDestination\B650\WLAN1"
$EagleWLAN2 = "$EagleDestination\B650\WLAN2"

# Eagle X870 - WLAN

$EagleWLAN3 = "$EagleDestination\X870\WLAN1"
$EagleWLAN4 = "$EagleDestination\X870\WLAN2"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

Write-Host
Write-Verbose "Processing: Gigabyte Eagle AM5 B650 motherboard drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Eagle AM5 B650 Ethernet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $EagleEthernetB650URL1 -DestinationDirectory $EagleDestinationB650
Save-WebFile -SourceUrl $EagleEthernetB650URL2 -DestinationDirectory $EagleDestinationB650

Write-Host
Write-Verbose "Completed: Download of Gigabyte Eagle AM5 B650 Ethernet Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Eagle AM5 X870 Ethernet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $EagleEthernetX870URL1 -DestinationDirectory $EagleDestinationX870
Save-WebFile -SourceUrl $EagleEthernetX870URL2 -DestinationDirectory $EagleDestinationX870

Write-Host
Write-Verbose "Completed: Download of Gigabyte Eagle AM5 X870 Ethernet Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Eagle AM5 B650 WiFi Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $EagleWiFiB650URL1 -DestinationDirectory $EagleDestinationB650
Save-WebFile -SourceUrl $EagleWiFiB650URL2 -DestinationDirectory $EagleDestinationB650


Write-Host
Write-Verbose "Completed: Download of Gigabyte Eagle AM5 B650 WiFi Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Eagle AM5 X870 WiFi Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $EagleWiFiX870URL1 -DestinationDirectory $EagleDestinationX870
Save-WebFile -SourceUrl $EagleWiFiX870URL2 -DestinationDirectory $EagleDestinationX870

Write-Host
Write-Verbose "Completed: Download of Gigabyte Eagle AM5 X870 WiFi Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Eagle AM5 B650 Storage Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $EagleStorageB650URL -DestinationDirectory $EagleDestinationB650

Write-Host
Write-Verbose "Completed: Download of Gigabyte Eagle AM5 B650 Storage Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Eagle AM5 X870 Storage Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $EagleStorageX870URL -DestinationDirectory $EagleDestinationX870

Write-Host
Write-Verbose "Completed: Download of Gigabyte Eagle AM5 X870 Storage Drivers..." -Verbose
Write-Host



Write-Host
Write-Verbose "Processing: Gigabyte Eagle AM5 B650 ZIP File Extraction..." -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$EagleDestinationB650\Gigabyte-AM5-Eagle-B650-EthernetDrivers1.zip" -TargetPath $EagleEthernet1 
Expand-7Zip -ArchiveFileName "$EagleDestinationB650\Gigabyte-AM5-Eagle-B650-EthernetDrivers2.zip" -TargetPath $EagleEthernet2 
Expand-7Zip -ArchiveFileName "$EagleDestinationB650\Gigabyte-AM5-Eagle-B650-NVMe-RAID-StorageDrivers.zip" -TargetPath $EagleStorage1 
Expand-7Zip -ArchiveFileName "$EagleDestinationB650\Gigabyte-AM5-Eagle-B650-WLANDrivers1.zip" -TargetPath $EagleWLAN1 
Expand-7Zip -ArchiveFileName "$EagleDestinationB650\Gigabyte-AM5-Eagle-B650-WLANDrivers2.zip" -TargetPath $EagleWLAN2 
Write-Host
Write-Verbose "Processing: Gigabyte Eagle AM5 X870 ZIP File Extraction..." -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$EagleDestinationX870\Gigabyte-AM5-Eagle-X870-EthernetDrivers1.zip" -TargetPath $EagleEthernet3 
Expand-7Zip -ArchiveFileName "$EagleDestinationX870\Gigabyte-AM5-Eagle-X870-EthernetDrivers2.zip" -TargetPath $EagleEthernet4 
Expand-7Zip -ArchiveFileName "$EagleDestinationX870\Gigabyte-AM5-Eagle-X870-NVMe-RAID-StorageDrivers.zip" -TargetPath $EagleStorage2 
Expand-7Zip -ArchiveFileName "$EagleDestinationX870\Gigabyte-AM5-Eagle-X870-WLANDrivers1.zip" -TargetPath $EagleWLAN3 
Expand-7Zip -ArchiveFileName "$EagleDestinationX870\Gigabyte-AM5-Eagle-X870-WLANDrivers2.zip" -TargetPath $EagleWLAN4 

Write-Host
Write-Verbose "Completed: Gigabyte Eagle AM5 Eagle motherboard ZIP File Extraction..." -Verbose
Write-Host

Stop-Transcript
