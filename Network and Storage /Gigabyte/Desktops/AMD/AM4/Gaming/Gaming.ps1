
$AM4Gaming = "C:\Logs\OSDCloud\Gigabyte\AM4\Gaming.log"
Start-Transcript -Path $AM4Gaming

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force




####################################################################################
#                   AM4 Ethernet Driver URLs
####################################################################################

# Gaming B350 

$GamingEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Ethernet/Gigabyte-Gaming-EthernetDrivers-B350-Win10.zip"


# Gaming B450

$GamingEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Ethernet/Gigabyte-Gaming-EthernetDrivers-B450-Win10.zip"
$GamingEthernetURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Ethernet/Gigabyte-Gaming-EthernetDrivers-B450-Win11.zip"


# Gaming B550

$GamingEthernetURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Ethernet/Gigabyte-Gaming-EthernetDrivers-B550-Win10.zip"
$GamingEthernetURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Ethernet/Gigabyte-Gaming-EthernetDrivers-B550-Win11.zip"

# Gaming X370

$GamingEthernetURL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Ethernet/Gigabyte-Gaming-EthernetDrivers-X370-Win10-Killer.zip"
$GamingEthernetURL7 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Ethernet/Gigabyte-Gaming-EthernetDrivers-X370-Win10.zip"


# Gaming X570

$GamingEthernetURL8 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Ethernet/Gigabyte-Gaming-EthernetDrivers-X570-Win10.zip"
$GamingEthernetURL9 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Ethernet/Gigabyte-Gaming-EthernetDrivers-X570-Win11.zip"


####################################################################################
#                   AM4 Storage Driver URLs
####################################################################################

$GamingStorageURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Storage/Gigabyte-Gaming-B350-RAID-NVMe-StorageDrivers.zip"
$GamingStorageURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Storage/Gigabyte-Gaming-B350-RAID-SATA-StorageDrivers.zip"
$GamingStorageURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Storage/Gigabyte-Gaming-B450-RAID-NVMe-StorageDrivers.zip"
$GamingStorageURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Storage/Gigabyte-Gaming-B450-RAID-SATA-StorageDrivers.zip"
$GamingStorageURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Storage/Gigabyte-Gaming-B550-RAID-NVMe-StorageDrivers-1.zip"
$GamingStorageURL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Storage/Gigabyte-Gaming-B550-RAID-NVMe-StorageDrivers-2.zip"
$GamingStorageURL7 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Storage/Gigabyte-Gaming-B550-RAID-SATA-StorageDrivers.zip"
$GamingStorageURL8 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Storage/Gigabyte-Gaming-X370-RAID-NVMe-StorageDrivers.zip"
$GamingStorageURL9 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Storage/Gigabyte-Gaming-X370-RAID-SATA-StorageDrivers.zip"
$GamingStorageURL10 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Storage/Gigabyte-Gaming-X570-RAID-NVMe-StorageDrivers-1-Win10-.zip"
$GamingStorageURL11 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Storage/Gigabyte-Gaming-X570-RAID-NVMe-StorageDrivers-1-Win11.zip"
$GamingStorageURL12 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Storage/Gigabyte-Gaming-X570-RAID-NVMe-StorageDrivers-2-Win10-.zip"
$GamingStorageURL13 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Storage/Gigabyte-Gaming-X570-RAID-NVMe-StorageDrivers-2-Win11.zip"
$GamingStorageURL14 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Storage/Gigabyte-Gaming-X570-RAID-SATA-StorageDrivers-Win10.zip"
$GamingStorageURL15 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Storage/Gigabyte-Gaming-X570-RAID-SATA-StorageDrivers-Win11.zip"

###########################################################################################
#        Gaming Ethernet, Bluetooth, Storage and WiFi Destination Folders
###########################################################################################

$GamingDestination =  "C:\Drivers\Motherboards\Gigabyte\AM4\Gaming"

###########################################################################################
#        Gaming Ethernet, Bluetooth, Storage and WiFi Extraction Folders
###########################################################################################

$GamingEthernet1 = "$GamingDestination\B350\Ethernet"

$GamingEthernet2 = "$GamingDestination\B450\Ethernet1"
$GamingEthernet3 = "$GamingDestination\B450\Ethernet2"


$GamingEthernet4 = "$GamingDestination\B550\Ethernet1"
$GamingEthernet5 = "$GamingDestination\B550\Ethernet2"

$GamingEthernet6 = "$GamingDestination\X370\Ethernet1"
$GamingEthernet7 = "$GamingDestination\X370\Ethernet2"

