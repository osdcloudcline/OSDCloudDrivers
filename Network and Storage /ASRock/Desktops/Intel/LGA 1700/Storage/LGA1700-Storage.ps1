$IntelLGA1700Storage = "C:\Logs\OSDCloud\ASRock\LGA1700\IRST-StorageDrivers.log"
Start-Transcript -Path $IntelLGA1700Storage

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

#########################
# LGA 1700 Storage Path
##########################

$LGA1700StoragePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\Storage"
$StorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Storage/ASRock-LGA1700-IRST-StorageDrivers.zip"
$StorageDownloadPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\Storage"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force






















Stop-Transcript
