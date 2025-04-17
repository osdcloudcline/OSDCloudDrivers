$AM4UltraDurable = "C:\Logs\OSDCloud\Gigabyte\AM4\UltraDurable.log"
Start-Transcript -Path $AM4UltraDurable

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   AM4 Ethernet Driver URLs
####################################################################################

# Ultra Durable - A520

$UDEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-A520-Win10.zip"
$UDEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-A520-Win11.zip"

# Ultra Durable - B350

$UDEthernetURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-B350.zip"

# Ultra Durable - B450

$UDEthernetURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-B450-Win10.zip"
$UDEthernetURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-B450-Win11.zip"

# Ultra Durable - B550

$UDEthernetURL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-B550-Intel-1.zip"
$UDEthernetURL7 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-B550-Intel-2.zip"
$UDEthernetURL8 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-B550-Intel-3-Win10.zip"
$UDEthernetURL9 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-B550-Intel-4-Win11.zip"
$UDEthernetURL10 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-B550-Intel-i225-Win10.zip"
$UDEthernetURL11 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-B550-Intel-i225-Win11.zip"
$UDEthernetURL12 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-B550-Realtek-Win10.zip"
$UDEthernetURL13 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-B550-Realtek-Win11.zip"

# Ultra Durable -  X370

$UDEthernetURL14 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-X370-Realtek-Win10.zip"


# Ultra Durable -  X570

$UDEthernetURL15 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-X570-Realtek-Win10.zip"
$UDEthernetURL16 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-X570-Realtek-Win11.zip"

####################################################################################
#                   AM4 WiFi Driver URLs
####################################################################################

# Ultra Durable - A320

$UDWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/WiFi/Gigabyte-UltraDurable-A320-WiFiDrivers-Intel.zip"
$UDWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/WiFi/Gigabyte-UltraDurable-A320-WiFiDrivers-Realtek.zip"

# Ultra Durable - B450

$UDWiFiURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/WiFi/Gigabyte-UltraDurable-B450-WiFiDrivers-Intel.zip"
$UDWiFiURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/WiFi/Gigabyte-UltraDurable-B450-WiFiDrivers-Realtek.zip"

# Ultra Durable - B550

$UDWiFiURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/WiFi/Gigabyte-UltraDurable-B550-WiFiDrivers-Intel.zip"
$UDWiFiURL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/WiFi/Gigabyte-UltraDurable-B550-WiFiDrivers-Realtek.zip"

####################################################################################
#                   AM4 Storage Driver URLs
####################################################################################

# Ultra Durable - A320

$UDStorageURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Storage/Gigabyte-UltraDurable-A320-RAID-NVMe-StorageDrivers.zip"
$UDStorageURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Storage/Gigabyte-UltraDurable-A320-RAID-SATA-StorageDrivers.zip"

# Ultra Durable - A520

$UDStorageURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Storage/Gigabyte-UltraDurable-A520-RAID-NVMe-1-StorageDrivers-Win10.zip"
$UDStorageURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Storage/Gigabyte-UltraDurable-A520-RAID-NVMe-1-StorageDrivers-Win11.zip"
$UDStorageURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Storage/Gigabyte-UltraDurable-A520-RAID-NVMe-2-StorageDrivers-Win10.zip"
$UDStorageURL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Storage/Gigabyte-UltraDurable-A520-RAID-NVMe-2-StorageDrivers-Win11.zip"
$UDStorageURL7 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Storage/Gigabyte-UltraDurable-A520-RAID-SATA-StorageDrivers-Win10.zip"
$UDStorageURL8 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Storage/Gigabyte-UltraDurable-A520-RAID-SATA-StorageDrivers-Win11.zip"

# Ultra Durable - B350

$UDStorageURL9 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Storage/Gigabyte-UltraDurable-B350-RAID-NVMe-StorageDrivers.zip"
$UDStorageURL10 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Storage/Gigabyte-UltraDurable-B350-RAID-SATA-StorageDrivers.zip"

# Ultra Durable - B450

$UDStorageURL11 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Storage/Gigabyte-UltraDurable-B450-RAID-NVMe-StorageDrivers.zip"
$UDStorageURL12 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Storage/Gigabyte-UltraDurable-B450-RAID-SATA-StorageDrivers.zip"

# Ultra Durable - B550

$UDStorageURL13 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Storage/Gigabyte-UltraDurable-B550-RAID-NVMe-1-StorageDrivers.zip"
$UDStorageURL14 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Storage/Gigabyte-UltraDurable-B550-RAID-NVMe-2-StorageDrivers.zip"
$UDStorageURL15 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Storage/Gigabyte-UltraDurable-B550-RAID-SATA-StorageDrivers.zip"
$UDStorageURL16 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Storage/Gigabyte-UltraDurable-B550-Thunderbolt-StorageDrivers.zip"

