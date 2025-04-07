$OSDCloudCloudDriversDELLLog = "C:\Logs\OSDCloud\Drivers\Cloud Drivers\Dell.log"

Start-Transcript -Path $OSDCloudCloudDriversDELLLog

Import-Module -Name OSD -Force


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

Save-WebFile -SourceUrl $DellCloudDriversURL1 -DestinationDirectory "$DellCloudDriversDestination\Network\Windows10"
Save-WebFile -SourceUrl $DellCloudDriversURL2 -DestinationDirectory "$DellCloudDriversDestination\Network\Windows10"
Save-WebFile -SourceUrl $DellCloudDriversURL3 -DestinationDirectory "$DellCloudDriversDestination\Network\Windows11"

Write-Verbose "Processing: OSDCloud Cloud Drivers - Downloading Dell Windows PE Drivers..." -Verbose

Save-WebFile -SourceUrl $DellCloudDriversURL4 -DestinationDirectory "$DellCloudDriversDestination\Windows PE"

Write-Verbose "Processing: OSDCloud Cloud Drivers - Downloading Dell Storage Drivers..." -Verbose

Save-WebFile -SourceUrl $DellCloudDriversURL5 -DestinationDirectory "$DellCloudDriversDestination\Storage\Other"
Save-WebFile -SourceUrl $DellCloudDriversURL6 -DestinationDirectory "$DellCloudDriversDestination\Storage\Windows10"
Save-WebFile -SourceUrl $DellCloudDriversURL7 -DestinationDirectory "$DellCloudDriversDestination\Storage\Windows11"



Stop-Transcript
