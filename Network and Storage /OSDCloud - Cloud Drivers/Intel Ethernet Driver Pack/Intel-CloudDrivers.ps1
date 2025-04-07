$OSDCloudCloudDriversIntelLog = "C:\Logs\OSDCloud\Drivers\Cloud Drivers\Intel.log"

Start-Transcript -Path $OSDCloudCloudDriversIntelLog

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force


$IntelCloudDriversURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Intel%20Ethernet%20Driver%20Pack/Intel-CloudDrivers-Ethernet-ClientOS.zip"
$IntelCloudDriversURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Intel%20Ethernet%20Driver%20Pack/Intel-CloudDrivers-Ethernet-ServerOS.zip"
$IntelCloudDriversURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Intel%20Ethernet%20Driver%20Pack/Intel-CloudDrivers-Ethernet1.zip"
$IntelCloudDriversURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Intel%20Ethernet%20Driver%20Pack/Intel-CloudDrivers-Ethernet2.zip"



$IntelCloudDriversDestination = "C:\Drivers\Cloud Drivers\Intel"

Get-Date

Write-Verbose "Processing: OSDCloud Cloud Drivers - Downloading Intel Network Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $IntelCloudDriversURL1 -DestinationDirectory "$IntelCloudDriversDestination\Network\Client OS"
Save-WebFile -SourceUrl $IntelCloudDriversURL2 -DestinationDirectory "$IntelCloudDriversDestination\Network\Server OS"
Save-WebFile -SourceUrl $IntelCloudDriversURL3 -DestinationDirectory "$IntelCloudDriversDestination\Network\Other"
Save-WebFile -SourceUrl $IntelCloudDriversURL4 -DestinationDirectory "$IntelCloudDriversDestination\Network\Other"

Write-Host "Completed: Intel Network driver downloads..." -ForegroundColor Cyan

Write-Verbose "Processing: OSDCloud Cloud Drivers - Intel ZIP Files..." -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$IntelCloudDriversDestination\Network\Client OS\Intel-CloudDrivers-Ethernet-ClientOS.zip" -TargetPath "$IntelCloudDriversDestination\Network\Client OS" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$IntelCloudDriversDestination\Network\Server OS\Intel-CloudDrivers-Ethernet-ServerOS.zip" -TargetPath "$IntelCloudDriversDestination\Network\Server OS" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$IntelCloudDriversDestination\Network\Other\Intel-CloudDrivers-Ethernet1.zip" -TargetPath "$IntelCloudDriversDestination\Network\Other\1" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$IntelCloudDriversDestination\Network\Other\Intel-CloudDrivers-Ethernet2.zip" -TargetPath "$IntelCloudDriversDestination\Network\Other\2" -ErrorAction SilentlyContinue 



Write-Host "Completed: ZIP File extraction..." -ForegroundColor Cyan

Stop-Transcript
