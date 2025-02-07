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
