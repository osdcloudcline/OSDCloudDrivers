$AM5UltraDurable = "C:\Logs\OSDCloud\Gigabyte\AM5\UD-UltraDurable.log"
Start-Transcript -Path $AM5UltraDurable

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   Ultra Durable AM5 Bluetooth Driver URLs
####################################################################################

# Ultra Durable A620 - Bluetooth

$UDBluetoothURL1 = ""
$UDBluetoothURL2 = ""


# Ultra Durable B650 - Bluetooth

$UDBluetoothURL3 = ""
$UDBluetoothURL4 = ""



####################################################################################
#                   Ultra Durable AM5 Ethernet Driver URLs
####################################################################################

# Ultra Durable A620 - Ethernet

$UDEthernetURL1 = ""
$UDEthernetURL2 = ""

# Ultra Durable B650 - Ethernet

$UDEthernetURL3 = ""
$UDEthernetURL4 = ""


####################################################################################
#                   Ultra Durable AM5 WiFi Driver URLs
####################################################################################

# Ultra Durable A620 - WiFi

$UDWiFiURL1 = ""
$UDWiFiURL2 = ""

# Ultra Durable B650 - WiFi

$UDWiFiURL3 = ""
$UDWiFiURL4 = ""


####################################################################################
#                   Ultra Durable AM5 Storage Driver URLs
####################################################################################

# Ultra Durable A620 - Storage

$UDStorageURL1 = ""

# Ultra Durable B650 - Storage

$UDStorageURL1 = ""

###########################################################################################
#        Ultra Durable AM5 Ethernet, Bluetooth, Storage and WiFi Destination Folders
###########################################################################################

$UDDestination =  "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable"
$UDDestinationA620 =  "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\ZIP\A620"
$UDDestinationB650 =  "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\ZIP\B650"


###########################################################################################
#        Ultra Durable Ethernet, Bluetooth, Storage and WiFi Extraction Folders
###########################################################################################

# Ultra Durable A620 - Bluetooth

$UDBluetooth1 = "$UDDestination\A620\Bluetooth1"
$UDBluetooth2 = "$UDDestination\A620\Bluetooth2"

# Ultra Durable B650 - Bluetooth

$UDBluetooth3 = "$UDDestination\B650\Bluetooth1"
$UDBluetooth4 = "$UDDestination\B650\Bluetooth2"

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

# Ultra Durable A620 - WiFi

$UDWiFi1 = "$UDDestination\A620\WiFi1"
$UDWiFi2 = "$UDDestination\A620\WiFi2"

# Ultra Durable B650 - WiFi

$UDWiFi3 = "$UDDestination\B650\WiFi1"
$UDWiFi4 = "$UDDestination\B650\WiFi2"


