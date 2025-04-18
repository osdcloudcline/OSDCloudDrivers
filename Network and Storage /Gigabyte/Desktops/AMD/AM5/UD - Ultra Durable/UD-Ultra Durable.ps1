$AM5UltraDurable = "C:\Logs\OSDCloud\Gigabyte\AM5\UD-UltraDurable.log"
Start-Transcript -Path $AM5UltraDurable

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   Ultra Durable AM5 Ethernet Driver URLs
####################################################################################

# Ultra Durable A620 - Ethernet

$UDEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/UD%20-%20Ultra%20Durable/A620/Ethernet/Gigabyte-AM5-UltraDurable-A620-EthernetDrivers1.zip"
$UDEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/UD%20-%20Ultra%20Durable/A620/Ethernet/Gigabyte-AM5-UltraDurable-A620-EthernetDrivers2.zip"

# Ultra Durable B650 - Ethernet

$UDEthernetURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/UD%20-%20Ultra%20Durable/B650/Ethernet/Gigabyte-AM5-UltraDurable-B650-EthernetDrivers1.zip"
$UDEthernetURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/UD%20-%20Ultra%20Durable/B650/Ethernet/Gigabyte-AM5-UltraDurable-B650-EthernetDrivers2.zip"


####################################################################################
#                   Ultra Durable AM5 WiFi Driver URLs
####################################################################################

# Ultra Durable A620 - WiFi

$UDWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/UD%20-%20Ultra%20Durable/A620/WiFi/Gigabyte-AM5-UltraDurable-A620-WLANDrivers1.zip"
$UDWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/UD%20-%20Ultra%20Durable/A620/WiFi/Gigabyte-AM5-UltraDurable-A620-WLANDrivers2.zip"

# Ultra Durable B650 - WiFi

$UDWiFiURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/UD%20-%20Ultra%20Durable/B650/WiFi/Gigabyte-AM5-UltraDurable-B650-WLANDrivers1.zip"
$UDWiFiURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/UD%20-%20Ultra%20Durable/B650/WiFi/Gigabyte-AM5-UltraDurable-B650-WLANDrivers2.zip"
$UDWiFiURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/UD%20-%20Ultra%20Durable/B650/WiFi/Gigabyte-AM5-UltraDurable-B650-WLANDrivers3.zip"
$UDWiFiURL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/UD%20-%20Ultra%20Durable/B650/WiFi/Gigabyte-AM5-UltraDurable-B650-WLANDrivers4.zip"
$UDWiFiURL7 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/UD%20-%20Ultra%20Durable/B650/WiFi/Gigabyte-AM5-UltraDurable-B650-WLANDrivers5.zip"
$UDWiFiURL8 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/UD%20-%20Ultra%20Durable/B650/WiFi/Gigabyte-AM5-UltraDurable-B650-WLANDrivers6.zip"


####################################################################################
#                   Ultra Durable AM5 Storage Driver URLs
####################################################################################

# Ultra Durable A620 - Storage

$UDStorageURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/UD%20-%20Ultra%20Durable/A620/Storage/Gigabyte-AM5-UltraDurable-A620-NVMe-RAID-StorageDrivers.zip"

# Ultra Durable B650 - Storage

$UDStorageURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/UD%20-%20Ultra%20Durable/B650/Storage/Gigabyte-AM5-UltraDurable-B650-NVMe-RAID-StorageDrivers.zip"

###########################################################################################
#        Ultra Durable AM5 Ethernet, Bluetooth, Storage and WiFi Destination Folders
###########################################################################################

$UDDestination =  "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable"
$UDDestinationA620 =  "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\ZIP\A620"
$UDDestinationB650 =  "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\ZIP\B650"


###########################################################################################
#        Ultra Durable Ethernet, Bluetooth, Storage and WiFi Extraction Folders
###########################################################################################

# Ultra Durable A620 - Ethernet

$UDEthernet1 = "$UDDestination\A620\Ethernet1"
$UDEthernet2 = "$UDDestination\A620\Ethernet2"

# Ultra Durable B650 - Ethernet

$UDEthernet3 = "$UDDestination\B650\Ethernet1"
$UDEthernet4 = "$UDDestination\B650\Ethernet2"

# Ultra Durable A620 - Storage

$UDStorage1 = "$UDDestination\A620\Storage\RAID\NVMe"

# Ultra Durable B650 - Storage

$UDStorage2 = "$UDDestination\B650\Storage\RAID\NVMe"

# Ultra Durable A620 - WLAN

$UDWLAN1 = "$UDDestination\A620\WLAN1"
$UDWLAN2 = "$UDDestination\A620\WLAN2"

# Ultra Durable B650 - WLAN

$UDWLAN3 = "$UDDestination\B650\WLAN1"
$UDWLAN4 = "$UDDestination\B650\WLAN2"
$UDWLAN5 = "$UDDestination\B650\WLAN3"
$UDWLAN6 = "$UDDestination\B650\WLAN4"
$UDWLAN7 = "$UDDestination\B650\WLAN5"
$UDWLAN8 = "$UDDestination\B650\WLAN6"

Write-Host
Write-Verbose "Processing: Gigabyte Ultra Durable AM5 motherboard drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM5 A620 Ethernet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $UDEthernetURL1 -DestinationDirectory $UDDestinationA620
Save-WebFile -SourceUrl $UDEthernetURL2 -DestinationDirectory $UDDestinationA620

Write-Host
Write-Verbose "Completed: Download of Gigabyte Ultra Durable AM5 A620 Ethernet Drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM5 A620 WiFi Drivers..." -Verbose

Save-WebFile -SourceUrl $UDWiFiURL1 -DestinationDirectory $UDDestinationA620
Save-WebFile -SourceUrl $UDWiFiURL2 -DestinationDirectory $UDDestinationA620

