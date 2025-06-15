
$DavePatVLog = "C:\Logs\OSDCloud\Custom\Desktop\DavePatV-PCs.log"

Start-Transcript -Path $DavePatVLog

Get-Date

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

################################################
# Dave Desktop Ethernet Drivers URL
################################################

$DaveDesktopEthernetURL1 = ""
$DaveDesktopEthernetURL2 = ""
$DaveDesktopEthernetURL3 = ""
$DaveDesktopEthernetURL4 = ""
$DaveDesktopEthernetURL5 = ""
$DaveDesktopEthernetURL6 = ""
$DaveDesktopEthernetURL7 = ""

################################################
# PatV Lenovo WiFi Drivers URL
################################################

$PatVLenovoWiFiURL1 = ""
$PatVLenovoWiFiURL2 = ""

################################################
# Bryan ASUS Z890-A STRIX Storage Drivers URL
################################################

$BryanStorageURL = ""

################################################
# Dave and Pat PC Download Locations
################################################

$ZIPDownload = "C:\Drivers\Custom\Dave Pat PCs"

################################################
# Dave and Pat PC Extraction Locations
################################################

$Ethernet1 = "C:\Drivers\Custom\Dave Desktop\Ethernet1"
$Ethernet2 = "C:\Drivers\Custom\Dave Desktop\Ethernet2"
$Ethernet3 = "C:\Drivers\Custom\Dave Desktop\Ethernet3"
$Ethernet4 = "C:\Drivers\Custom\Dave Desktop\Ethernet4"
$Ethernet5 = "C:\Drivers\Custom\Dave Desktop\Ethernet5"
$Ethernet6 = "C:\Drivers\Custom\Dave Desktop\Ethernet6"
$Ethernet7 = "C:\Drivers\Custom\Dave Desktop\Ethernet7"

$PatVWiFi1 = "C:\Drivers\Custom\Pat Laptop\WLAN1"
$PatVWiFi2 = "C:\Drivers\Custom\Pat Laptop\WLAN2"


Write-Verbose "Processing: Dave Desktop - Ethernet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $DaveDesktopEthernetURL1 -DestinationDirectory $ZIPDownload
Save-WebFile -SourceUrl $DaveDesktopEthernetURL2 -DestinationDirectory $ZIPDownload
Save-WebFile -SourceUrl $DaveDesktopEthernetURL3 -DestinationDirectory $ZIPDownload
Save-WebFile -SourceUrl $DaveDesktopEthernetURL4 -DestinationDirectory $ZIPDownload
Save-WebFile -SourceUrl $DaveDesktopEthernetURL5 -DestinationDirectory $ZIPDownload
Save-WebFile -SourceUrl $DaveDesktopEthernetURL6 -DestinationDirectory $ZIPDownload
Save-WebFile -SourceUrl $DaveDesktopEthernetURL7 -DestinationDirectory $ZIPDownload

Write-Verbose "Processing: Pat Laptop - WLAN Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $PatVWiFi1 -DestinationDirectory $ZIPDownload
Save-WebFile -SourceUrl $PatVWiFi2 -DestinationDirectory $ZIPDownload

Write-Verbose "Processing: Extracting Drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$ZIPDownload\" -TargetPath $Ethernet1
Expand-7zip -ArchiveFileName "$ZIPDownload\" -TargetPath $Ethernet2
Expand-7zip -ArchiveFileName "$ZIPDownload\" -TargetPath $Ethernet3
Expand-7zip -ArchiveFileName "$ZIPDownload\" -TargetPath $Ethernet4
Expand-7zip -ArchiveFileName "$ZIPDownload\" -TargetPath $Ethernet5
Expand-7zip -ArchiveFileName "$ZIPDownload\" -TargetPath $Ethernet6
Expand-7zip -ArchiveFileName "$ZIPDownload\" -TargetPath $Ethernet7

Expand-7zip -ArchiveFileName "$ZIPDownload\" -TargetPath $PatVWiFi1 
Expand-7zip -ArchiveFileName "$ZIPDownload\" -TargetPath $PatVWiFi2  
Expand-7zip -ArchiveFileName "$ZIPDownload\" -TargetPath $Storage 

Write-Verbose "Completed: Dave Desktop and Pat Laptop - Ethernet and WLAN Drivers..." -Verbose

Stop-Transcript

