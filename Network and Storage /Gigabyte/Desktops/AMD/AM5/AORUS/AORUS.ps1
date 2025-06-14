$AM5AORUS = "C:\Logs\OSDCloud\Gigabyte\AM5\AORUS.log"
Start-Transcript -Path $AM5AORUS

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   AM5 Ethernet Driver URLs
####################################################################################

# AORUS B650

$AORUSEthernetB650URL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/B650/Ethernet/Gigabyte-AM5-AORUS-B650-EthernetDrivers1.zip"
$AORUSEthernetB650URL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/B650/Ethernet/Gigabyte-AM5-AORUS-B650-EthernetDrivers2.zip"
$AORUSEthernetB650URL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/B650/Ethernet/Gigabyte-AM5-AORUS-B650-EthernetDrivers3.zip"

# AORUS X670

$AORUSEthernetX670URL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/X670/Ethernet/Gigabyte-AM5-AORUS-X670-EthernetDrivers1.zip"
$AORUSEthernetX670URL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/X670/Ethernet/Gigabyte-AM5-AORUS-X670-EthernetDrivers2.zip"
$AORUSEthernetX670URL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/X670/Ethernet/Gigabyte-AM5-AORUS-X670-EthernetDrivers3.zip"
$AORUSEthernetX670URL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/X670/Ethernet/Gigabyte-AM5-AORUS-X670-EthernetDrivers4.zip"
$AORUSEthernetX670URL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/X670/Ethernet/Gigabyte-AM5-AORUS-X670-EthernetDrivers5.zip"
$AORUSEthernetX670URL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/X670/Ethernet/Gigabyte-AM5-AORUS-X670-EthernetDrivers6.zip"

# AORUS X870

$AORUSEthernetX870URL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/X870/Ethernet/Gigabyte-AM5-AORUS-X870-EthernetDrivers1.zip"
$AORUSEthernetX870URL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/X870/Ethernet/Gigabyte-AM5-AORUS-X870-EthernetDrivers2.zip"

# AORUS X870E

$AORUSEthernetX870EURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/X870E/Ethernet/Gigabyte-AM5-AORUS-X870E-EthernetDrivers1.zip"
$AORUSEthernetX870EURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/X870E/Ethernet/Gigabyte-AM5-AORUS-X870E-EthernetDrivers2.zip"



####################################################################################
#                   AM5 Storage Driver URLs
####################################################################################

# AORUS B650

$AORUSStorageB650URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/B650/Storage/Gigabyte-AM5-AORUS-B650-NVMe-RAID-StorageDrivers.zip"

# AORUS X670

$AORUSStorageX670URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/X670/Storage/Gigabyte-AM5-AORUS-X670-NVMe-RAID-StorageDrivers.zip"

# AORUS X870

$AORUSStorageX870URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/X870/Storage/Gigabyte-AM5-AORUS-X870-NVMe-RAID-StorageDrivers.zip"

# AORUS X870E

$AORUSStorageX870EURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/X870E/Storage/Gigabyte-AM5-AORUS-X870E-NVMe-RAID-StorageDrivers.zip"


####################################################################################
#                   AM5 WiFi Driver URLs
####################################################################################

# AORUS B650

$AORUSWiFiB650URL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/B650/WiFi/Gigabyte-AM5-AORUS-B650-WLANDrivers1.zip"
$AORUSWiFiB650URL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/B650/WiFi/Gigabyte-AM5-AORUS-B650-WLANDrivers2.zip"
$AORUSWiFiB650URL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/B650/WiFi/Gigabyte-AM5-AORUS-B650-WLANDrivers3.zip"

# AORUS X670

$AORUSWiFiX670URL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/X670/WiFi/Gigabyte-AM5-AORUS-X670-WLANDrivers1.zip"
$AORUSWiFiX670URL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/X670/WiFi/Gigabyte-AM5-AORUS-X670-WLANDrivers2.zip"
$AORUSWiFiX670URL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/X670/WiFi/Gigabyte-AM5-AORUS-X670-WLANDrivers3.zip"

# AORUS X870

$AORUSWiFiX870URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/X870/WiFi/Gigabyte-AM5-AORUS-X870-WLANDrivers.zip"

# AORUS X870E

$AORUSWiFiX870EURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/X870E/WiFi/Gigabyte-AM5-AORUS-X870E-WLANDrivers.zip"

