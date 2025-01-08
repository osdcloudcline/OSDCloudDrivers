$AM5CSM = "C:\Logs\OSDCloud\ASUS\AM5\CSM.log"
Start-Transcript -Path $AM5CSM

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force
