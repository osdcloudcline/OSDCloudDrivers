$LGA1851AQUA = "C:\Logs\OSDCloud\ASRock\LGA1851\AQUA.log"
Start-Transcript -Path $LGA1851AQUA

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force


####################################################################################
#          LGA 1851 Bluetooth, Ethernet, Storage and WLAN Driver URLs
####################################################################################

$AQUABluetoothURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/AQUA%20Motherboards/Bluetooth/ASRock-LGA1851-AQUA-BluetoothDrivers.zip"

$AQUAEthernet1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/AQUA%20Motherboards/Ethernet/ASRock-LGA1851-AQUA-Aquatia-EthernetDrivers1.zip"
$AQUAEthernet2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/AQUA%20Motherboards/Ethernet/ASRock-LGA1851-AQUA-Killer-EthernetDrivers2.zip"
$AQUAEthernet3URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/AQUA%20Motherboards/Ethernet/ASRock-LGA1851-AQUA-Killer-EthernetDrivers3.zip"
$AQUAEthernet4URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/AQUA%20Motherboards/Ethernet/ASRock-LGA1851-AQUA-Killer-EthernetDrivers4.zip"
$AQUAEthernet5URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/AQUA%20Motherboards/Ethernet/ASRock-LGA1851-AQUA-Killer-EthernetDrivers5.zip"
$AQUAEthernet6URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/AQUA%20Motherboards/Ethernet/ASRock-LGA1851-AQUA-Killer-EthernetDrivers6.zip"
$AQUAEthernet7URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/AQUA%20Motherboards/Ethernet/ASRock-LGA1851-AQUA-Realtek-EthernetDrivers7.zip"

$AQUAStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/AQUA%20Motherboards/Storage/ASRock-LGA1851-AQUA-IRST-StorageDrivers.zip"

$AQUAWLAN1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/AQUA%20Motherboards/WLAN/ASRock-LGA1851-AQUA-WLANDrivers.zip"


