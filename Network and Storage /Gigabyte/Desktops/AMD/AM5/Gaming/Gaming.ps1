$AM5Gaming = "C:\Logs\OSDCloud\Gigabyte\AM5\Gaming.log"
Start-Transcript -Path $AM5Gaming

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   AM5 Ethernet Driver URLs
####################################################################################

# Gaming A620

$GamingEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/A620/Ethernet/Gigabyte-AM5-Gaming-A620-EthernetDrivers1.zip"
$GamingEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/A620/Ethernet/Gigabyte-AM5-Gaming-A620-EthernetDrivers2.zip"

# Gaming B650

$GamingEthernetURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/B650/Ethernet/Gigabyte-AM5-Gaming-B650-EthernetDrivers1.zip"
$GamingEthernetURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/B650/Ethernet/Gigabyte-AM5-Gaming-B650-EthernetDrivers2.zip"


# Gaming X670

$GamingEthernetURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/X670/Ethernet/Gigabyte-AM5-Gaming-X670-EthernetDrivers1.zip"
$GamingEthernetURL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/X670/Ethernet/Gigabyte-AM5-Gaming-X670-EthernetDrivers2.zip"

# Gaming X870

$GamingEthernetURL7 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/X870/Ethernet/Gigabyte-AM5-Gaming-X870-EthernetDrivers1.zip"
$GamingEthernetURL8 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/X870/Ethernet/Gigabyte-AM5-Gaming-X870-EthernetDrivers2.zip"



####################################################################################
#                   AM5 Storage Driver URLs
####################################################################################

# Gaming A620

$GamingStorageURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/A620/Storage/Gigabyte-AM5-Gaming-A620-NVMe-RAID-StorageDrivers.zip"

# Gaming B650

$GamingStorageURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/B650/Storage/Gigabyte-AM5-Gaming-B650-NVMe-RAID-StorageDrivers.zip"

# Gaming X670

$GamingStorageURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/X670/Storage/Gigabyte-AM5-Gaming-X670-NVMe-RAID-StorageDrivers.zip"

# Gaming X870

$GamingStorageURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/X870/Storage/Gigabyte-AM5-Gaming-X870-NVMe-RAID-StorageDrivers.zip"


####################################################################################
#                   AM5 WiFi Driver URLs
####################################################################################

# Gaming A620

$GamingWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/A620/WiFi/Gigabyte-AM5-Gaming-A620-WLANDrivers.zip"

# Gaming B650

$GamingWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/B650/WiFi/Gigabyte-AM5-Gaming-B650-WLANDrivers1.zip"
$GamingWiFiURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/B650/WiFi/Gigabyte-AM5-Gaming-B650-WLANDrivers2.zip"
$GamingWiFiURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/B650/WiFi/Gigabyte-AM5-Gaming-B650-WLANDrivers3.zip"


# Gaming X670

$GamingWiFiURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/X670/WiFi/Gigabyte-AM5-Gaming-X670-WLANDrivers1.zip"
$GamingWiFiURL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/X670/WiFi/Gigabyte-AM5-Gaming-X670-WLANDrivers2.zip"

# Gaming X870

$GamingWiFiURL7 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/X870/WiFi/Gigabyte-AM5-Gaming-X870-WLANDrivers1.zip"
$GamingWiFiURL8 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/X870/WiFi/Gigabyte-AM5-Gaming-X870-WLANDrivers2.zip"
$GamingWiFiURL9 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/X870/WiFi/Gigabyte-AM5-Gaming-X870-WLANDrivers3.zip"
$GamingWiFiURL10 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/X870/WiFi/Gigabyte-AM5-Gaming-X870-WLANDrivers4.zip"
$GamingWiFiURL11 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/X870/WiFi/Gigabyte-AM5-Gaming-X870-WLANDrivers5.zip"
$GamingWiFiURL12 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/X870/WiFi/Gigabyte-AM5-Gaming-X870-WLANDrivers6.zip"

