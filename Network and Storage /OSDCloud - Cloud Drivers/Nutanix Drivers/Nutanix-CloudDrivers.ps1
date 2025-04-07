$OSDCloudCloudDriversNutanixLog = "C:\Logs\OSDCloud\Drivers\Cloud Drivers\Nutanix.log"

Start-Transcript -Path $OSDCloudCloudDriversNutanixLog

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force


$NutanixCloudDriversURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Nutanix%20Drivers/Nutanix-CloudDrivers1.zip"
$NutanixCloudDriversURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Nutanix%20Drivers/Nutanix-CloudDrivers2.zip"
$NutanixCloudDriversURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Nutanix%20Drivers/Nutanix-CloudDrivers3.zip"

$NutanixCloudDriversDestination = "C:\Drivers\Cloud Drivers\Nutanix"

Get-Date

Write-Verbose "Processing: OSDCloud Cloud Drivers - Downloading Nutanix Network Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $NutanixCloudDriversURL1 -DestinationDirectory "$NutanixCloudDriversDestination"
Save-WebFile -SourceUrl $NutanixCloudDriversURL2 -DestinationDirectory "$NutanixCloudDriversDestination"
Save-WebFile -SourceUrl $NutanixCloudDriversURL3 -DestinationDirectory "$NutanixCloudDriversDestination"

Write-Host "Completed: Nutanix driver downloads..." -ForegroundColor Cyan

Write-Verbose "Processing: OSDCloud Cloud Drivers - Nutanix ZIP Files..." -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$NutanixCloudDriversDestination\Nutanix-CloudDrivers1.zip" -TargetPath "$NutanixCloudDriversDestination\Extract\1" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$NutanixCloudDriversDestination\Nutanix-CloudDrivers2.zip" -TargetPath "$NutanixCloudDriversDestination\Extract\2" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$NutanixCloudDriversDestination\Nutanix-CloudDrivers3.zip" -TargetPath "$NutanixCloudDriversDestination\Extract\3" -ErrorAction SilentlyContinue 

Write-Host "Completed: ZIP File extraction..." -ForegroundColor Cyan

Stop-Transcript
