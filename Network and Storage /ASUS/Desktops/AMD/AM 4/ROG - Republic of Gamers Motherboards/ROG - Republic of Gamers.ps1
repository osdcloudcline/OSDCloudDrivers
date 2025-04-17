$AM4ROG = "C:\Logs\OSDCloud\AM4\ROG.log"
Start-Transcript -Path $AM4ROG

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   AM4 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$ROGEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/ROG-Intel-i211-LANDrivers.zip"
$ROGEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/ROG-Intel-i225-LANDrivers.zip"
$ROGEthernetURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/ROG-Intel-i225-i226-LANDrivers.zip"
$ROGEthernetURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/ROG-Realtek1-LANDrivers.zip"
$ROGEthernetURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/ROG-Realtek2-LANDrivers.zip"

$ROGWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/ROG-Intel1-WiFiDrivers.zip"
$ROGWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/ROG-Intel2-WiFiDrivers.zip"
$ROGWiFiURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/ROG-Intel3-WiFiDrivers.zip"
$ROGWiFiURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/ROG-MediaTech-WiFiDrivers.zip"

$ROGStorageURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Storage/ROG-NVMe-StorageDrivers.zip"
$ROGStorageURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Storage/ROG-RAID-SATA-StorageDrivers.zip"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$ROGDestination = "C:\Drivers\Motherboards\ASUS\AM4\ROG"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$ROGEthernet1 = "$ROGDestination\Ethernet1"
$ROGEthernet2 = "$ROGDestination\Ethernet2"
$ROGEthernet3 = "$ROGDestination\Ethernet3"
$ROGEthernet4 = "$ROGDestination\Ethernet4"
$ROGEthernet5 = "$ROGDestination\Ethernet5"

$ROGWiFi1 = "$ROGDestination\WiFi1"
$ROGWiFi2 = "$ROGDestination\WiFi2"
$ROGWiFi3 = "$ROGDestination\WiFi3"
$ROGWiFi4 = "$ROGDestination\WiFi4"

$ROGStorage1 = "$ROGDestination\Storage1"
$ROGStorage2 = "$ROGDestination\Storage2"

Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASUS AM4 ROG - Republic of Gamers Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $ROGEthernetURL1 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGEthernetURL2 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGEthernetURL3 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGEthernetURL4 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGEthernetURL5 -DestinationDirectory $ROGDestination

Write-Verbose "Acquiring ASUS AM4 ROG - Republic of Gamers Motherboard WiFi Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $ROGWiFiURL1 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFiURL2 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFiURL3 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFiURL4 -DestinationDirectory $ROGDestination

Write-Verbose "Acquiring ASUS AM4 ROG - Republic of Gamers Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $ROGStorageURL1 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGStorageURL2 -DestinationDirectory $ROGDestination

Write-Verbose "ASUS AM4 ROG - Republic of Gamers Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$ROGDestination\ROG-Intel-i211-LANDrivers.zip" -TargetPath $ROGEthernet1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ROGDestination\ROG-Intel-i225-LANDrivers.zip" -TargetPath $ROGEthernet2  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ROGDestination\ROG-Intel-i225-i226-LANDrivers.zip" -TargetPath $ROGEthernet3  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ROGDestination\ROG-Realtek1-LANDrivers.zip" -TargetPath $ROGEthernet4  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ROGDestination\ROG-Realtek2-LANDrivers.zip" -TargetPath $ROGEthernet5  -ErrorAction SilentlyContinue 

Expand-7Zip -ArchiveFileName "$ROGDestination\ROG-Intel1-WiFiDrivers.zip" -TargetPath $ROGWiFi1  -ErrorAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$ROGDestination\ROG-Intel2-WiFiDrivers.zip" -TargetPath $ROGWiFi2  -ErrorAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$ROGDestination\ROG-Intel3-WiFiDrivers.zip" -TargetPath $ROGWiFi3  -ErrorAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$ROGDestination\ROG-MediaTech-WiFiDrivers.zip" -TargetPath $ROGWiFi4  -ErrorAction SilentlyContinue 

Expand-7Zip -ArchiveFileName "$ROGDestination\ROG-NVMe-StorageDrivers.zip" -TargetPath $ROGStorage1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ROGDestination\ROG-RAID-SATA-StorageDrivers.zip" -TargetPath $ROGStorage2  -ErrorAction SilentlyContinue 


Write-Verbose "ZIP Files extracted successfully" -Verbose


Stop-Transcript


