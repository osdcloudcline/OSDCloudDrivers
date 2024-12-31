$AM4AORUS = "C:\Logs\OSDCloud\Gigabyte\AM4\AORUS.log"
Start-Transcript -Path $AM4AORUS

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   AM4 Bluetooth Driver URLs
####################################################################################

$AORUSBluetoothURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Bluetooth/Gigabyte-AORUS-Bluetooth-B550Drivers.zip"
$AORUSBluetoothURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Bluetooth/Gigabyte-AORUS-Bluetooth-X570Drivers.zip"

####################################################################################
#                   AM4 Ethernet Driver URLs
####################################################################################

# AORUS A520 

$AORUSEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-A520Drivers-Win10.zip"
$AORUSEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-A520Drivers-Win11.zip"

# AORUS B450

$AORUSEthernetURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-B450Drivers-Intel.zip"
$AORUSEthernetURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-B450Drivers-Win10.zip"
$AORUSEthernetURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-B450Drivers-Win11.zip"

# AORUS B550

$AORUSEthernetURL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-B550Drivers-Win10.zip"
$AORUSEthernetURL7 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-B550Drivers-Win11.zip"

# AORUS X370

$AORUSEthernetURL8 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-X370Drivers-Intel-PRO100.zip"
$AORUSEthernetURL9 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-X370Drivers-Intel-PRO1000-2.zip"
$AORUSEthernetURL10 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-X370Drivers-Intel-PRO1000.zip"
$AORUSEthernetURL11 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-X370Drivers-Intel-PROXGB.zip"
$AORUSEthernetURL12 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-X370Drivers-Killer.zip"

# AORUS X470

$AORUSEthernetURL13 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-X470Drivers-Intel-PRO100.zip"
$AORUSEthernetURL14 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-X470Drivers-Intel-PRO1000.zip"
$AORUSEthernetURL15 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-X470Drivers-Intel-PRO40GB.zip"
$AORUSEthernetURL16 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-X470Drivers-Intel-PROXGB.zip"

# AORUS X570

$AORUSEthernetURL17 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-X570Drivers-AQNIC.zip"
$AORUSEthernetURL18 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-X570Drivers-Intel-PRO1000.zip"
$AORUSEthernetURL19 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-X570Drivers-Intel-PRO2500.zip"
$AORUSEthernetURL20 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-X570Drivers-Intel-PRO40GB.zip"
$AORUSEthernetURL21 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-X570Drivers-Intel-PROAVF.zip"
$AORUSEthernetURL22 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-X570Drivers-Intel-PROCGB.zip"
$AORUSEthernetURL23 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-X570Drivers-Intel-PROXGB.zip"
$AORUSEthernetURL24 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-X570Drivers-Intel-i225-2-Win10.zip"
$AORUSEthernetURL25 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-X570Drivers-Intel-i225-2-Win11.zip"
$AORUSEthernetURL26 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-X570Drivers-Intel-i225-Win10.zip"
$AORUSEthernetURL27 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Ethernet/Gigabyte-AORUS-Ethernet-X570Drivers-Intel-i225-Win11.zip"

####################################################################################
#                   AM4 Storage Driver URLs
####################################################################################

$AORUSStorageURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Storage/Gigabyte-AORUS-NVMe-RAID-StorageDrivers.zip"
$AORUSStorageURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/Storage/Gigabyte-AORUS-SATA-RAID-StorageDrivers.zip"

####################################################################################
#                   AM4 WiFi Driver URLs
####################################################################################

# AORUS B450 

$AORUSWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/WiFi/Gigabyte-AORUS-WiFi-B450Drivers.zip"

# AORUS B550

$AORUSWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/WiFi/Gigabyte-AORUS-WiFi-B550Drivers-Win10-2.zip"
$AORUSWiFiURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/WiFi/Gigabyte-AORUS-WiFi-B550Drivers-Win10.zip"
$AORUSWiFiURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/WiFi/Gigabyte-AORUS-WiFi-B550Drivers-Win11-2.zip"
$AORUSWiFiURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/WiFi/Gigabyte-AORUS-WiFi-B550Drivers-Win11.zip"
$AORUSWiFiURL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/WiFi/Gigabyte-AORUS-WiFi-B550Drivers.zip"

# AORUS X470

$AORUSWiFiURL7 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/WiFi/Gigabyte-AORUS-WiFi-X470Drivers.zip"

# AORUS X570

