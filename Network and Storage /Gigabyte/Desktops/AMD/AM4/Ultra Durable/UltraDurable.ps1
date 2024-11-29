$AM4UltraDurable = "C:\Logs\OSDCloud\Gigabyte\AM4\UltraDurable.log"
Start-Transcript -Path $AM4UltraDurable

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   AM4 Bluetooth Driver URLs
####################################################################################

# Ultra Durable Bluetooth - B550 

$UDBluetoothURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Bluetooth/Gigabyte-UltraDurable-BluetoothDrivers-B550.zip"


# Ultra Durable Bluetooth - A520

$UDBluetoothURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Bluetooth/Gigabyte-UltraDurable-Realtek-BluetoothDrivers-A520.zip"

# Ultra Durable Bluetooth - B450

$UDBluetoothURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Bluetooth/Gigabyte-UltraDurable-Realtek-BluetoothDrivers-B450.zip"

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

# Ultra Durable B550

$UDEthernetURL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-B550-Intel-1.zip"
$UDEthernetURL7 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-B550-Intel-2.zip"
$UDEthernetURL8 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-B550-Intel-3-Win10.zip"
$UDEthernetURL9 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-B550-Intel-4-Win11.zip"
$UDEthernetURL10 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-B550-Intel-i225-Win10.zip"
$UDEthernetURL11 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-B550-Intel-i225-Win11.zip"
$UDEthernetURL12 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-B550-Realtek-Win10.zip"
$UDEthernetURL13 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-B550-Realtek-Win11.zip"

# Ultra Durable X370

$UDEthernetURL14 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-X370-Realtek-Win10.zip"


# Ultra Durable X570

$UDEthernetURL15 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-X570-Realtek-Win10.zip"
$UDEthernetURL16 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/Ethernet/Gigabyte-UltraDurable-EthernetDrivers-X570-Realtek-Win11.zip"

####################################################################################
#                   AM4 WiFi Driver URLs
####################################################################################






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

$UDDestination =  "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable"

