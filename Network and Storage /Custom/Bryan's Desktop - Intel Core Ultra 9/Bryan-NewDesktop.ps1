$BryanNewDesktopLog = "C:\Logs\OSDCloud\Custom\Desktop\Bryan-ASUS-Z890-A-STRIX.log"

Start-Transcript -Path $BryanNewDesktopLog

Get-Date

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

################################################
# Bryan ASUS Z890-A STRIX Ethernet Drivers URL
################################################

$BryanEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Bryan's%20Desktop%20-%20Intel%20Core%20Ultra%209/Ethernet/ASUS%20ROG%20Z890-A%20STRIX-EthernetDrivers.zip"

################################################
# Bryan ASUS Z890-A STRIX WiFi Drivers URL
################################################

$BryanWiFiURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Bryan's%20Desktop%20-%20Intel%20Core%20Ultra%209/WiFi/ASUS%20ROG%20Z890-A%20STRIX-WiFiDrivers.zip"

################################################
# Bryan ASUS Z890-A STRIX Bluetooth Drivers URL
################################################

$BryanBluetoothURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Bryan's%20Desktop%20-%20Intel%20Core%20Ultra%209/Bluetooth/ASUS%20ROG%20Z890-A%20STRIX-BluetoothDrivers.zip"

################################################
# Bryan ASUS Z890-A STRIX Storage Drivers URL
################################################

$BryanStorageURL = ""


################################################
# Bryan ASUS Z890-A STRIX Download Locations
################################################

$ZIPDownload = ""


################################################
# Bryan ASUS Z890-A STRIX Extraction Locations
################################################

$Ethernet = ""
$WiFi = ""
$Bluetooth = ""
$Storage = ""

