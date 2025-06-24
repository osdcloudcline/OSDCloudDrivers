
$DavePatVLog = "C:\Logs\OSDCloud\Custom\Desktop\DavePatV-PCs.log"

Start-Transcript -Path $DavePatVLog

Get-Date

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

################################################
# Dave Desktop Ethernet Drivers URL
################################################

$DaveDesktopEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Dave%20and%20Pat%20PCs/DaveV-DVQ-EthernetDrivers1.zip"
$DaveDesktopEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Dave%20and%20Pat%20PCs/DaveV-DVQ-EthernetDrivers2.zip"
$DaveDesktopEthernetURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Dave%20and%20Pat%20PCs/DaveV-DVQ-EthernetDrivers3.zip"
$DaveDesktopEthernetURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Dave%20and%20Pat%20PCs/DaveV-DVQ-EthernetDrivers4.zip"
$DaveDesktopEthernetURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Dave%20and%20Pat%20PCs/DaveV-DVQ-EthernetDrivers5.zip"
$DaveDesktopEthernetURL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Dave%20and%20Pat%20PCs/DaveV-DVQ-EthernetDrivers6.zip"
$DaveDesktopEthernetURL7 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Dave%20and%20Pat%20PCs/DaveV-DVQ-EthernetDrivers7.zip"

################################################
# Dave WiFi Drivers URL
################################################

$DaveWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Dave%20and%20Pat%20PCs/PatV-IdeaPad3-17ITL6-WLANDrivers1.zip"


################################################
# PatV Lenovo WiFi Drivers URL
################################################

$PatVLenovoWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Dave%20and%20Pat%20PCs/PatV-IdeaPad3-17ITL6-WLANDrivers1.zip"
$PatVLenovoWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Dave%20and%20Pat%20PCs/PatV-IdeaPad3-17ITL6-WLANDrivers2.zip"

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

Expand-7zip -ArchiveFileName "$ZIPDownload\DaveV-DVQ-EthernetDrivers1.zip" -TargetPath $Ethernet1
Expand-7zip -ArchiveFileName "$ZIPDownload\DaveV-DVQ-EthernetDrivers2.zip" -TargetPath $Ethernet2
Expand-7zip -ArchiveFileName "$ZIPDownload\DaveV-DVQ-EthernetDrivers3.zip" -TargetPath $Ethernet3
Expand-7zip -ArchiveFileName "$ZIPDownload\DaveV-DVQ-EthernetDrivers4.zip" -TargetPath $Ethernet4
Expand-7zip -ArchiveFileName "$ZIPDownload\DaveV-DVQ-EthernetDrivers5.zip" -TargetPath $Ethernet5
Expand-7zip -ArchiveFileName "$ZIPDownload\DaveV-DVQ-EthernetDrivers6.zip" -TargetPath $Ethernet6
Expand-7zip -ArchiveFileName "$ZIPDownload\DaveV-DVQ-EthernetDrivers7.zip" -TargetPath $Ethernet7

Expand-7zip -ArchiveFileName "$ZIPDownload\PatV-IdeaPad3-17ITL6-WLANDrivers1.zip" -TargetPath $PatVWiFi1 
Expand-7zip -ArchiveFileName "$ZIPDownload\PatV-IdeaPad3-17ITL6-WLANDrivers2.zip" -TargetPath $PatVWiFi2  

Expand-7zip -ArchiveFileName "$ZIPDownload\" -TargetPath $Storage 

Write-Verbose "Completed: Dave Desktop and Pat Laptop - Ethernet and WLAN Drivers..." -Verbose

Stop-Transcript