# Ultra Durable - X370

$UDStorageURL17 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Storage/Gigabyte-UltraDurable-X370-RAID-NVMe-StorageDrivers.zip"
$UDStorageURL18 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Storage/Gigabyte-UltraDurable-X370-RAID-SATA-StorageDrivers.zip"

# Ultra Durable - X570

$UDStorageURL19 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Storage/Gigabyte-UltraDurable-X570-RAID-NVMe-1-StorageDrivers.zip"
$UDStorageURL20 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Storage/Gigabyte-UltraDurable-X570-RAID-NVMe-2-StorageDrivers.zip"
$UDStorageURL21 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Storage/Gigabyte-UltraDurable-X570-RAID-SATA-StorageDrivers.zip"


###########################################################################################
#        Ultra Durable Ethernet, Bluetooth, Storage and WiFi Destination Folders
###########################################################################################

$UDDestination =  "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable"

###########################################################################################
#        Ultra Durable Ethernet, Bluetooth, Storage and WiFi Extraction Folders
###########################################################################################

# Ethernet

$UDEthernet1 = "$UDDestination\A520\Ethernet1"
$UDEthernet2 = "$UDDestination\A520\Ethernet2"

$UDEthernet3 = "$UDDestination\B350\Ethernet"


$UDEthernet4 = "$UDDestination\B450\Ethernet1"
$UDEthernet5 = "$UDDestination\B450\Ethernet2"

$UDEthernet6 = "$UDDestination\B550\Ethernet1"
$UDEthernet7 = "$UDDestination\B550\Ethernet2"
$UDEthernet8 = "$UDDestination\B550\Ethernet3"
$UDEthernet9 = "$UDDestination\B550\Ethernet4"
$UDEthernet10 = "$UDDestination\B550\Ethernet5"
$UDEthernet11 = "$UDDestination\B550\Ethernet6"
$UDEthernet12 = "$UDDestination\B550\Ethernet7"
$UDEthernet13 = "$UDDestination\B550\Ethernet8"

$UDEthernet14 = "$UDDestination\X370\Ethernet"

$UDEthernet15 = "$UDDestination\X570\Ethernet1"
$UDEthernet16 = "$UDDestination\X570\Ethernet2"


# Storage

$UDStorage1 = "$UDDestination\A320\RAID\NVMe"
$UDStorage2 = "$UDDestination\A320\RAID\SATA"

$UDStorage3 = "$UDDestination\A520\RAID\NVMe1"
$UDStorage4 = "$UDDestination\A520\RAID\NVMe2"
$UDStorage5 = "$UDDestination\A520\RAID\NVMe3"
$UDStorage6 = "$UDDestination\A520\RAID\NVMe4"
$UDStorage7 = "$UDDestination\A520\RAID\SATA1"
$UDStorage8 = "$UDDestination\A520\RAID\SATA2"

$UDStorage9 = "$UDDestination\B350\RAID\NVMe"
$UDStorage10 = "$UDDestination\B350\RAID\SATA"

$UDStorage11 = "$UDDestination\B450\RAID\NVMe"
$UDStorage12 = "$UDDestination\B450\RAID\SATA"

$UDStorage13 = "$UDDestination\B550\RAID\NVMe1"
$UDStorage14 = "$UDDestination\B550\RAID\NVMe2"
$UDStorage15 = "$UDDestination\B550\RAID\SATA"
$UDStorage16 = "$UDDestination\B550\RAID\Thunderbolt"

$UDStorage17 = "$UDDestination\X370\RAID\NVMe"
$UDStorage18 = "$UDDestination\X370\RAID\SATA"


$UDStorage19 = "$UDDestination\X570\RAID\NVMe1"
$UDStorage20 = "$UDDestination\X570\RAID\NVMe2"
$UDStorage21 = "$UDDestination\X570\RAID\SATA"


# WiFi 

$UDWiFi1 = "$UDDestination\A320\WiFi1"
$UDWiFi2 = "$UDDestination\A320\WiFi2"
$UDWiFi3 = "$UDDestination\B450\WiFi1"
$UDWiFi4 = "$UDDestination\B450\WiFi2"
$UDWiFi5 = "$UDDestination\B550\WiFi1"
$UDWiFi6 = "$UDDestination\B550\WiFi2"


