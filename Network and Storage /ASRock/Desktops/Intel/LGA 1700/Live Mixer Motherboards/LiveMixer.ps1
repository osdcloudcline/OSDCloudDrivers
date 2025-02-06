$LGA1700LiveMixer = "C:\Logs\OSDCloud\ASRock\LGA1700\LiveMixer.log"
Start-Transcript -Path $LGA1700LiveMixer

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force






















Stop-Transcript
