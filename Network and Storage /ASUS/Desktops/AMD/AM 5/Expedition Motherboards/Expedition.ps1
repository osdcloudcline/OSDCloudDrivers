$AM5Expedition = "C:\Logs\OSDCloud\ASUS\AM5\Expedition.log"
Start-Transcript -Path $AM5Expedition

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force
