$OSDCloudCloudDriversDELLLog = "C:\Logs\OSDCloud\Drivers\Cloud Drivers\Dell.log"

Start-Transcript -Path $OSDCloudCloudDriversDELLLog

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force


$DellCloudDriversURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Dell%20Drivers/Dell-CloudDrivers-Network-Windows10-18362.zip"
$DellCloudDriversURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Dell%20Drivers/Dell-CloudDrivers-Network-Windows10-22000.zip"
$DellCloudDriversURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Dell%20Drivers/Dell-CloudDrivers-Network-Windows11.zip"
$DellCloudDriversURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Dell%20Drivers/Dell-CloudDrivers-PEDriverPack.zip"
$DellCloudDriversURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Dell%20Drivers/Dell-CloudDrivers-Storage-Other.zip"
$DellCloudDriversURL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Dell%20Drivers/Dell-CloudDrivers-Storage-Windows10.zip"
$DellCloudDriversURL7 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Dell%20Drivers/Dell-CloudDrivers-Storage-Windows11.zip"


$DellCloudDriversDestination = "C:\Drivers\Cloud Drivers\Dell"

Get-Date

Write-Verbose "Processing: OSDCloud Cloud Drivers - Downloading Dell Network Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $DellCloudDriversURL1 -DestinationDirectory "$DellCloudDriversDestination\Network\Windows10"
Save-WebFile -SourceUrl $DellCloudDriversURL2 -DestinationDirectory "$DellCloudDriversDestination\Network\Windows10"
Save-WebFile -SourceUrl $DellCloudDriversURL3 -DestinationDirectory "$DellCloudDriversDestination\Network\Windows11"

Write-Verbose "Processing: OSDCloud Cloud Drivers - Downloading Dell Windows PE Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $DellCloudDriversURL4 -DestinationDirectory "$DellCloudDriversDestination\Windows PE"

Write-Verbose "Processing: OSDCloud Cloud Drivers - Downloading Dell Storage Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $DellCloudDriversURL5 -DestinationDirectory "$DellCloudDriversDestination\Storage\Other"
Save-WebFile -SourceUrl $DellCloudDriversURL6 -DestinationDirectory "$DellCloudDriversDestination\Storage\Windows10"
Save-WebFile -SourceUrl $DellCloudDriversURL7 -DestinationDirectory "$DellCloudDriversDestination\Storage\Windows11"

Write-Host "Comppleted: Dell Network, Storage and Windows PE driver downloads..." -ForegroundColor Cyan

Write-Verbose "Processing: OSDCloud Cloud Drivers - Dell ZIP Files..." -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$DellCloudDriversDestination\Network\Windows10\Dell-CloudDrivers-Network-Windows10-18362.zip" -TargetPath "$DellCloudDriversDestination\Network\Windows10\18362" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$DellCloudDriversDestination\Network\Windows10\Dell-CloudDrivers-Network-Windows10-22000.zip" -TargetPath "$DellCloudDriversDestination\Network\Windows10\22000" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$DellCloudDriversDestination\Network\Windows11\Dell-CloudDrivers-Network-Windows11.zip" -TargetPath "$DellCloudDriversDestination\Network\Windows11\Extract" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$DellCloudDriversDestination\Windows PE\Dell-CloudDrivers-PEDriverPack.zip" -TargetPath "$DellCloudDriversDestination\Windows PE\Extract" -ErrorAction SilentlyContinue 

Expand-7Zip -ArchiveFileName "$DellCloudDriversDestination\Storage\Other\Dell-CloudDrivers-Storage-Other.zip" -TargetPath "$DellCloudDriversDestination\Storage\Other\Extract" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$DellCloudDriversDestination\Storage\Windows10\Dell-CloudDrivers-Storage-Windows10.zip" -TargetPath "$DellCloudDriversDestination\Storage\Windows10\Extract" -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$DellCloudDriversDestination\Storage\Windows11\Dell-CloudDrivers-Storage-Windows11.zip" -TargetPath "$DellCloudDriversDestination\Storage\Windows11\Extract" -ErrorAction SilentlyContinue 

Write-Host "Comppleted: ZIP File extraction..." -ForegroundColor Cyan

Stop-Transcript