Write-Host
Write-Verbose "Processing: Gigabyte Ultra Durable AM4 motherboard drivers..." -Verbose
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM4 A520 Ethernet Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $UDEthernetURL1 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDEthernetURL2 -DestinationDirectory $UDDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte Ultra Durable AM4 A520 Ethernet Drivers..." -Verbose
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM4 B350 Ethernet Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $UDEthernetURL3 -DestinationDirectory $UDDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte Ultra Durable AM4 B350 Ethernet Drivers..." -Verbose
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM4 B450 Ethernet Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $UDEthernetURL4 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDEthernetURL5 -DestinationDirectory $UDDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte Ultra Durable AM4 B450 Ethernet Drivers..." -Verbose
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM4 B550 Ethernet Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $UDEthernetURL6 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDEthernetURL7 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDEthernetURL8 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDEthernetURL9 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDEthernetURL10 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDEthernetURL11 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDEthernetURL12 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDEthernetURL13 -DestinationDirectory $UDDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte Ultra Durable AM4 B550 Ethernet Drivers..." -Verbose
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM4 X370 Ethernet Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $UDEthernetURL14 -DestinationDirectory $UDDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte Ultra Durable AM4 X370 Ethernet Drivers..." -Verbose
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM4 X570 Ethernet Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $UDEthernetURL15 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDEthernetURL16 -DestinationDirectory $UDDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte Ultra Durable AM4 X570 Ethernet Drivers..." -Verbose
Write-Host
Write-Verbose "Completed: Download of ALL Gigabyte Ultra Durable AM4 motherboard Ethernet Drivers..." -Verbose

Write-Host
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM4 A320 WiFi Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $UDWiFiURL1 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDWiFiURL2 -DestinationDirectory $UDDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte Ultra Durable AM4 A320 WiFi Drivers..." -Verbose
Write-Host
Write-Host
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM4 B450 WiFi Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $UDWiFiURL3 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDWiFiURL4 -DestinationDirectory $UDDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte Ultra Durable AM4 B450 WiFi Drivers..." -Verbose
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM4 B550 WiFi Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $UDWiFiURL5 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDWiFiURL6 -DestinationDirectory $UDDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte Ultra Durable AM4 B550 WiFi Drivers..." -Verbose
Write-Host
Write-Verbose "Completed: Download of ALL Gigabyte Ultra Durable AM4 motherboard WiFi Drivers..." -Verbose
Write-Host

Write-Host
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM4 Storage Drivers - RAID NVMe..." -Verbose
Write-Host
Save-WebFile -SourceUrl $UDStorageURL1 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDStorageURL3 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDStorageURL4 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDStorageURL5 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDStorageURL6 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDStorageURL9 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDStorageURL11 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDStorageURL13 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDStorageURL14 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDStorageURL17 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDStorageURL19 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDStorageURL20 -DestinationDirectory $UDDestination
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM4 Storage Drivers - RAID SATA..." -Verbose
Write-Host
Save-WebFile -SourceUrl $UDStorageURL2 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDStorageURL7 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDStorageURL8 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDStorageURL10 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDStorageURL12 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDStorageURL15 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDStorageURL18 -DestinationDirectory $UDDestination
Save-WebFile -SourceUrl $UDStorageURL21 -DestinationDirectory $UDDestination
Write-Host
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM4 Storage Drivers - RAID Thunderbolt..." -Verbose
Write-Host
Save-WebFile -SourceUrl $UDStorageURL16 -DestinationDirectory $UDDestination
Write-Host
Write-Verbose "Completed: Download of ALL Gigabyte Ultra Durable AM4 Storage Drivers..." -Verbose


Write-Host
Write-Host
Write-Verbose "Processing: Gigabyte Ultra Durable AM4 motherboard drivers file extraction..." -Verbose
Write-Host
Write-Verbose "Processing: Extracting Ethernet drivers..." -Verbose
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-EthernetDrivers-A520-Win10.zip"  -TargetPath $UDEthernet1  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-EthernetDrivers-A520-Win11.zip"  -TargetPath $UDEthernet2  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-EthernetDrivers-B350.zip"  -TargetPath $UDEthernet3  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-EthernetDrivers-B450-Win10.zip"  -TargetPath $UDEthernet4  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-EthernetDrivers-B450-Win11.zip"  -TargetPath $UDEthernet5  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-EthernetDrivers-B550-Intel-1.zip"  -TargetPath $UDEthernet6  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-EthernetDrivers-B550-Intel-2.zip"  -TargetPath $UDEthernet7  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-EthernetDrivers-B550-Intel-3-Win10.zip"  -TargetPath $UDEthernet8  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-EthernetDrivers-B550-Intel-4-Win11.zip"  -TargetPath $UDEthernet9  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-EthernetDrivers-B550-Intel-i225-Win10.zip"  -TargetPath $UDEthernet10  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-EthernetDrivers-B550-Intel-i225-Win11.zip"  -TargetPath $UDEthernet11  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-EthernetDrivers-B550-Realtek-Win10.zip"  -TargetPath $UDEthernet12  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-EthernetDrivers-B550-Realtek-Win11.zip"  -TargetPath $UDEthernet13  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-EthernetDrivers-X370-Realtek-Win10.zip"  -TargetPath $UDEthernet14  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-EthernetDrivers-X570-Realtek-Win10.zip"  -TargetPath $UDEthernet15  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-EthernetDrivers-X570-Realtek-Win11.zip"  -TargetPath $UDEthernet16  -ErrorAction SilentlyContine
Write-Host
Write-Verbose "Completed: Extraction of ALL Gigabyte Ultra Durable AM4 Ethernet Drivers..." -Verbose
Write-Host


