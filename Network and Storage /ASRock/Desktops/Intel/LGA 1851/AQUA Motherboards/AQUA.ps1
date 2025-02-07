$LGA1851AQUA = "C:\Logs\OSDCloud\ASRock\LGA1851\AQUA.log"
Start-Transcript -Path $LGA1851AQUA

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force