###########################################################################################
#        Gaming Ethernet, Bluetooth, Storage and WiFi Destination Folders
###########################################################################################

$GamingDestination =  "C:\Drivers\Motherboards\Gigabyte\AM5\Gaming"
$GamingDestinationA620 =  "C:\Drivers\Motherboards\Gigabyte\AM5\Gaming\ZIP\A620"
$GamingDestinationB650 =  "C:\Drivers\Motherboards\Gigabyte\AM5\Gaming\ZIP\B650"
$GamingDestinationX670 =  "C:\Drivers\Motherboards\Gigabyte\AM5\Gaming\ZIP\X670"
$GamingDestinationX870 =  "C:\Drivers\Motherboards\Gigabyte\AM5\Gaming\ZIP\X870"

###########################################################################################
#        Gaming Ethernet, Bluetooth, Storage and WiFi Extraction Folders
###########################################################################################

# Gaming A620 - Ethernet

$GamingEthernet1 = "$GamingDestination\A620\Ethernet1"
$GamingEthernet2 = "$GamingDestination\A620\Ethernet2"

# Gaming B650 - Ethernet

$GamingEthernet3 = "$GamingDestination\B650\Ethernet1"
$GamingEthernet4 = "$GamingDestination\B650\Ethernet2"

# Gaming X670 - Ethernet

$GamingEthernet5 = "$GamingDestination\X670\Ethernet1"
$GamingEthernet6 = "$GamingDestination\X670\Ethernet2"

# Gaming X870 - Ethernet

$GamingEthernet7 = "$GamingDestination\X870\Ethernet1"
$GamingEthernet8 = "$GamingDestination\X870\Ethernet2"

# Gaming A620 - Storage

$GamingStorage1 = "$GamingDestination\A620\Storage\RAID\NVMe"

# Gaming B650 - Storage

$GamingStorage2 = "$GamingDestination\B650\Storage\RAID\NVMe"

# Gaming X670 - Storage

$GamingStorage3 = "$GamingDestination\X670\Storage\RAID\NVMe"

# Gaming X870 - Storage

$GamingStorage4 = "$GamingDestination\X870\Storage\RAID\NVMe"

# Gaming A620 - WLAN

$GamingWLAN1 = "$GamingDestination\A620\WLAN"

# Gaming B650 - WLAN

$GamingWLAN2 = "$GamingDestination\B650\WLAN1"
$GamingWLAN3 = "$GamingDestination\B650\WLAN2"
$GamingWLAN4 = "$GamingDestination\B650\WLAN3"

# Gaming X670 - WLAN

$GamingWLAN5 = "$GamingDestination\X670\WLAN1"
$GamingWLAN6 = "$GamingDestination\X670\WLAN2"

# Gaming X870 - WLAN

$GamingWLAN7 = "$GamingDestination\X870\WLAN1"
$GamingWLAN8 = "$GamingDestination\X870\WLAN2"
$GamingWLAN9 = "$GamingDestination\X870\WLAN3"
$GamingWLAN10 = "$GamingDestination\X870\WLAN4"
$GamingWLAN11 = "$GamingDestination\X870\WLAN5"
$GamingWLAN12 = "$GamingDestination\X870\WLAN6"


Write-Host
Write-Verbose "Processing: Gigabyte Gaming AM5 motherboard drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring Gigabyte Gaming AM5 A620 Ethernet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $GamingEthernetURL1 -DestinationDirectory $GamingDestinationA620
Save-WebFile -SourceUrl $GamingEthernetURL2 -DestinationDirectory $GamingDestinationA620

Write-Host
Write-Verbose "Completed: Download of Gigabyte Gaming AM5 A620 Ethernet Drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring Gigabyte Gaming AM5 B650 Ethernet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $GamingEthernetURL3 -DestinationDirectory $GamingDestinationB650
Save-WebFile -SourceUrl $GamingEthernetURL4 -DestinationDirectory $GamingDestinationB650