###########################################################################################
#        AORUS Ethernet, Bluetooth, Storage and WiFi Destination Folders
###########################################################################################

$AORUSDestination =  "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS"
$AORUSDestinationB650 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\ZIP\B650"
$AORUSDestinationX670 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\ZIP\X670"
$AORUSDestinationX870 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\ZIP\X870"
$AORUSDestinationX870E = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\ZIP\X870E"

###########################################################################################
#        AORUS Ethernet, Bluetooth, Storage and WiFi Extraction Folders
###########################################################################################

# AORUS B650 - Ethernet

$AORUSEthernet1 = "$AORUSDestination\B650\Ethernet1"
$AORUSEthernet2 = "$AORUSDestination\B650\Ethernet2"
$AORUSEthernet3 = "$AORUSDestination\B650\Ethernet3"

# AORUS X670 - Ethernet

$AORUSEthernet4 = "$AORUSDestination\X670\Ethernet1"
$AORUSEthernet5 = "$AORUSDestination\X670\Ethernet2"
$AORUSEthernet6 = "$AORUSDestination\X670\Ethernet3"
$AORUSEthernet7 = "$AORUSDestination\X670\Ethernet4"
$AORUSEthernet8 = "$AORUSDestination\X670\Ethernet5"
$AORUSEthernet9 = "$AORUSDestination\X670\Ethernet6"

# AORUS X870 - Ethernet

$AORUSEthernet10 = "$AORUSDestination\X870\Ethernet1"
$AORUSEthernet11 = "$AORUSDestination\X870\Ethernet2"

# AORUS X870E - Ethernet

$AORUSEthernet12 = "$AORUSDestination\X870E\Ethernet1"
$AORUSEthernet13 = "$AORUSDestination\X870E\Ethernet2"

# AORUS AM5 - Storage

$AORUSStorage1 = "$AORUSDestination\B650\Storage\RAID\NVMe"
$AORUSStorage2 = "$AORUSDestination\X670\Storage\RAID\NVMe"
$AORUSStorage3 = "$AORUSDestination\X870\Storage\RAID\NVMe"
$AORUSStorage4 = "$AORUSDestination\X870E\Storage\RAID\NVMe"

# AORUS B650 - WLAN

$AORUSWLAN1 = "$AORUSDestination\B650\WLAN1"
$AORUSWLAN2 = "$AORUSDestination\B650\WLAN2"
$AORUSWLAN3 = "$AORUSDestination\B650\WLAN3"

# AORUS X670 - WLAN

$AORUSWLAN4 = "$AORUSDestination\X670\WLAN1"
$AORUSWLAN5 = "$AORUSDestination\X670\WLAN2"
$AORUSWLAN6 = "$AORUSDestination\X670\WLAN3"

# AORUS X870 - WLAN

$AORUSWLAN7 = "$AORUSDestination\X870\WLAN"

# AORUS X870E - WLAN

$AORUSWLAN8 = "$AORUSDestination\X870E\WLAN"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

Write-Host
Write-Verbose "Processing: Gigabyte AORUS AM5 motherboard drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM5 B650 Ethernet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $AORUSEthernetB650URL1 -DestinationDirectory $AORUSDestinationB650
Save-WebFile -SourceUrl $AORUSEthernetB650URL2 -DestinationDirectory $AORUSDestinationB650
Save-WebFile -SourceUrl $AORUSEthernetB650URL3 -DestinationDirectory $AORUSDestinationB650

Write-Host
Write-Verbose "Completed: Download of Gigabyte AORUS AM5 B650 Ethernet Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM5 X670 Ethernet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $AORUSEthernetX670URL1 -DestinationDirectory $AORUSDestinationX670
Save-WebFile -SourceUrl $AORUSEthernetX670URL2 -DestinationDirectory $AORUSDestinationX670
Save-WebFile -SourceUrl $AORUSEthernetX670URL3 -DestinationDirectory $AORUSDestinationX670
Save-WebFile -SourceUrl $AORUSEthernetX670URL4 -DestinationDirectory $AORUSDestinationX670
Save-WebFile -SourceUrl $AORUSEthernetX670URL5 -DestinationDirectory $AORUSDestinationX670
Save-WebFile -SourceUrl $AORUSEthernetX670URL6 -DestinationDirectory $AORUSDestinationX670

