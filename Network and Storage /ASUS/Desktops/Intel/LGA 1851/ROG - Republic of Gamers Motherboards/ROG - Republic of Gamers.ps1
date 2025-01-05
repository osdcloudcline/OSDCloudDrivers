$LGA1851ROG = "C:\Logs\OSDCloud\ASUS\LGA1851\ROG\ROG.log"
Start-Transcript -Path $LGA1851ROG

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   LGA 1851 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$ROGEthernet1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/Intel-I226-LANDriver.zip"
$ROGEthernet2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/Marvell-LANDriver.zip"
$ROGEtherne31URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/RealTek-LANDriver-1126.zip"
$ROGWiFi1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-1.zip"
$ROGWiFi2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-2.zip"
$ROGWiFi3URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-3.zip"
$ROGWiFi4URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/Intel-WiFiDrivers-4.zip"
$ROGWiFi5URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet%20and%20WiFi/MK-WiFiDriver.zip"
$ROGStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Storage/IRST-StorageDriver.zip"


####################################################################################
#             LGA 1851 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$ROGDestination = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\ROG"

####################################################################################
#             LGA 1851 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$ROGEthernet1 = "$ROGDestination\Ethernet1"
$ROGEthernet2 = "$ROGDestination\Ethernet2"
$ROGEthernet3 = "$ROGDestination\Ethernet3"
$ROGWiFi1 = "$ROGDestination\WiFi1"
$ROGWiFi2 = "$ROGDestination\WiFi2"
$ROGWiFi3 = "$ROGDestination\WiFi3"
$ROGWiFi4 = "$ROGDestination\WiFi4"
$ROGWiFi5 = "$ROGDestination\WiFi5"
$ROGStorage = "$ROGDestination\Storage"

Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASUS LGA 1851 ROG Motherboard Ethernet Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $ROGEthernet1URL -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGEthernet2URL -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGEthernet3URL -DestinationDirectory $ROGDestination

Write-Verbose "Acquiring ASUS LGA 1851 ROG Motherboard WiFi Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $ROGWiFi1URL -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFi2URL -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFi3URL -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFi4URL -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFi5URL -DestinationDirectory $ROGDestination

Write-Verbose "Acquiring ASUS LGA 1851 ROG Motherboard Storage Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $ROGStorageURL -DestinationDirectory $ROGDestination

Write-Verbose "ASUS LGA 1851 ROG Motherboard Drivers downloaded" -Verbose

Write-Verbose "Processing: ZIP File extraction" -Verbose

Expand-7Zip -ArchiveFileName "$ROGDestination\Intel-I226-LANDriver.zip" -TargetPath $ROGEthernet1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ROGDestination\Marvell-LANDriver.zip" -TargetPath $ROGEthernet2  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ROGDestination\RealTek-LANDriver-1126.zip" -TargetPath $ROGEthernet3  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ROGDestination\Intel-WiFiDrivers-1.zip" -TargetPath $ROGWiFi1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ROGDestination\Intel-WiFiDrivers-2.zip" -TargetPath $ROGWiFi2  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ROGDestination\Intel-WiFiDrivers-3.zip" -TargetPath $ROGWiFi3  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ROGDestination\Intel-WiFiDrivers-4.zip" -TargetPath $ROGWiFi4  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ROGDestination\MK-WiFiDriver.zip" -TargetPath $ROGWiFi5  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ROGDestination\IRST-StorageDriver.zip" -TargetPath $ROGStorage  -ErrorAction SilentlyContinue 

Write-Verbose "ZIP Files extracted successfully" -Verbose


Stop-Transcript