Write-Host
Write-Verbose "Completed: Download of Gigabyte Gaming AM5 B650 Ethernet Drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring Gigabyte Gaming AM5 X670 Ethernet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $GamingEthernetURL5 -DestinationDirectory $GamingDestinationX670
Save-WebFile -SourceUrl $GamingEthernetURL6 -DestinationDirectory $GamingDestinationX670

Write-Host
Write-Verbose "Completed: Download of Gigabyte Gaming AM5 X670 Ethernet Drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring Gigabyte Gaming AM5 X870 Ethernet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $GamingEthernetURL7 -DestinationDirectory $GamingDestinationX870
Save-WebFile -SourceUrl $GamingEthernetURL8 -DestinationDirectory $GamingDestinationX870

Write-Host
Write-Verbose "Completed: Download of Gigabyte Gaming AM5 X870 Ethernet Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Completed: Download of ALL Gigabyte Gaming AM5 motherboard Ethernet Drivers..." -Verbose

Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Gaming AM5 Storage Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $GamingStorageURL1 -DestinationDirectory $GamingDestinationA620
Save-WebFile -SourceUrl $GamingStorageURL2 -DestinationDirectory $GamingDestinationB650
Save-WebFile -SourceUrl $GamingStorageURL3 -DestinationDirectory $GamingDestinationX670
Save-WebFile -SourceUrl $GamingStorageURL4 -DestinationDirectory $GamingDestinationX870


Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Gaming AM5 WiFi A620 Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $GamingWiFiURL1 -DestinationDirectory $GamingDestinationA620

Write-Host
Write-Verbose "Completed: Download of Gigabyte Gaming AM5 A620 WiFi Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Gaming AM5 B650 WiFi Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $GamingWiFiURL2 -DestinationDirectory $GamingDestinationB650
Save-WebFile -SourceUrl $GamingWiFiURL3 -DestinationDirectory $GamingDestinationB650
Save-WebFile -SourceUrl $GamingWiFiURL4 -DestinationDirectory $GamingDestinationB650

Write-Host
Write-Verbose "Completed: Download of Gigabyte Gaming AM5 B650 WiFi Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Gaming AM5 X670 WiFi Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $GamingWiFiURL5 -DestinationDirectory $GamingDestinationX670
Save-WebFile -SourceUrl $GamingWiFiURL6 -DestinationDirectory $GamingDestinationX670


Write-Host
Write-Verbose "Completed: Download of Gigabyte Gaming AM5 X670 WiFi Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Gaming AM5 X870 WiFi Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $GamingWiFiURL7 -DestinationDirectory $GamingDestinationX870
Save-WebFile -SourceUrl $GamingWiFiURL8 -DestinationDirectory $GamingDestinationX870
Save-WebFile -SourceUrl $GamingWiFiURL9 -DestinationDirectory $GamingDestinationX870
Save-WebFile -SourceUrl $GamingWiFiURL10 -DestinationDirectory $GamingDestinationX870
Save-WebFile -SourceUrl $GamingWiFiURL11 -DestinationDirectory $GamingDestinationX870
Save-WebFile -SourceUrl $GamingWiFiURL12 -DestinationDirectory $GamingDestinationX870

Write-Host
Write-Verbose "Completed: Download of Gigabyte Gaming AM5 X870 WiFi Drivers..." -Verbose
Write-Host
Write-Host
Write-Verbose "Completed: Download of ALL Gigabyte Gaming AM5 motherboard drivers..." -Verbose


Write-Host
Write-Verbose "Processing: Gigabyte Gaming AM5 motherboard drivers file extraction..." -Verbose
Write-Host
Write-Verbose "Processing: Extracting Ethernet drivers..." -Verbose

