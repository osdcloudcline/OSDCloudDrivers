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

$UDDestination =  "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable"

###########################################################################################
#        Ultra Durable Ethernet, Bluetooth, Storage and WiFi Extraction Folders
###########################################################################################

# Bluetooth

$UDBluetooth1 = "$UDDestination\B550\Bluetooth1"
$UDBluetooth2 = "$UDDestination\A520\Bluetooth1"
$UDBluetooth3 = "$UDDestination\B450\Bluetooth1"

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
$UDEthernet16 = "$UDDestination\X570\Ethernet1"


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