Write-Host
Write-Verbose "Completed: Download of Gigabyte AORUS AM5 X670 Ethernet Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM5 X870 Ethernet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $AORUSEthernetX870URL1 -DestinationDirectory $AORUSDestinationX870
Save-WebFile -SourceUrl $AORUSEthernetX870URL2 -DestinationDirectory $AORUSDestinationX870

Write-Host
Write-Verbose "Completed: Download of Gigabyte AORUS AM5 X870 Ethernet Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM5 X870E Ethernet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $AORUSEthernetX870EURL1 -DestinationDirectory $AORUSDestinationX870E
Save-WebFile -SourceUrl $AORUSEthernetX870EURL2 -DestinationDirectory $AORUSDestinationX870E

Write-Host
Write-Verbose "Completed: Download of Gigabyte AORUS AM5 X870E Ethernet Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM5 B650 WiFi Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $AORUSWiFiB650URL1 -DestinationDirectory $AORUSDestinationB650
Save-WebFile -SourceUrl $AORUSWiFiB650URL2 -DestinationDirectory $AORUSDestinationB650
Save-WebFile -SourceUrl $AORUSWiFiB650URL3 -DestinationDirectory $AORUSDestinationB650

Write-Host
Write-Verbose "Completed: Download of Gigabyte AORUS AM5 B650 WiFi Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM5 X670 WiFi Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $AORUSWiFiX670URL1 -DestinationDirectory $AORUSDestinationX670
Save-WebFile -SourceUrl $AORUSWiFiX670URL2 -DestinationDirectory $AORUSDestinationX670
Save-WebFile -SourceUrl $AORUSWiFiX670URL3 -DestinationDirectory $AORUSDestinationX670

Write-Host
Write-Verbose "Completed: Download of Gigabyte AORUS AM5 X670 WiFi Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM5 X870 WiFi Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $AORUSWiFiX870URL -DestinationDirectory $AORUSDestinationX870

Write-Host
Write-Verbose "Completed: Download of Gigabyte AORUS AM5 X870 WiFi Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM5 X870E WiFi Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $AORUSWiFiX870EURL -DestinationDirectory $AORUSDestinationX870E

Write-Host
Write-Verbose "Completed: Download of Gigabyte AORUS AM5 X870E WiFi Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM5 B650 Storage Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $AORUSStorageB650URL -DestinationDirectory $AORUSDestinationB650

Write-Host
Write-Verbose "Completed: Download of Gigabyte AORUS AM5 B650 Storage Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM5 X670 Storage Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $AORUSStorageX670URL -DestinationDirectory $AORUSDestinationX670

Write-Host
Write-Verbose "Completed: Download of Gigabyte AORUS AM5 X670 Storage Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM5 X870 Storage Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $AORUSStorageX870URL -DestinationDirectory $AORUSDestinationX870

Write-Host
Write-Verbose "Completed: Download of Gigabyte AORUS AM5 X870 Storage Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM5 X870E Storage Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $AORUSStorageX870EURL -DestinationDirectory $AORUSDestinationX870E

Write-Verbose "Completed: Download of Gigabyte AORUS AM5 X870E Storage Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Gigabyte AORUS AM5 B650 ZIP File Extraction..." -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$AORUSDestinationB650\Gigabyte-AM5-AORUS-B650-EthernetDrivers1.zip" -TargetPath $AORUSEthernet1 
Expand-7Zip -ArchiveFileName "$AORUSDestinationB650\Gigabyte-AM5-AORUS-B650-EthernetDrivers2.zip" -TargetPath $AORUSEthernet2 
Expand-7Zip -ArchiveFileName "$AORUSDestinationB650\Gigabyte-AM5-AORUS-B650-EthernetDrivers3.zip" -TargetPath $AORUSEthernet3 
Expand-7Zip -ArchiveFileName "$AORUSDestinationB650\Gigabyte-AM5-AORUS-B650-NVMe-RAID-StorageDrivers.zip" -TargetPath $AORUSStorage1 
Expand-7Zip -ArchiveFileName "$AORUSDestinationB650\Gigabyte-AM5-AORUS-B650-WLANDrivers1.zip" -TargetPath $AORUSWLAN1 
Expand-7Zip -ArchiveFileName "$AORUSDestinationB650\Gigabyte-AM5-AORUS-B650-WLANDrivers2.zip" -TargetPath $AORUSWLAN2 
Expand-7Zip -ArchiveFileName "$AORUSDestinationB650\Gigabyte-AM5-AORUS-B650-WLANDrivers3.zip" -TargetPath $AORUSWLAN3 


