$SeanAlienwareM18R2Log = "C:\Logs\OSDCloud\Custom\Sean Laptops\AlienwareM18R2.log"

Start-Transcript -Path $SeanAlienwareM18R2Log

Get-Date

#########################
# Sean Alienware M18R2 Network Drivers  Path
##########################


$SeanAWM18R2EthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Sean's%20Laptop/Ethernet/AlienwareM18R2-EthernetDrivers.zip"
$SeanAWM18R2BluetoothURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Sean's%20Laptop/Bluetooth/AlienwareM18R2-BluetoothDrivers.zip"
$SeanAWM18R2WiFiURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Sean's%20Laptop/WiFi/AlienwareM18R2-WiFiDrivers.zip"

$SeanAWM18R2DownloadPath = "C:\OSDCloud\Drivers\Custom\Sean Laptops\Alienware M18 R2"

$SeanAWM18R2Ethernet = "C:\OSDCloud\Drivers\Custom\Sean Laptops\Alienware M18 R2\Ethernet"
$SeanAWM18R2Bluetooth = "C:\OSDCloud\Drivers\Custom\Sean Laptops\Alienware M18 R2\Bluetooth"
$SeanAWM18R2WiFi = "C:\OSDCloud\Drivers\Custom\Sean Laptops\Alienware M18 R2\WiFi"

Import-Module -Name OSD -Force

Write-Verbose "Processing: Sean Laptop - Alienware M18 R2 Network, Bluetooth and WiFi Drivers..." -Verbose

Save-WebFile -SourceUrl $SeanAWM18R2EthernetURL -DestinationDirectory $SeanAWM18R2DownloadPath
Expand-7zip -ArchiveName "$SeanAWM18R2DownloadPath\AlienwareM18R2-EthernetDrivers.zip" -TargetPath $SeanAWM18R2Ethernet -ErrorAction SilentlyContinue

Save-WebFile -SourceUrl $SeanAWM18R2BluetoothURL -DestinationDirectory $SeanAWM18R2DownloadPath
Expand-7zip -ArchiveName "$SeanAWM18R2DownloadPath\AlienwareM18R2-BluetoothDrivers.zip" -TargetPath $SeanAWM18R2Bluetooth -ErrorAction SilentlyContinue

Save-WebFile -SourceUrl $SeanAWM18R2WiFiURL -DestinationDirectory $SeanAWM18R2DownloadPath
Expand-7zip -ArchiveName "$SeanAWM18R2DownloadPath\AlienwareM18R2-WiFiDrivers.zip" -TargetPath $SeanAWM18R2WiFi  -ErrorAction SilentlyContinue
Write-Host
Write-Verbose "Completed: Sean Laptop - Alienware M18 R2 Network, Bluetooth and WiFi Drivers..." -Verbose
Write-Host

#########################
# Sean Alienware M18R2 Storage Drivers  Path
##########################

$SeanAWM18R2Storage = "C:\OSDCloud\Drivers\Custom\Sean Laptops\Alienware M18 R2\Storage"
$SeanAWM18R2StorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Sean's%20Laptop/Storage/AlienwareM18R2-StorageDrivers.zip"

$SeanAWM18R2DownloadPath = "C:\OSDCloud\Drivers\Custom\Sean Laptops\Alienware M18 R2"

Import-Module -Name OSD -Force

Write-Verbose "Processing: Sean Laptop - Alienware M18 R2 Storage Drivers..." -Verbose

Save-WebFile -SourceUrl $SeanAWM18R2StorageURL -DestinationDirectory $SeanAWM18R2DownloadPath
Expand-7zip -ArchiveName "$SeanAWM18R2DownloadPath\AlienwareM18R2-StorageDrivers.zip" -TargetPath $SeanAWM18R2Storage -ErrorAction SilentlyContinue

Write-Host
Write-Verbose "Completed: Sean Laptop - Alienware M18 R2 Storage Drivers..." -Verbose
Write-Host

Stop-Transcript
