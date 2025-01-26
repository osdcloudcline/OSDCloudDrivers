$BryanNewDesktopLog = "C:\Logs\OSDCloud\Custom\Desktop\Bryan-ASUS-Z890-A-STRIX.log"

Start-Transcript -Path $BryanNewDesktopLog

Get-Date

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

################################################
# Bryan ASUS Z890-A STRIX Ethernet Drivers URL
################################################

$BryanEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Bryan's%20Desktop%20-%20Intel%20Core%20Ultra%209/Ethernet/ASUS-ROG-Z890-A-STRIX-EthernetDrivers.zip"

################################################
# Bryan ASUS Z890-A STRIX WiFi Drivers URL
################################################

$BryanWiFiURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Bryan's%20Desktop%20-%20Intel%20Core%20Ultra%209/WiFi/ASUS%20ROG%20Z890-A%20STRIX-WiFiDrivers.zip"

################################################
# Bryan ASUS Z890-A STRIX Bluetooth Drivers URL
################################################

$BryanBluetoothURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Bryan's%20Desktop%20-%20Intel%20Core%20Ultra%209/Bluetooth/ASUS-ROG-Z890-A-STRIX-BluetoothDrivers.zip"

################################################
# Bryan ASUS Z890-A STRIX Storage Drivers URL
################################################

$BryanStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Bryan's%20Desktop%20-%20Intel%20Core%20Ultra%209/Storage/ASUS-ROG-Z890-A-STRIX-IRST-StorageDrivers.zip"


################################################
# Bryan ASUS Z890-A STRIX Download Locations
################################################

$ZIPDownload = "C:\OSDCloud\Drivers\Custom\Bryan Desktop\ASUS Z890-A STRIX\LGA1851"


################################################
# Bryan ASUS Z890-A STRIX Extraction Locations
################################################

$Ethernet = "C:\OSDCloud\Drivers\Custom\Bryan Desktop\ASUS Z890-A STRIX\LGA1851\Ethernet"
$WiFi = "C:\OSDCloud\Drivers\Custom\Bryan Desktop\ASUS Z890-A STRIX\LGA1851\WLAN"
$Bluetooth = "C:\OSDCloud\Drivers\Custom\Bryan Desktop\ASUS Z890-A STRIX\LGA1851\Bluetooth"
$Storage = "C:\OSDCloud\Drivers\Custom\Bryan Desktop\ASUS Z890-A STRIX\LGA1851\Storage"

Write-Verbose "Processing: Bryan Desktop - Intel Core Ultra 9 285K ASUS Z890-A ROG STRIX LGA1851 Drivers..." -Verbose

Save-WebFile -SourceUrl $BryanEthernetURL -DestinationDirectory $ZIPDownload
Save-WebFile -SourceUrl $BryanWiFiURL -DestinationDirectory $ZIPDownload
Save-WebFile -SourceUrl $BryanBluetoothURL -DestinationDirectory $ZIPDownload
Save-WebFile -SourceUrl $BryanStorageURL -DestinationDirectory $ZIPDownload

Expand-7zip -ArchiveFileName "$ZIPDownload\ASUS-ROG-Z890-A-STRIX-EthernetDrivers.zip"