$GamingEthernet8 = "$GamingDestination\X570\Ethernet1"
$GamingEthernet9 = "$GamingDestination\X570\Ethernet2"

$GamingStorage1 = "$GamingDestination\Storage\B350\RAID\NVMe"
$GamingStorage2 = "$GamingDestination\Storage\B350\RAID\SATA"

$GamingStorage3 = "$GamingDestination\Storage\B450\RAID\NVMe"
$GamingStorage4 = "$GamingDestination\Storage\B450\RAID\SATA"

$GamingStorage5 = "$GamingDestination\Storage\B550\RAID\NVMe1"
$GamingStorage6 = "$GamingDestination\Storage\B550\RAID\NVMe2"
$GamingStorage7 = "$GamingDestination\Storage\B550\RAID\SATA"

$GamingStorage8 = "$GamingDestination\Storage\X370\RAID\NVMe"
$GamingStorage9 = "$GamingDestination\Storage\X370\RAID\SATA"

$GamingStorage10 = "$GamingDestination\Storage\X570\RAID\NVMe1"
$GamingStorage11 = "$GamingDestination\Storage\X570\RAID\NVMe2"
$GamingStorage12 = "$GamingDestination\Storage\X570\RAID\NVMe3"
$GamingStorage13 = "$GamingDestination\Storage\X570\RAID\NVMe4"
$GamingStorage14 = "$GamingDestination\Storage\X570\RAID\SATA1"
$GamingStorage15 = "$GamingDestination\Storage\X570\RAID\SATA2"


Write-Host
Write-Verbose "Processing: Gigabyte Gaming AM4 motherboard drivers..." -Verbose
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Gaming AM4 B350 Ethernet Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $GamingEthernetURL1 -DestinationDirectory $GamingDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte Gaming AM4 B350 Ethernet Drivers..." -Verbose
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Gaming AM4 B450 Ethernet Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $GamingEthernetURL2 -DestinationDirectory $GamingDestination
Save-WebFile -SourceUrl $GamingEthernetURL3 -DestinationDirectory $GamingDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte Gaming AM4 B450 Ethernet Drivers..." -Verbose
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Gaming AM4 B550 Ethernet Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $GamingEthernetURL4 -DestinationDirectory $GamingDestination
Save-WebFile -SourceUrl $GamingEthernetURL5 -DestinationDirectory $GamingDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte Gaming AM4 B550 Ethernet Drivers..." -Verbose
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Gaming AM4 X370 Ethernet Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $GamingEthernetURL6 -DestinationDirectory $GamingDestination
Save-WebFile -SourceUrl $GamingEthernetURL7 -DestinationDirectory $GamingDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte Gaming AM4 X370 Ethernet Drivers..." -Verbose
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Gaming AM4 X570 Ethernet Drivers..." -Verbose
Write-Host
Save-WebFile -SourceUrl $GamingEthernetURL8 -DestinationDirectory $GamingDestination
Save-WebFile -SourceUrl $GamingEthernetURL9 -DestinationDirectory $GamingDestination
Write-Host
Write-Verbose "Completed: Download of Gigabyte Gaming AM4 X570 Ethernet Drivers..." -Verbose
Write-Host
Write-Host
Write-Verbose "Completed: Download of ALL Gigabyte Gaming AM4 motherboard Ethernet Drivers..." -Verbose

Write-Host
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Gaming AM4 Storage Drivers -RAID NVMe..." -Verbose
Write-Host
Save-WebFile -SourceUrl $GamingStorageURL1 -DestinationDirectory $GamingDestination
Save-WebFile -SourceUrl $GamingStorageURL3 -DestinationDirectory $GamingDestination
Save-WebFile -SourceUrl $GamingStorageURL5 -DestinationDirectory $GamingDestination
Save-WebFile -SourceUrl $GamingStorageURL6 -DestinationDirectory $GamingDestination
Save-WebFile -SourceUrl $GamingStorageURL8 -DestinationDirectory $GamingDestination
Save-WebFile -SourceUrl $GamingStorageURL10 -DestinationDirectory $GamingDestination
Save-WebFile -SourceUrl $GamingStorageURL11 -DestinationDirectory $GamingDestination
Save-WebFile -SourceUrl $GamingStorageURL12 -DestinationDirectory $GamingDestination
Save-WebFile -SourceUrl $GamingStorageURL13 -DestinationDirectory $GamingDestination
Write-Host
Write-Verbose "Processing: Acquiring Gigabyte Gaming AM4 Storage Drivers -RAID SATA..." -Verbose
Write-Host
Save-WebFile -SourceUrl $GamingStorageURL2 -DestinationDirectory $GamingDestination
Save-WebFile -SourceUrl $GamingStorageURL4 -DestinationDirectory $GamingDestination
Save-WebFile -SourceUrl $GamingStorageURL7 -DestinationDirectory $GamingDestination
Save-WebFile -SourceUrl $GamingStorageURL9 -DestinationDirectory $GamingDestination
Save-WebFile -SourceUrl $GamingStorageURL14 -DestinationDirectory $GamingDestination
Save-WebFile -SourceUrl $GamingStorageURL15 -DestinationDirectory $GamingDestination
Write-Host
Write-Verbose "Completed: Download of ALL Gigabyte Gaming AM4 Storage Drivers..." -Verbose