$AORUSWiFiURL8 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/WiFi/Gigabyte-AORUS-WiFi-X570Drivers-1.zip"
$AORUSWiFiURL9 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/WiFi/Gigabyte-AORUS-WiFi-X570Drivers.zip"

###########################################################################################
#        AORUS Ethernet, Bluetooth, Storage and WiFi Destination Folders
###########################################################################################

$AORUSDestination =  "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\AORUS"

###########################################################################################
#        AORUS Ethernet, Bluetooth, Storage and WiFi Extraction Folders
###########################################################################################

$AORUSBluetooth1 = "$AORUSDestination\B550\Bluetooth"
$AORUSBluetooth2 = "$AORUSDestination\X570\Bluetooth"

$AORUSEthernet1 = "$AORUSDestination\A520\Ethernet1"
$AORUSEthernet2 = "$AORUSDestination\A520\Ethernet2"

$AORUSEthernet3 = "$AORUSDestination\B450\Ethernet1"
$AORUSEthernet4 = "$AORUSDestination\B450\Ethernet2"
$AORUSEthernet5 = "$AORUSDestination\B450\Ethernet3"

$AORUSEthernet6 = "$AORUSDestination\B550\Ethernet1"
$AORUSEthernet7 = "$AORUSDestination\B550\Ethernet2"

$AORUSEthernet8 = "$AORUSDestination\X370\Ethernet1"
$AORUSEthernet9 = "$AORUSDestination\X370\Ethernet2"
$AORUSEthernet10 = "$AORUSDestination\X370\Ethernet3"
$AORUSEthernet11 = "$AORUSDestination\X370\Ethernet4"
$AORUSEthernet12 = "$AORUSDestination\X370\Ethernet5"

$AORUSEthernet13 = "$AORUSDestination\X470\Ethernet1"
$AORUSEthernet14 = "$AORUSDestination\X470\Ethernet2"
$AORUSEthernet15 = "$AORUSDestination\X470\Ethernet3"
$AORUSEthernet16 = "$AORUSDestination\X470\Ethernet4"

$AORUSEthernet17 = "$AORUSDestination\X570\Ethernet1"
$AORUSEthernet18 = "$AORUSDestination\X570\Ethernet2"
$AORUSEthernet19 = "$AORUSDestination\X570\Ethernet3"
$AORUSEthernet20 = "$AORUSDestination\X570\Ethernet4"
$AORUSEthernet21 = "$AORUSDestination\X570\Ethernet5"
$AORUSEthernet22 = "$AORUSDestination\X570\Ethernet6"
$AORUSEthernet23 = "$AORUSDestination\X570\Ethernet7"
$AORUSEthernet24 = "$AORUSDestination\X570\Ethernet8"
$AORUSEthernet25 = "$AORUSDestination\X570\Ethernet9"
$AORUSEthernet26 = "$AORUSDestination\X570\Ethernet10"
$AORUSEthernet27 = "$AORUSDestination\X570\Ethernet11"

$AORUSWiFi1 = "$AORUSDestination\B450\WiFi1"

$AORUSWiFi2 = "$AORUSDestination\B550\WiFi1"
$AORUSWiFi3 = "$AORUSDestination\B550\WiFi2"
$AORUSWiFi4 = "$AORUSDestination\B550\WiFi3"
$AORUSWiFi5 = "$AORUSDestination\B550\WiFi4"
$AORUSWiFi6 = "$AORUSDestination\B550\WiFi5"

$AORUSWiFi7 = "$AORUSDestination\X470\WiFi1"

$AORUSWiFi8 = "$AORUSDestination\X570\WiFi1"
$AORUSWiFi9 = "$AORUSDestination\X570\WiFi2"

$AORUSStorage1 = "$AORUSDestination\Storage\RAID\NVMe"
$AORUSStorage2 = "$AORUSDestination\Storage\RAID\SATA"



