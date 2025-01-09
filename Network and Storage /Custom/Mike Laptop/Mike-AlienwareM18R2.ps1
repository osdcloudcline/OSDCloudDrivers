$MikeAlienwareM18R2Log = "C:\Logs\OSDCloud\Custom\Mike Laptops\AlienwareM18R2.log"

Start-Transcript -Path $MikeAlienwareM18R2Log

Get-Date

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

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



Write-Verbose "Processing: Mike Laptop - Alienware M18 R2 Network, Bluetooth and WiFi Drivers..." -Verbose

Save-WebFile -SourceUrl $MikeAWM18R2EthernetURL -DestinationDirectory $MikeAWM18R2DownloadPath
Expand-7zip -ArchiveFileName "$MikeAWM18R2DownloadPath\AlienwareM18R2-EthernetDrivers.zip" -TargetPath $MikeAWM18R2Ethernet -ErrorAction SilentlyContinue

Save-WebFile -SourceUrl $MikeAWM18R2BluetoothURL -DestinationDirectory $MikeAWM18R2DownloadPath
Expand-7zip -ArchiveFileName "$MikeAWM18R2DownloadPath\AlienwareM18R2-BluetoothDrivers.zip" -TargetPath $MikeAWM18R2Bluetooth -ErrorAction SilentlyContinue

Save-WebFile -SourceUrl $MikeAWM18R2WiFiURL -DestinationDirectory $MikeAWM18R2DownloadPath
Expand-7zip -ArchiveFileName "$MikeAWM18R2DownloadPath\AlienwareM18R2-WiFiDrivers.zip" -TargetPath $MikeAWM18R2WiFi  -ErrorAction SilentlyContinue
Write-Host
Write-Verbose "Completed: Mike Laptop - Alienware M18 R2 Network, Bluetooth and WiFi Drivers..." -Verbose
Write-Host

#########################
# Mike Alienware M18R2 ALL Drivers
##########################

$MikeAWM18R2ALL = "C:\OSDCloud\Drivers\Custom\Mike Laptops\Alienware M18 R2\ALL"
$MikeAWM18R2ALLURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Mike%20Laptop/ALL/Mike-AlienwareM18R2Drivers.zip.001"
$MikeAWM18R2ALLURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Mike%20Laptop/ALL/Mike-AlienwareM18R2Drivers.zip.002"
$MikeAWM18R2ALLURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Mike%20Laptop/ALL/Mike-AlienwareM18R2Drivers.zip.003"
$MikeAWM18R2ALLURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Mike%20Laptop/ALL/Mike-AlienwareM18R2Drivers.zip.004"
$MikeAWM18R2ALLURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Mike%20Laptop/ALL/Mike-AlienwareM18R2Drivers.zip.005"
$MikeAWM18R2ALLURL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Mike%20Laptop/ALL/Mike-AlienwareM18R2Drivers.zip.006"
$MikeAWM18R2ALLURL7 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Mike%20Laptop/ALL/Mike-AlienwareM18R2Drivers.zip.007"

$MikeAWM18R2DownloadPath = "C:\OSDCloud\Drivers\Custom\Mike Laptops\Alienware M18 R2"

Import-Module -Name OSD -Force


Write-Verbose "Processing: Mike Laptop - Alienware M18 R2 ALL Drivers..." -Verbose

Save-WebFile -SourceUrl $MikeAWM18R2ALLURL1  -DestinationDirectory $MikeAWM18R2DownloadPath
Save-WebFile -SourceUrl $MikeAWM18R2ALLURL2  -DestinationDirectory $MikeAWM18R2DownloadPath
Save-WebFile -SourceUrl $MikeAWM18R2ALLURL3  -DestinationDirectory $MikeAWM18R2DownloadPath
Save-WebFile -SourceUrl $MikeAWM18R2ALLURL4  -DestinationDirectory $MikeAWM18R2DownloadPath
Save-WebFile -SourceUrl $MikeAWM18R2ALLURL5  -DestinationDirectory $MikeAWM18R2DownloadPath
Save-WebFile -SourceUrl $MikeAWM18R2ALLURL6  -DestinationDirectory $MikeAWM18R2DownloadPath
Save-WebFile -SourceUrl $MikeAWM18R2ALLURL7  -DestinationDirectory $MikeAWM18R2DownloadPath

Expand-7zip -ArchiveFileName "$MikeAWM18R2DownloadPath\Mike-AlienwareM18R2Drivers.zip.001" -TargetPath $MikeAWM18R2ALL -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$MikeAWM18R2DownloadPath\Mike-AlienwareM18R2Drivers.zip.002" -TargetPath $MikeAWM18R2ALL -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$MikeAWM18R2DownloadPath\Mike-AlienwareM18R2Drivers.zip.003" -TargetPath $MikeAWM18R2ALL -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$MikeAWM18R2DownloadPath\Mike-AlienwareM18R2Drivers.zip.004" -TargetPath $MikeAWM18R2ALL -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$MikeAWM18R2DownloadPath\Mike-AlienwareM18R2Drivers.zip.005" -TargetPath $MikeAWM18R2ALL -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$MikeAWM18R2DownloadPath\Mike-AlienwareM18R2Drivers.zip.006" -TargetPath $MikeAWM18R2ALL -ErrorAction SilentlyContinue
Expand-7zip -ArchiveFileName "$MikeAWM18R2DownloadPath\Mike-AlienwareM18R2Drivers.zip.007" -TargetPath $MikeAWM18R2ALL -ErrorAction SilentlyContinue

Write-Host
Write-Verbose "Completed: Mike Laptop - Alienware M18 R2 ALL Drivers..." -Verbose
Write-Host



Stop-Transcript
