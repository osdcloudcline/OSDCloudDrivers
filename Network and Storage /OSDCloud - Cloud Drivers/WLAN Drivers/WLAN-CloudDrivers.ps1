$OSDCloudCloudDriversWLANLog = "C:\Logs\OSDCloud\Drivers\Cloud Drivers\WLAN.log"

Start-Transcript -Path $OSDCloudCloudDriversWLANLog

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force


$WLANCloudDriversURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/WLAN%20Drivers/WLAN-CloudDrivers.zip"

$WLANCloudDriversDestination = "C:\Drivers\Cloud Drivers\WLAN"

Get-Date

Write-Verbose "Processing: OSDCloud Cloud Drivers - Downloading WLAN Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $WLANCloudDriversURL1 -DestinationDirectory "$WLANCloudDriversDestination"


Write-Host "Completed: WLAN driver downloads..." -ForegroundColor Cyan

Write-Verbose "Processing: OSDCloud Cloud Drivers - WLAN ZIP Files..." -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$WLANCloudDriversDestination\WLAN-CloudDrivers.zip" -TargetPath "$WLANCloudDriversDestination\Extract" -ErrorAction SilentlyContinue 


Write-Host "Completed: ZIP File extraction..." -ForegroundColor Cyan

Stop-Transcript