Write-Host
Write-Verbose "Processing: Gigabyte AORUS AM4 A520 motherboard drivers..." -Verbose
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM4 A520 Ethernet Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $AORUSEthernetURL1 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSEthernetURL2 -DestinationDirectory $AORUSDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte AORUS AM4 A520 Ethernet Drivers..." -Verbose
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM4 B450 Ethernet Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $AORUSEthernetURL3 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSEthernetURL4 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSEthernetURL5 -DestinationDirectory $AORUSDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte AORUS AM4 B450 Ethernet Drivers..." -Verbose
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM4 B550 Ethernet Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $AORUSEthernetURL6 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSEthernetURL7 -DestinationDirectory $AORUSDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte AORUS AM4 B550 Ethernet Drivers..." -Verbose
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM4 X370 Ethernet Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $AORUSEthernetURL8 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSEthernetURL9 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSEthernetURL10 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSEthernetURL11 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSEthernetURL12 -DestinationDirectory $AORUSDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte AORUS AM4 X370 Ethernet Drivers..." -Verbose
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM4 X470 Ethernet Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $AORUSEthernetURL13 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSEthernetURL14 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSEthernetURL15 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSEthernetURL16 -DestinationDirectory $AORUSDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte AORUS AM4 X470 Ethernet Drivers..." -Verbose
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM4 X570 Ethernet Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $AORUSEthernetURL17 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSEthernetURL18 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSEthernetURL19 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSEthernetURL20 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSEthernetURL21 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSEthernetURL22 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSEthernetURL23 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSEthernetURL24 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSEthernetURL25 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSEthernetURL26 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSEthernetURL27 -DestinationDirectory $AORUSDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte AORUS AM4 X570 Ethernet Drivers..." -Verbose
Write-Host
Write-Host
Write-Verbose "Completed: Download of ALL Gigabyte AORUS AM4 motherboard Ethernet Drivers..." -Verbose

Write-Host
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM4 B450 WiFi Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $AORUSWiFiURL1 -DestinationDirectory $AORUSDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte AORUS AM4 B450 WiFi Drivers..." -Verbose
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM4 B550 WiFi Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $AORUSWiFiURL2 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSWiFiURL3 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSWiFiURL4 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSWiFiURL5 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSWiFiURL6 -DestinationDirectory $AORUSDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte AORUS AM4 B450 WiFi Drivers..." -Verbose
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM4 X470 WiFi Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $AORUSWiFiURL7 -DestinationDirectory $AORUSDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte AORUS AM4 X470 WiFi Drivers..." -Verbose
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM4 X570 WiFi Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $AORUSWiFiURL8 -DestinationDirectory $AORUSDestination
Save-WebFile -SourceUrl $AORUSWiFiURL9 -DestinationDirectory $AORUSDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte AORUS AM4 X570 WiFi Drivers..." -Verbose
Write-Host
Write-Host
Write-Verbose "Completed: Download of ALL Gigabyte AORUS AM4 motherboard WiFi Drivers..." -Verbose

Write-Host
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM4 B550 Bluetooth Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $AORUSBluetoothURL1 -DestinationDirectory $AORUSDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte AORUS AM4 B550 Bluetooth Drivers..." -Verbose
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM4 X5700 Bluetooth Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $AORUSBluetoothURL2 -DestinationDirectory $AORUSDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte AORUS AM4 X570 Bluetooth Drivers..." -Verbose
Write-Host
Write-Host
Write-Verbose "Completed: Download of ALL Gigabyte AORUS AM4 motherboard Bluetooth Drivers..." -Verbose

Write-Host
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM4 Storage Drivers -RAID NVMe..." -Verbose
Write-Host
Save-WebFile -SourceUrl $AORUSStorageURL1 -DestinationDirectory $AORUSDestination
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte AORUS AM4 Storage Drivers -RAID SATA..." -Verbose
Write-Host
Save-WebFile -SourceUrl $AORUSStorageURL2 -DestinationDirectory $AORUSDestination
Write-Host
Write-Verbose "Completed: Download of ALL Gigabyte AORUS AM4 Storage Drivers..." -Verbose