Write-Host
Write-Verbose "Completed: Download of Gigabyte Ultra Durable AM5 A620 WiFi WLAN Drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM5 A620 Bluetooth Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $UDBluetoothURL1 -DestinationDirectory $UDDestinationA620
Save-WebFile -SourceUrl $UDBluetoothURL2 -DestinationDirectory $UDDestinationA620

Write-Host
Write-Verbose "Completed: Download of Gigabyte Ultra Durable AM5 A620 Bluetooth Drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM5 A620 Storage Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $UDStorageURL1 -DestinationDirectory $UDDestinationA620


Write-Host
Write-Verbose "Completed: Download of Gigabyte Ultra Durable AM5 A620 Storage Drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM5 B650 Ethernet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $UDEthernetURL3 -DestinationDirectory $UDDestinationB650
Save-WebFile -SourceUrl $UDEthernetURL4 -DestinationDirectory $UDDestinationB650

Write-Host
Write-Verbose "Completed: Download of Gigabyte Ultra Durable AM5 B650 Ethernet Drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM5 B650 WiFi Drivers..." -Verbose

Save-WebFile -SourceUrl $UDWiFiURL3 -DestinationDirectory $UDDestinationB650
Save-WebFile -SourceUrl $UDWiFiURL4 -DestinationDirectory $UDDestinationB650
Save-WebFile -SourceUrl $UDWiFiURL5 -DestinationDirectory $UDDestinationB650
Save-WebFile -SourceUrl $UDWiFiURL6 -DestinationDirectory $UDDestinationB650
Save-WebFile -SourceUrl $UDWiFiURL7 -DestinationDirectory $UDDestinationB650
Save-WebFile -SourceUrl $UDWiFiURL8 -DestinationDirectory $UDDestinationB650

Write-Host
Write-Verbose "Completed: Download of Gigabyte Ultra Durable AM5 B650 WiFi WLAN Drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM5 B650 Bluetooth Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $UDBluetoothURL3 -DestinationDirectory $UDDestinationB650
Save-WebFile -SourceUrl $UDBluetoothURL4 -DestinationDirectory $UDDestinationB650
Save-WebFile -SourceUrl $UDBluetoothURL5 -DestinationDirectory $UDDestinationB650
Write-Host
Write-Verbose "Completed: Download of Gigabyte Ultra Durable AM5 B650 Bluetooth Drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM5 B650 Storage Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $UDStorageURL2 -DestinationDirectory $UDDestinationB650


Write-Host
Write-Verbose "Completed: Download of Gigabyte Ultra Durable AM5 B650 Storage Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Gigabyte Ultra Durable AM5 motherboard drivers file extraction..." -Verbose
Write-Host
Write-Verbose "Processing: Extracting Ethernet drivers..." -Verbose

Expand-7zip -ArchiveFileName "$UDDestinationA620\Gigabyte-AM5-UltraDurable-A620-EthernetDrivers1.zip" -TargetPath $UDEthernet1 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$UDDestinationA620\Gigabyte-AM5-UltraDurable-A620-EthernetDrivers2.zip" -TargetPath $UDEthernet2 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$UDDestinationB650\Gigabyte-AM5-UltraDurable-B650-EthernetDrivers1.zip" -TargetPath $UDEthernet3 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$UDDestinationB650\Gigabyte-AM5-UltraDurable-B650-EthernetDrivers2.zip" -TargetPath $UDEthernet4 -ErrorAction SilentlyContinue

Write-Host
Write-Verbose "Completed: Extraction of ALL Gigabyte Ultra Durable AM5 Ethernet Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Extracting NVMe Storage drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$UDDestinationA620\Gigabyte-AM5-UltraDurable-A620-NVMe-RAID-StorageDrivers.zip" -TargetPath $UDStorage1 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$UDDestinationB650\Gigabyte-AM5-UltraDurable-B650-NVMe-RAID-StorageDrivers.zip" -TargetPath $UDStorage2 -ErrorAction SilentlyContinue

Write-Host
Write-Verbose "Completed: Extraction of ALL Gigabyte Ultra Durable AM5 Storage Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Extracting WiFi drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$UDDestinationA620\Gigabyte-AM5-UltraDurable-A620-WLANDrivers1.zip" -TargetPath $UDWLAN1 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$UDDestinationA620\Gigabyte-AM5-UltraDurable-A620-WLANDrivers2.zip" -TargetPath $UDWLAN2 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$UDDestinationB650\Gigabyte-AM5-UltraDurable-B650-WLANDrivers1.zip" -TargetPath $UDWLAN3 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$UDDestinationB650\Gigabyte-AM5-UltraDurable-B650-WLANDrivers2.zip" -TargetPath $UDWLAN4 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$UDDestinationB650\Gigabyte-AM5-UltraDurable-B650-WLANDrivers3.zip" -TargetPath $UDWLAN5 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$UDDestinationB650\Gigabyte-AM5-UltraDurable-B650-WLANDrivers4.zip" -TargetPath $UDWLAN6 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$UDDestinationB650\Gigabyte-AM5-UltraDurable-B650-WLANDrivers5.zip" -TargetPath $UDWLAN7 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$UDDestinationB650\Gigabyte-AM5-UltraDurable-B650-WLANDrivers6.zip" -TargetPath $UDWLAN8 -ErrorAction SilentlyContinue

Write-Host
Write-Verbose "Completed: Extraction of ALL Gigabyte Ultra Durable AM5 WiFi Drivers..." -Verbose
Write-Host

Write-Verbose "Completed: Extraction of ALL Gigabyte Ultra Durable AM5 motherboard Drivers..." -Verbose

