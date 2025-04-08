$OSDCloudCloudDriversUSBLog = "C:\Logs\OSDCloud\Drivers\Cloud Drivers\USB.log"

Start-Transcript -Path $OSDCloudCloudDriversUSBLog

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force


$USBCloudDriversURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/USB%20Drivers/USB-CloudDrivers1.zip"
$USBCloudDriversURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/USB%20Drivers/USB-CloudDrivers2.zip"
$USBCloudDriversURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/USB%20Drivers/USB-CloudDrivers3.zip"
$USBCloudDriversURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/USB%20Drivers/USB-CloudDrivers4.zip"
$USBCloudDriversURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/USB%20Drivers/USB-CloudDrivers5.zip"

$USBCloudDriversDestination = "C:\Drivers\Cloud Drivers\USB"

Get-Date

Write-Verbose "Processing: OSDCloud Cloud Drivers - Downloading USB Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $USBCloudDriversURL1 -DestinationDirectory "$USBCloudDriversDestination"
Save-WebFile -SourceUrl $USBCloudDriversURL2 -DestinationDirectory "$USBCloudDriversDestination"
Save-WebFile -SourceUrl $USBCloudDriversURL3 -DestinationDirectory "$USBCloudDriversDestination"
Save-WebFile -SourceUrl $USBCloudDriversURL4 -DestinationDirectory "$USBCloudDriversDestination"
Save-WebFile -SourceUrl $USBCloudDriversURL5 -DestinationDirectory "$USBCloudDriversDestination"

Write-Host "Completed: USB driver downloads..." -ForegroundColor Cyan

Write-Verbose "Processing: OSDCloud Cloud Drivers - USB ZIP Files..." -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$USBCloudDriversDestination\USB-CloudDrivers1.zip" -TargetPath "$USBCloudDriversDestination\Extract\1" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$USBCloudDriversDestination\USB-CloudDrivers2.zip" -TargetPath "$USBCloudDriversDestination\Extract\2" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$USBCloudDriversDestination\USB-CloudDrivers3.zip" -TargetPath "$USBCloudDriversDestination\Extract\3" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$USBCloudDriversDestination\USB-CloudDrivers4.zip" -TargetPath "$USBCloudDriversDestination\Extract\4" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$USBCloudDriversDestination\USB-CloudDrivers5.zip" -TargetPath "$USBCloudDriversDestination\Extract\5" -ErrorAction SilentlyContinue 


Write-Host "Completed: ZIP File extraction..." -ForegroundColor Cyan

Stop-Transcript
