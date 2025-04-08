$OSDCloudCloudDriversVMWareLog = "C:\Logs\OSDCloud\Drivers\Cloud Drivers\VMWare.log"

Start-Transcript -Path $OSDCloudCloudDriversVMWareLog

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force


$VMWareCloudDriversURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/VMWare%20Drivers/VMWare-CloudDrivers1.zip"
$VMWareCloudDriversURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/VMWare%20Drivers/VMWare-CloudDrivers2.zip"
$VMWareCloudDriversURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/VMWare%20Drivers/VMWare-CloudDrivers3.zip"


$VMWareCloudDriversDestination = "C:\Drivers\Cloud Drivers\VMWare"

Get-Date

Write-Verbose "Processing: OSDCloud Cloud Drivers - Downloading VMWare Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $VMWareCloudDriversURL1 -DestinationDirectory "$VMWareCloudDriversDestination"
Save-WebFile -SourceUrl $VMWareCloudDriversURL2 -DestinationDirectory "$VMWareCloudDriversDestination"
Save-WebFile -SourceUrl $VMWareCloudDriversURL3 -DestinationDirectory "$VMWareCloudDriversDestination"

Write-Host "Completed: VMWare driver downloads..." -ForegroundColor Cyan

Write-Verbose "Processing: OSDCloud Cloud Drivers - VMWare ZIP Files..." -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$VMWareCloudDriversDestination\VMWare-CloudDrivers1.zip" -TargetPath "$VMWareCloudDriversDestination\Extract\1" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$VMWareCloudDriversDestination\VMWare-CloudDrivers2.zip" -TargetPath "$VMWareCloudDriversDestination\Extract\2" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$VMWareCloudDriversDestination\VMWare-CloudDrivers3.zip" -TargetPath "$VMWareCloudDriversDestination\Extract\3" -ErrorAction SilentlyContinue 



Write-Host "Completed: ZIP File extraction..." -ForegroundColor Cyan

Stop-Transcript
