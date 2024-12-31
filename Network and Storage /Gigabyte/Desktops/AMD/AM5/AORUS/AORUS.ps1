$AM5AORUS = "C:\Logs\OSDCloud\Gigabyte\AM5\AORUS.log"
Start-Transcript -Path $AM5AORUS

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   AM5 Bluetooth Driver URLs
####################################################################################

# AORUS B650 

$AORUSBluetoothB650URL1 = ""
$AORUSBluetoothB650URL2 = ""
$AORUSBluetoothB650URL3 = ""
$AORUSBluetoothB650URL4 = ""

# AORUS X670 

$AORUSBluetoothX670URL1 = ""
$AORUSBluetoothX670URL2 = ""
$AORUSBluetoothX670URL3 = ""
$AORUSBluetoothX670URL4 = ""

# AORUS X870 

$AORUSBluetoothX870URL1 = ""
$AORUSBluetoothX870URL2 = ""
$AORUSBluetoothX870URL3 = ""
$AORUSBluetoothX870URL4 = ""

# AORUS X870E 

$AORUSBluetoothX870EURL1 = ""
$AORUSBluetoothX870EURL2 = ""
$AORUSBluetoothX870EURL3 = ""
$AORUSBluetoothX870EURL4 = ""
####################################################################################
#                   AM5 Ethernet Driver URLs
####################################################################################

# AORUS B650

$AORUSEthernetB650URL1 = ""
$AORUSEthernetB650URL2 = ""
$AORUSEthernetB650URL3 = ""

# AORUS X670

$AORUSEthernetX670URL1 = ""
$AORUSEthernetX670URL2 = ""
$AORUSEthernetX670URL3 = ""
$AORUSEthernetX670URL4 = ""
$AORUSEthernetX670URL5 = ""
$AORUSEthernetX670URL6 = ""

# AORUS X870

$AORUSEthernetX870URL1 = ""
$AORUSEthernetX870URL2 = ""

# AORUS X870E

$AORUSEthernetX870EURL1 = ""
$AORUSEthernetX870EURL2 = ""



####################################################################################
#                   AM5 Storage Driver URLs
####################################################################################

# AORUS B650

$AORUSStorageB650URL = ""


# AORUS X670

$AORUSStorageX670URL = ""


# AORUS X870

$AORUSStorageX870URL = ""


# AORUS X870E

$AORUSStorageX870EURL = ""


####################################################################################
#                   AM5 WiFi Driver URLs
####################################################################################

# AORUS B650

$AORUSWiFiB650URL1 = ""
$AORUSWiFiB650URL2 = ""
$AORUSWiFiB650URL3 = ""

# AORUS X670

$AORUSWiFiX670URL1 = ""
$AORUSWiFiX670URL2 = ""
$AORUSWiFiX670URL3 = ""


# AORUS X870

$AORUSWiFiX870URL = ""


# AORUS X870E

$AORUSWiFiX870EURL = ""

###########################################################################################
#        AORUS Ethernet, Bluetooth, Storage and WiFi Destination Folders
###########################################################################################

$AORUSDestination =  "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\AORUS"

###########################################################################################
#        AORUS Ethernet, Bluetooth, Storage and WiFi Extraction Folders
###########################################################################################

# AORUS B650 - Bluetooth

$AORUSBluetooth1 = "$AORUSDestination\B650\Bluetooth1"
$AORUSBluetooth2 = "$AORUSDestination\B650\Bluetooth2"
$AORUSBluetooth3 = "$AORUSDestination\B650\Bluetooth3"
$AORUSBluetooth4 = "$AORUSDestination\B650\Bluetooth4"

# AORUS X670 - Bluetooth

$AORUSBluetooth5 = "$AORUSDestination\X670\Bluetooth1"
$AORUSBluetooth6 = "$AORUSDestination\X670\Bluetooth2"
$AORUSBluetooth7 = "$AORUSDestination\X670\Bluetooth3"
$AORUSBluetooth8 = "$AORUSDestination\X670\Bluetooth4"

# AORUS X870 - Bluetooth

$AORUSBluetooth9 = "$AORUSDestination\X870\Bluetooth1"
$AORUSBluetooth10 = "$AORUSDestination\X870\Bluetooth2"
$AORUSBluetooth11 = "$AORUSDestination\X870\Bluetooth3"

# AORUS X870E - Bluetooth

$AORUSBluetooth12 = "$AORUSDestination\X870E\Bluetooth"

# AORUS B650 - Ethernet

$AORUSEthernet1 = "$AORUSDestination\B659\Ethernet1"
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

$AORUSStorage = "$AORUSDestination\Storage\RAID\NVMe"

# AORUS B650 - WiFi

$AORUSWiFi1 = "$AORUSDestination\B650\WiFi1"
$AORUSWiFi2 = "$AORUSDestination\B650\WiFi2"
$AORUSWiFi3 = "$AORUSDestination\B650\WiFi3"

# AORUS X670 - WiFi

$AORUSWiFi4 = "$AORUSDestination\X670\WiFi1"
$AORUSWiFi5 = "$AORUSDestination\X670\WiFi2"
$AORUSWiFi6 = "$AORUSDestination\X670\WiFi3"

# AORUS X870 - WiFi

$AORUSWiFi7 = "$AORUSDestination\X870\WiFi"

# AORUS X870E - WiFi

$AORUSWiFi8 = "$AORUSDestination\X870E\WiFi1"