Write-Host
Write-Host
Write-Verbose "Processing: Gigabyte Gaming AM4 motherboard drivers file extraction..." -Verbose
Write-Host
Write-Verbose "Processing: Extracting Ethernet drivers..." -Verbose

Expand-7zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-EthernetDrivers-B350-Win10.zip" -TargetPath $GamingEthernet1 
Expand-7zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-EthernetDrivers-B450-Win10.zip" -TargetPath $GamingEthernet2 
Expand-7zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-EthernetDrivers-B450-Win11.zip" -TargetPath $GamingEthernet3 
Expand-7zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-EthernetDrivers-B550-Win10.zip" -TargetPath $GamingEthernet4 
Expand-7zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-EthernetDrivers-B550-Win11.zip" -TargetPath $GamingEthernet5 
Expand-7zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-EthernetDrivers-X370-Win10-Killer.zip" -TargetPath $GamingEthernet6 
Expand-7zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-EthernetDrivers-X370-Win10.zip" -TargetPath $GamingEthernet7 
Expand-7zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-EthernetDrivers-X570-Win10.zip" -TargetPath $GamingEthernet8 
Expand-7zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-EthernetDrivers-X570-Win11.zip" -TargetPath $GamingEthernet9      

Write-Host
Write-Host
Write-Verbose "Processing: Gigabyte Gaming AM4 motherboard drivers file extraction..." -Verbose
Write-Host
Write-Verbose "Processing: Extracting NVMe Storage drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-B350-RAID-NVMe-StorageDrivers.zip" -TargetPath $GamingStorage1 
Expand-7zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-B450-RAID-NVMe-StorageDrivers.zip" -TargetPath $GamingStorage3 
Expand-7zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-B550-RAID-NVMe-StorageDrivers-1.zip" -TargetPath $GamingStorage5 
Expand-7zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-B550-RAID-NVMe-StorageDrivers-2.zip" -TargetPath $GamingStorage6 
Expand-7zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-X370-RAID-NVMe-StorageDrivers.zip" -TargetPath $GamingStorage8 
Expand-7zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-X570-RAID-NVMe-StorageDrivers-1-Win10-.zip" -TargetPath $GamingStorage10 
Expand-7zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-X570-RAID-NVMe-StorageDrivers-1-Win11.zip" -TargetPath $GamingStorage11 
Expand-7zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-X570-RAID-NVMe-StorageDrivers-2-Win10-.zip" -TargetPath $GamingStorage12 
Expand-7zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-X570-RAID-NVMe-StorageDrivers-2-Win11.zip" -TargetPath $GamingStorage13 

Write-Host
Write-Verbose "Processing: Extracting SATA Storage drivers..." -Verbose
Write-Host

Expand-7zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-B350-RAID-SATA-StorageDrivers.zip" -TargetPath $GamingStorage2 
Expand-7zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-B450-RAID-SATA-StorageDrivers.zip" -TargetPath $GamingStorage4 
Expand-7zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-B550-RAID-SATA-StorageDrivers.zip" -TargetPath $GamingStorage7 
Expand-7zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-X370-RAID-SATA-StorageDrivers.zip" -TargetPath $GamingStorage9 
Expand-7zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-X570-RAID-SATA-StorageDrivers-Win10.zip" -TargetPath $GamingStorage14 
Expand-7zip -ArchiveFileName "$GamingDestination\Gigabyte-Gaming-X570-RAID-SATA-StorageDrivers-Win11.zip" -TargetPath $GamingStorage15  


Write-Host
Write-Verbose "Completed: Extraction of ALL Gigabyte Gaming AM4 motherboard Drivers..." -Verbose

Stop-Transcript

