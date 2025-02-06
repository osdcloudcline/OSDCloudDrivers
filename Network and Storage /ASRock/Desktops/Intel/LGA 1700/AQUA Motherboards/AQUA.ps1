$LGA1700AQUA = "C:\Logs\OSDCloud\ASRock\LGA1700\AQUA.log"
Start-Transcript -Path $LGA1700AQUA

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#          LGA 1700 Bluetooth, Ethernet, Storage and WLAN Driver URLs
####################################################################################

$AQUABluetoothURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/AQUA%20Motherboards/Bluetooth/ASRock-LGA1700-AQUA-BluetoothDrivers.zip"

$AQUAEthernet1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/AQUA%20Motherboards/Ethernet/ASRock-LGA1700-AQUA-EthernetDrivers1.zip"
$AQUAEthernet2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/AQUA%20Motherboards/Ethernet/ASRock-LGA1700-AQUA-EthernetDrivers2.zip"

$AQUAStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/AQUA%20Motherboards/Storage/ASRock-LGA1700-AQUA-IRST-StorageDrivers.zip"

$AQUAWLAN1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/AQUA%20Motherboards/WLAN/ASRock-LGA1700-AQUA-WLANDrivers1.zip"
$AQUAWLAN2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/AQUA%20Motherboards/WLAN/ASRock-LGA1700-AQUA-WLANDrivers2.zip"


####################################################################################
#    LGA 1700 Bluetooth, Ethernet, Storage and WLAN Driver Download Destination
####################################################################################

$AQUADestination = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\AQUA"




















Stop-Transcript
