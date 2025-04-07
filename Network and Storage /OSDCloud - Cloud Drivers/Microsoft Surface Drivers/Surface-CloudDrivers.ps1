$OSDCloudCloudDriversSurfaceLog = "C:\Logs\OSDCloud\Drivers\Cloud Drivers\Surface.log"

Start-Transcript -Path $OSDCloudCloudDriversSurfaceLog

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force


$SurfaceCloudDriversURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Microsoft%20Surface%20Drivers/Surface-CloudDrivers.zip.001"
$SurfaceCloudDriversURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Microsoft%20Surface%20Drivers/Surface-CloudDrivers.zip.002"
$SurfaceCloudDriversURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Microsoft%20Surface%20Drivers/Surface-CloudDrivers.zip.003"
$SurfaceCloudDriversURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Microsoft%20Surface%20Drivers/Surface-CloudDrivers.zip.004"
$SurfaceCloudDriversURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Microsoft%20Surface%20Drivers/Surface-CloudDrivers.zip.005"
$SurfaceCloudDriversURL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Microsoft%20Surface%20Drivers/Surface-CloudDrivers.zip.006"
$SurfaceCloudDriversURL7 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Microsoft%20Surface%20Drivers/Surface-CloudDrivers.zip.007"
$SurfaceCloudDriversURL8 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Microsoft%20Surface%20Drivers/Surface-CloudDrivers.zip.008"
$SurfaceCloudDriversURL9 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Microsoft%20Surface%20Drivers/Surface-CloudDrivers.zip.009"
$SurfaceCloudDriversURL10 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Microsoft%20Surface%20Drivers/Surface-CloudDrivers.zip.010"
$SurfaceCloudDriversURL11 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Microsoft%20Surface%20Drivers/Surface-CloudDrivers.zip.011"
$SurfaceCloudDriversURL12 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Microsoft%20Surface%20Drivers/Surface-CloudDrivers.zip.012"
$SurfaceCloudDriversURL13 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Microsoft%20Surface%20Drivers/Surface-CloudDrivers.zip.013"
$SurfaceCloudDriversURL14 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Microsoft%20Surface%20Drivers/Surface-CloudDrivers.zip.014"
$SurfaceCloudDriversURL15 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Microsoft%20Surface%20Drivers/Surface-CloudDrivers.zip.015"
$SurfaceCloudDriversURL16 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Microsoft%20Surface%20Drivers/Surface-CloudDrivers.zip.016"
$SurfaceCloudDriversURL17 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Microsoft%20Surface%20Drivers/Surface-CloudDrivers.zip.017"
$SurfaceCloudDriversURL18 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Microsoft%20Surface%20Drivers/Surface-CloudDrivers.zip.018"
$SurfaceCloudDriversURL19 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Microsoft%20Surface%20Drivers/Surface-CloudDrivers.zip.019"
$SurfaceCloudDriversURL20 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Microsoft%20Surface%20Drivers/Surface-CloudDrivers.zip.020"


$SurfaceCloudDriversDestination = "C:\Drivers\Cloud Drivers\Surface"
$SurfaceCloudDriversExtractionDestination = "C:\Drivers\Cloud Drivers\Surface\Extract"


Get-Date

Write-Verbose "Processing: OSDCloud Cloud Drivers - Downloading Microsoft Surface Tablet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $SurfaceCloudDriversURL1 -DestinationDirectory "$SurfaceCloudDriversDestination"
Save-WebFile -SourceUrl $SurfaceCloudDriversURL2 -DestinationDirectory "$SurfaceCloudDriversDestination"
Save-WebFile -SourceUrl $SurfaceCloudDriversURL3 -DestinationDirectory "$SurfaceCloudDriversDestination"
Save-WebFile -SourceUrl $SurfaceCloudDriversURL4 -DestinationDirectory "$SurfaceCloudDriversDestination"
Save-WebFile -SourceUrl $SurfaceCloudDriversURL5 -DestinationDirectory "$SurfaceCloudDriversDestination"
Save-WebFile -SourceUrl $SurfaceCloudDriversURL6 -DestinationDirectory "$SurfaceCloudDriversDestination"
Save-WebFile -SourceUrl $SurfaceCloudDriversURL7 -DestinationDirectory "$SurfaceCloudDriversDestination"
Save-WebFile -SourceUrl $SurfaceCloudDriversURL8 -DestinationDirectory "$SurfaceCloudDriversDestination"
Save-WebFile -SourceUrl $SurfaceCloudDriversURL9 -DestinationDirectory "$SurfaceCloudDriversDestination"
Save-WebFile -SourceUrl $SurfaceCloudDriversURL10 -DestinationDirectory "$SurfaceCloudDriversDestination"
Save-WebFile -SourceUrl $SurfaceCloudDriversURL11 -DestinationDirectory "$SurfaceCloudDriversDestination"
Save-WebFile -SourceUrl $SurfaceCloudDriversURL12 -DestinationDirectory "$SurfaceCloudDriversDestination"
Save-WebFile -SourceUrl $SurfaceCloudDriversURL13 -DestinationDirectory "$SurfaceCloudDriversDestination"
Save-WebFile -SourceUrl $SurfaceCloudDriversURL14 -DestinationDirectory "$SurfaceCloudDriversDestination"
Save-WebFile -SourceUrl $SurfaceCloudDriversURL15 -DestinationDirectory "$SurfaceCloudDriversDestination"
Save-WebFile -SourceUrl $SurfaceCloudDriversURL16 -DestinationDirectory "$SurfaceCloudDriversDestination"
Save-WebFile -SourceUrl $SurfaceCloudDriversURL17 -DestinationDirectory "$SurfaceCloudDriversDestination"
Save-WebFile -SourceUrl $SurfaceCloudDriversURL18 -DestinationDirectory "$SurfaceCloudDriversDestination"
Save-WebFile -SourceUrl $SurfaceCloudDriversURL19 -DestinationDirectory "$SurfaceCloudDriversDestination"
Save-WebFile -SourceUrl $SurfaceCloudDriversURL20 -DestinationDirectory "$SurfaceCloudDriversDestination"


