$IntelLGA1700Storage = "C:\Logs\OSDCloud\ASRock\LGA1700\IRST-StorageDrivers.log"
Start-Transcript -Path $IntelLGA1700Storage

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force






















Stop-Transcript