Write-Host
Write-Host
Write-Verbose "Processing: Gigabyte AORUS AM4 motherboard drivers file extraction..." -Verbose
Write-Host
Write-Verbose "Processing: Extracting Ethernet drivers..." -Verbose

Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-A520Drivers-Win10.zip" -TargetPath $AORUSEthernet1 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-A520Drivers-Win11.zip" -TargetPath $AORUSEthernet2 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-B450Drivers-Intel.zip" -TargetPath $AORUSEthernet3 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-B450Drivers-Win10.zip" -TargetPath $AORUSEthernet4 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-B450Drivers-Win11.zip" -TargetPath $AORUSEthernet5 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-B550Drivers-Win10.zip" -TargetPath $AORUSEthernet6 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-B550Drivers-Win11.zip" -TargetPath $AORUSEthernet7 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-X370Drivers-Intel-PRO100.zip" -TargetPath $AORUSEthernet8 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-X370Drivers-Intel-PRO1000-2.zip" -TargetPath $AORUSEthernet9 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-X370Drivers-Intel-PRO1000.zip" -TargetPath $AORUSEthernet10 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-X370Drivers-Intel-PROXGB.zip" -TargetPath $AORUSEthernet11 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-X370Drivers-Killer.zip" -TargetPath $AORUSEthernet12 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-X470Drivers-Intel-PRO100.zip" -TargetPath $AORUSEthernet13 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-X470Drivers-Intel-PRO1000.zip" -TargetPath $AORUSEthernet14 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-X470Drivers-Intel-PRO40GB.zip" -TargetPath $AORUSEthernet15 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-X470Drivers-Intel-PROXGB.zip" -TargetPath $AORUSEthernet16 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-X570Drivers-AQNIC.zip" -TargetPath $AORUSEthernet17 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-X570Drivers-Intel-PRO1000.zip" -TargetPath $AORUSEthernet18 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-X570Drivers-Intel-PRO2500.zip" -TargetPath $AORUSEthernet19 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-X570Drivers-Intel-PRO40GB.zip" -TargetPath $AORUSEthernet20 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-X570Drivers-Intel-PROAVF.zip" -TargetPath $AORUSEthernet21 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-X570Drivers-Intel-PROCGB.zip" -TargetPath $AORUSEthernet22 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-X570Drivers-Intel-PROXGB.zip" -TargetPath $AORUSEthernet23 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-X570Drivers-Intel-i225-2-Win10.zip" -TargetPath $AORUSEthernet24 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-X570Drivers-Intel-i225-2-Win11.zip" -TargetPath $AORUSEthernet25 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-X570Drivers-Intel-i225-Win10.zip" -TargetPath $AORUSEthernet26 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Ethernet-X570Drivers-Intel-i225-Win11.zip" -TargetPath $AORUSEthernet27 -ErrorAction SilentlyContinue
Write-Host
Write-Verbose "Completed: Extraction of ALL Gigabyte AORUS AM4 Ethernet Drivers..." -Verbose
Write-Host

Write-Host
Write-Host
Write-Verbose "Processing: Gigabyte AORUS AM4 motherboard drivers file extraction..." -Verbose
Write-Host
Write-Verbose "Processing: Extracting Storage drivers..." -Verbose

Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-NVMe-RAID-StorageDrivers.zip" -TargetPath $AORUSStorage1 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-SATA-RAID-StorageDrivers.zip" -TargetPath $AORUSStorage2 -ErrorAction SilentlyContinue
Write-Host
Write-Verbose "Completed: Extraction of ALL Gigabyte AORUS AM4 Storage Drivers..." -Verbose
Write-Host
Write-Host

Write-Host
Write-Verbose "Processing: Gigabyte AORUS AM4 motherboard drivers file extraction..." -Verbose
Write-Host
Write-Verbose "Processing: Extracting WiFi drivers..." -Verbose

Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-WiFi-B450Drivers.zip" -TargetPath $AORUSWiFi1 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-WiFi-B550Drivers-Win10-2.zip" -TargetPath $AORUSWiFi2 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-WiFi-B550Drivers-Win10.zip" -TargetPath $AORUSWiFi3 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-WiFi-B550Drivers-Win11-2.zip" -TargetPath $AORUSWiFi4 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-WiFi-B550Drivers-Win11.zip" -TargetPath $AORUSWiFi5 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-WiFi-B550Drivers.zip" -TargetPath $AORUSWiFi6 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-WiFi-X470Drivers.zip" -TargetPath $AORUSWiFi7 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-WiFi-X570Drivers-1.zip" -TargetPath $AORUSWiFi8 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-WiFi-X570Drivers.zip" -TargetPath $AORUSWiFi9 -ErrorAction SilentlyContinue
Write-Host
Write-Verbose "Completed: Extraction of ALL Gigabyte AORUS AM4 WiFi Drivers..." -Verbose
Write-Host

Write-Host
Write-Host
Write-Verbose "Processing: Gigabyte AORUS AM4 motherboard drivers file extraction..." -Verbose
Write-Host
Write-Verbose "Processing: Extracting Bluetooth drivers..." -Verbose

Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Bluetooth-B550Drivers.zip" -TargetPath $AORUSBluetooth1 -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$AORUSDestination\Gigabyte-AORUS-Bluetooth-X570Drivers.zip" -TargetPath $AORUSBluetooth2 -ErrorAction SilentlyContinue
Write-Host
Write-Verbose "Completed: Extraction of ALL Gigabyte AORUS AM4 Bluetooth Drivers..." -Verbose
Write-Host
Write-Host
Write-Verbose "Completed: Extraction of ALL Gigabyte AORUS AM4 motherboard Drivers..." -Verbose

Stop-Transcript
