$MikeAlienwareM18R2Log = "C:\Logs\OSDCloud\Custom\Mike Laptops\AlienwareM18R2.log"

Start-Transcript -Path $MikeAlienwareM18R2Log

Get-Date

#########################
# Mike Alienware M18R2 Network Drivers  Path
##########################


$MikeAWM18R2EthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Mike%20Laptop/Ethernet/AlienwareM18R2-EthernetDrivers.zip"
$MikeAWM18R2BluetoothURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Mike%20Laptop/Bluetooth/AlienwareM18R2-BluetoothDrivers.zip"
$MikeAWM18R2WiFiURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Mike%20Laptop/WiFi/AlienwareM18R2-WiFiDrivers.zip"

$MikeAWM18R2DownloadPath = "C:\OSDCloud\Drivers\Custom\Mike Laptops\Alienware M18 R2"

$MikeAWM18R2Ethernet = "C:\OSDCloud\Drivers\Custom\Mike Laptops\Alienware M18 R2\Ethernet"
$MikeAWM18R2Bluetooth = "C:\OSDCloud\Drivers\Custom\Mike Laptops\Alienware M18 R2\Bluetooth"
$MikeAWM18R2WiFi = "C:\OSDCloud\Drivers\Custom\Mike Laptops\Alienware M18 R2\WiFi"

Import-Module -Name OSD -Force

Write-Verbose "Processing: Mike Laptop - Alienware M18 R2 Network, Bluetooth and WiFi Drivers..." -Verbose

Save-WebFile -SourceUrl $MikeAWM18R2EthernetURL -DestinationDirectory $MikeAWM18R2DownloadPath
Expand-7zip -ArchiveName "$MikeAWM18R2DownloadPath\AlienwareM18R2-EthernetDrivers.zip" -TargetPath $MikeAWM18R2Ethernet -ErrorAction SilentlyContinue

Save-WebFile -SourceUrl $MikeAWM18R2BluetoothURL -DestinationDirectory $MikeAWM18R2DownloadPath
Expand-7zip -ArchiveName "$MikeAWM18R2DownloadPath\AlienwareM18R2-BluetoothDrivers.zip" -TargetPath $MikeAWM18R2Bluetooth -ErrorAction SilentlyContinue

Save-WebFile -SourceUrl $MikeAWM18R2WiFiURL -DestinationDirectory $MikeAWM18R2DownloadPath
Expand-7zip -ArchiveName "$MikeAWM18R2DownloadPath\AlienwareM18R2-WiFiDrivers.zip" -TargetPath $MikeAWM18R2WiFi  -ErrorAction SilentlyContinue
Write-Host
Write-Verbose "Completed: Mike Laptop - Alienware M18 R2 Network, Bluetooth and WiFi Drivers..." -Verbose
Write-Host

#########################
# Mike Alienware M18R2 Storage Drivers  Path
##########################

$MikeAWM18R2Storage = "C:\OSDCloud\Drivers\Custom\Mike Laptops\Alienware M18 R2\Storage"
$MikeAWM18R2StorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Mike%20Laptop/Storage/AlienwareM18R2-StorageDrivers.zip"

$MikeAWM18R2DownloadPath = "C:\OSDCloud\Drivers\Custom\Mike Laptops\Alienware M18 R2"

Import-Module -Name OSD -Force

Write-Verbose "Processing: Mike Laptop - Alienware M18 R2 Storage Drivers..." -Verbose

Save-WebFile -SourceUrl $MikeAWM18R2StorageURL -DestinationDirectory $MikeAWM18R2DownloadPath
Expand-7zip -ArchiveName "$MikeAWM18R2DownloadPath\AlienwareM18R2-StorageDrivers.zip" -TargetPath $MikeAWM18R2Storage -ErrorAction SilentlyContinue

Write-Host
Write-Verbose "Completed: Mike Laptop - Alienware M18 R2 Storage Drivers..." -Verbose
Write-Host

Stop-Transcript