Expand-7zip -ArchiveFileName "$GamingDestinationA620\Gigabyte-AM5-Gaming-A620-EthernetDrivers1.zip" -TargetPath $GamingEthernet1 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$GamingDestinationA620\Gigabyte-AM5-Gaming-A620-EthernetDrivers2.zip" -TargetPath $GamingEthernet2 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$GamingDestinationB650\Gigabyte-AM5-Gaming-B650-EthernetDrivers1.zip" -TargetPath $GamingEthernet3 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$GamingDestinationB650\Gigabyte-AM5-Gaming-B650-EthernetDrivers2.zip" -TargetPath $GamingEthernet4 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$GamingDestinationX670\Gigabyte-AM5-Gaming-X670-EthernetDrivers1.zip" -TargetPath $GamingEthernet5 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$GamingDestinationX670\Gigabyte-AM5-Gaming-X670-EthernetDrivers2.zip" -TargetPath $GamingEthernet6 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$GamingDestinationX870\Gigabyte-AM5-Gaming-X870-EthernetDrivers1.zip" -TargetPath $GamingEthernet7 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$GamingDestinationX870\Gigabyte-AM5-Gaming-X870-EthernetDrivers2.zip" -TargetPath $GamingEthernet8 -ErrorAction SilentlyContinue

Write-Host
Write-Verbose "Completed: Extraction of ALL Gigabyte Gaming AM5 Ethernet Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Extracting NVMe Storage drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$GamingDestinationA620\Gigabyte-AM5-Gaming-A620-NVMe-RAID-StorageDrivers.zip" -TargetPath $GamingStorage1 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$GamingDestinationB650\Gigabyte-AM5-Gaming-B650-NVMe-RAID-StorageDrivers.zip" -TargetPath $GamingStorage2 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$GamingDestinationX670\Gigabyte-AM5-Gaming-X670-NVMe-RAID-StorageDrivers.zip" -TargetPath $GamingStorage3 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$GamingDestinationX870\Gigabyte-AM5-Gaming-X870-NVMe-RAID-StorageDrivers.zip" -TargetPath $GamingStorage4 -ErrorAction SilentlyContinue

Write-Host
Write-Verbose "Completed: Extraction of ALL Gigabyte Gaming AM5 Storage Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Extracting WiFi drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$GamingDestinationA620\Gigabyte-AM5-Gaming-A620-WLANDrivers.zip" -TargetPath $GamingWLAN1 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$GamingDestinationB650\Gigabyte-AM5-Gaming-B650-WLANDrivers1.zip" -TargetPath $GamingWLAN2 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$GamingDestinationB650\Gigabyte-AM5-Gaming-B650-WLANDrivers2.zip" -TargetPath $GamingWLAN3 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$GamingDestinationB650\Gigabyte-AM5-Gaming-B650-WLANDrivers3.zip" -TargetPath $GamingWLAN4 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$GamingDestinationX670\Gigabyte-AM5-Gaming-X670-WLANDrivers1.zip" -TargetPath $GamingWLAN5 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$GamingDestinationX670\Gigabyte-AM5-Gaming-X670-WLANDrivers2.zip" -TargetPath $GamingWLAN6 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$GamingDestinationX870\Gigabyte-AM5-Gaming-X870-WLANDrivers1.zip" -TargetPath $GamingWLAN7 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$GamingDestinationX870\Gigabyte-AM5-Gaming-X870-WLANDrivers2.zip" -TargetPath $GamingWLAN8 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$GamingDestinationX870\Gigabyte-AM5-Gaming-X870-WLANDrivers3.zip" -TargetPath $GamingWLAN9 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$GamingDestinationX870\Gigabyte-AM5-Gaming-X870-WLANDrivers4.zip" -TargetPath $GamingWLAN10 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$GamingDestinationX870\Gigabyte-AM5-Gaming-X870-WLANDrivers5.zip" -TargetPath $GamingWLAN11 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$GamingDestinationX870\Gigabyte-AM5-Gaming-X870-WLANDrivers6.zip" -TargetPath $GamingWLAN12 -ErrorAction SilentlyContinue

Write-Host
Write-Verbose "Completed: Extraction of ALL Gigabyte Gaming AM5 WiFi Drivers..." -Verbose
Write-Host

Write-Verbose "Completed: Extraction of ALL Gigabyte Gaming AM5 motherboard Drivers..." -Verbose

Stop-Transcript