Write-Host
Write-Verbose "Processing: Gigabyte AORUS AM5 X670 ZIP File Extraction..." -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$AORUSDestinationX670\Gigabyte-AM5-AORUS-X670-EthernetDrivers1.zip" -TargetPath $AORUSEthernet4 
Expand-7Zip -ArchiveFileName "$AORUSDestinationX670\Gigabyte-AM5-AORUS-X670-EthernetDrivers2.zip" -TargetPath $AORUSEthernet5 
Expand-7Zip -ArchiveFileName "$AORUSDestinationX670\Gigabyte-AM5-AORUS-X670-EthernetDrivers3.zip" -TargetPath $AORUSEthernet6 
Expand-7Zip -ArchiveFileName "$AORUSDestinationX670\Gigabyte-AM5-AORUS-X670-EthernetDrivers4.zip" -TargetPath $AORUSEthernet7 
Expand-7Zip -ArchiveFileName "$AORUSDestinationX670\Gigabyte-AM5-AORUS-X670-EthernetDrivers5.zip" -TargetPath $AORUSEthernet8 
Expand-7Zip -ArchiveFileName "$AORUSDestinationX670\Gigabyte-AM5-AORUS-X670-EthernetDrivers6.zip" -TargetPath $AORUSEthernet9 
Expand-7Zip -ArchiveFileName "$AORUSDestinationX670\Gigabyte-AM5-AORUS-X670-NVMe-RAID-StorageDrivers.zip" -TargetPath $AORUSStorage2 
Expand-7Zip -ArchiveFileName "$AORUSDestinationX670\Gigabyte-AM5-AORUS-X670-WLANDrivers1.zip" -TargetPath $AORUSWLAN4 
Expand-7Zip -ArchiveFileName "$AORUSDestinationX670\Gigabyte-AM5-AORUS-X670-WLANDrivers2.zip" -TargetPath $AORUSWLAN5 
Expand-7Zip -ArchiveFileName "$AORUSDestinationX670\Gigabyte-AM5-AORUS-X670-WLANDrivers3.zip" -TargetPath $AORUSWLAN6 

Write-Host
Write-Verbose "Processing: Gigabyte AORUS AM5 X870 ZIP File Extraction..." -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$AORUSDestinationX870\Gigabyte-AM5-AORUS-X870-EthernetDrivers1.zip" -TargetPath $AORUSEthernet10 
Expand-7Zip -ArchiveFileName "$AORUSDestinationX870\Gigabyte-AM5-AORUS-X870-EthernetDrivers2.zip" -TargetPath $AORUSEthernet11 
Expand-7Zip -ArchiveFileName "$AORUSDestinationX870\Gigabyte-AM5-AORUS-X870-NVMe-RAID-StorageDrivers.zip" -TargetPath $AORUSStorage3 
Expand-7Zip -ArchiveFileName "$AORUSDestinationX870\Gigabyte-AM5-AORUS-X870-WLANDrivers.zip" -TargetPath $AORUSWLAN7 

Write-Host
Write-Verbose "Processing: Gigabyte AORUS AM5 X870E ZIP File Extraction..." -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$AORUSDestinationX870E\Gigabyte-AM5-AORUS-X870E-EthernetDrivers1.zip" -TargetPath $AORUSEthernet12 
Expand-7Zip -ArchiveFileName "$AORUSDestinationX870E\Gigabyte-AM5-AORUS-X870E-EthernetDrivers2.zip" -TargetPath $AORUSEthernet13 
Expand-7Zip -ArchiveFileName "$AORUSDestinationX870E\Gigabyte-AM5-AORUS-X870E-NVMe-RAID-StorageDrivers.zip" -TargetPath $AORUSStorage4 
Expand-7Zip -ArchiveFileName "$AORUSDestinationX870E\Gigabyte-AM5-AORUS-X870E-WLANDrivers.zip" -TargetPath $AORUSWLAN8 

Write-Host
Write-Verbose "Completed: Gigabyte AORUS AM5 AORUS motherboard ZIP File Extraction..." -Verbose
Write-Host           

Stop-Transcript