Write-Host "Completed: Microsoft Surface Tablets driver downloads..." -ForegroundColor Cyan

Write-Verbose "Processing: OSDCloud Cloud Drivers - Microsoft Surface Tablets ZIP Files..." -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$SurfaceCloudDriversDestination\Surface-CloudDrivers.zip.001" -TargetPath "$SurfaceCloudDriversExtractionDestination" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SurfaceCloudDriversDestination\Surface-CloudDrivers.zip.002" -TargetPath "$SurfaceCloudDriversExtractionDestination" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SurfaceCloudDriversDestination\Surface-CloudDrivers.zip.003" -TargetPath "$SurfaceCloudDriversExtractionDestination" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SurfaceCloudDriversDestination\Surface-CloudDrivers.zip.004" -TargetPath "$SurfaceCloudDriversExtractionDestination" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SurfaceCloudDriversDestination\Surface-CloudDrivers.zip.005" -TargetPath "$SurfaceCloudDriversExtractionDestination" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SurfaceCloudDriversDestination\Surface-CloudDrivers.zip.006" -TargetPath "$SurfaceCloudDriversExtractionDestination" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SurfaceCloudDriversDestination\Surface-CloudDrivers.zip.007" -TargetPath "$SurfaceCloudDriversExtractionDestination" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SurfaceCloudDriversDestination\Surface-CloudDrivers.zip.008" -TargetPath "$SurfaceCloudDriversExtractionDestination" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SurfaceCloudDriversDestination\Surface-CloudDrivers.zip.009" -TargetPath "$SurfaceCloudDriversExtractionDestination" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SurfaceCloudDriversDestination\Surface-CloudDrivers.zip.010" -TargetPath "$SurfaceCloudDriversExtractionDestination" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SurfaceCloudDriversDestination\Surface-CloudDrivers.zip.011" -TargetPath "$SurfaceCloudDriversExtractionDestination" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SurfaceCloudDriversDestination\Surface-CloudDrivers.zip.012" -TargetPath "$SurfaceCloudDriversExtractionDestination" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SurfaceCloudDriversDestination\Surface-CloudDrivers.zip.013" -TargetPath "$SurfaceCloudDriversExtractionDestination" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SurfaceCloudDriversDestination\Surface-CloudDrivers.zip.014" -TargetPath "$SurfaceCloudDriversExtractionDestination" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SurfaceCloudDriversDestination\Surface-CloudDrivers.zip.015" -TargetPath "$SurfaceCloudDriversExtractionDestination" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SurfaceCloudDriversDestination\Surface-CloudDrivers.zip.016" -TargetPath "$SurfaceCloudDriversExtractionDestination" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SurfaceCloudDriversDestination\Surface-CloudDrivers.zip.017" -TargetPath "$SurfaceCloudDriversExtractionDestination" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SurfaceCloudDriversDestination\Surface-CloudDrivers.zip.018" -TargetPath "$SurfaceCloudDriversExtractionDestination" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SurfaceCloudDriversDestination\Surface-CloudDrivers.zip.019" -TargetPath "$SurfaceCloudDriversExtractionDestination" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$SurfaceCloudDriversDestination\Surface-CloudDrivers.zip.020" -TargetPath "$SurfaceCloudDriversExtractionDestination" -ErrorAction SilentlyContinue 

Write-Host "Completed: Microsoft Surface Tablets ZIP File extraction..." -ForegroundColor Cyan

Stop-Transcript