Write-Host
Write-Host
Write-Verbose "Processing: Gigabyte Ultra Durable AM4 motherboard drivers file extraction..." -Verbose
Write-Host
Write-Verbose "Processing: Extracting WiFi drivers..." -Verbose
Write-Host
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-A320-WiFiDrivers-Intel.zip"  -TargetPath $UDWiFi1  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-A320-WiFiDrivers-Realtek.zip"  -TargetPath $UDWiFi2  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-B450-WiFiDrivers-Intel.zip"  -TargetPath $UDWiFi3  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-B450-WiFiDrivers-Realtek.zip"  -TargetPath $UDWiFi4  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-B550-WiFiDrivers-Intel.zip"  -TargetPath $UDWiFi5  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-B550-WiFiDrivers-Realtek.zip"  -TargetPath $UDWiFi6  -ErrorAction SilentlyContine
Write-Host
Write-Verbose "Completed: Extraction of ALL Gigabyte Ultra Durable AM4 WiFi Drivers..." -Verbose
Write-Host


Write-Host
Write-Host
Write-Verbose "Processing: Gigabyte Ultra Durable AM4 motherboard drivers file extraction..." -Verbose
Write-Host
Write-Verbose "Processing: Extracting NVMe Storage drivers..." -Verbose
Write-Host
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-A320-RAID-NVMe-StorageDrivers.zip"  -TargetPath $UDStorage1  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-A520-RAID-NVMe-1-StorageDrivers-Win10.zip"  -TargetPath $UDStorage3  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-A520-RAID-NVMe-1-StorageDrivers-Win11.zip"  -TargetPath $UDStorage4  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-A520-RAID-NVMe-2-StorageDrivers-Win10.zip"  -TargetPath $UDStorage5  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-A520-RAID-NVMe-2-StorageDrivers-Win11.zip"  -TargetPath $UDStorage6  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-B350-RAID-NVMe-StorageDrivers.zip"  -TargetPath $UDStorage9  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-B450-RAID-NVMe-StorageDrivers.zip"  -TargetPath $UDStorage11  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-B550-RAID-NVMe-1-StorageDrivers.zip"  -TargetPath $UDStorage13  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-B550-RAID-NVMe-2-StorageDrivers.zip"  -TargetPath $UDStorage14  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-X370-RAID-NVMe-StorageDrivers.zip"  -TargetPath $UDStorage17  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-X570-RAID-NVMe-1-StorageDrivers.zip"  -TargetPath $UDStorage19  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-X570-RAID-NVMe-2-StorageDrivers.zip"  -TargetPath $UDStorage20  -ErrorAction SilentlyContine
Write-Host
Write-Verbose "Processing: Extracting SATA Storage drivers..." -Verbose
Write-Host
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-A320-RAID-SATA-StorageDrivers.zip"  -TargetPath $UDStorage2  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-A520-RAID-SATA-StorageDrivers-Win10.zip"  -TargetPath $UDStorage7  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-A520-RAID-SATA-StorageDrivers-Win11.zip"  -TargetPath $UDStorage8  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-B350-RAID-SATA-StorageDrivers.zip"  -TargetPath $UDStorage10  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-B450-RAID-SATA-StorageDrivers.zip"  -TargetPath $UDStorage12  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-B550-RAID-SATA-StorageDrivers.zip"  -TargetPath $UDStorage15  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-X370-RAID-SATA-StorageDrivers.zip"  -TargetPath $UDStorage18  -ErrorAction SilentlyContine
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-X570-RAID-SATA-StorageDrivers.zip"  -TargetPath $UDStorage21  -ErrorAction SilentlyContine
Write-Host
Write-Verbose "Processing: Extracting Thunderbolt Storage drivers..." -Verbose
Write-Host
Expand-7zip -ArchiveFileNam "$UDDestination\Gigabyte-UltraDurable-B550-Thunderbolt-StorageDrivers.zip"  -TargetPath $UDStorage16  -ErrorAction SilentlyContine
Write-Verbose "Completed: Extraction of ALL Gigabyte Ultra Durable AM4 Storage Drivers..." -Verbose
Write-Host

Write-Host
Write-Verbose "Completed: Extraction of ALL Gigabyte Ultra Durable AM4 motherboard Drivers..." -Verbose

Stop-Transcript
