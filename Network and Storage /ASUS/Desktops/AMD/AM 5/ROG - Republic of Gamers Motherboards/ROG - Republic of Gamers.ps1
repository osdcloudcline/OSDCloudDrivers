$AM5ROG = "C:\Logs\OSDCloud\AM5\ROG.log"
Start-Transcript -Path $AM5ROG

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   AM5 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$ROGEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet/ASUS-AM5-ROG-EthernetDrivers1.zip"
$ROGEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet/ASUS-AM5-ROG-EthernetDrivers2.zip"
$ROGEthernetURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet/ASUS-AM5-ROG-EthernetDrivers3.zip"
$ROGEthernetURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet/ASUS-AM5-ROG-EthernetDrivers4.zip"
$ROGEthernetURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet/ASUS-AM5-ROG-EthernetDrivers5.zip"
$ROGEthernetURL6 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet/ASUS-AM5-ROG-EthernetDrivers6.zip"
$ROGEthernetURL7 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Ethernet/ASUS-AM5-ROG-EthernetDrivers7.zip"


$ROGWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/ROG%20-%20Republic%20of%20Gamers%20Motherboards/WLAN/ASUS-AM5-ROG-WLANDrivers1.zip"
$ROGWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/ROG%20-%20Republic%20of%20Gamers%20Motherboards/WLAN/ASUS-AM5-ROG-WLANDrivers2.zip"
$ROGWiFiURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/ROG%20-%20Republic%20of%20Gamers%20Motherboards/WLAN/ASUS-AM5-ROG-WLANDrivers3.zip"
$ROGWiFiURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/ROG%20-%20Republic%20of%20Gamers%20Motherboards/WLAN/ASUS-AM5-ROG-WLANDrivers4.zip"

$ROGBluetoothURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Bluetooth/ASUS-AM5-ROG-BluetoothDrivers.zip"

$ROGStorageURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/ROG%20-%20Republic%20of%20Gamers%20Motherboards/Storage/ASUS-AM5-ROG-RAID-StorageDrivers.zip"


####################################################################################
#             AM5 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$ROGDestination = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM5\ROG"

####################################################################################
#             AM5 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$ROGEthernet1 = "$ROGDestination\Ethernet1"
$ROGEthernet2 = "$ROGDestination\Ethernet2"
$ROGEthernet3 = "$ROGDestination\Ethernet3"
$ROGEthernet4 = "$ROGDestination\Ethernet4"
$ROGEthernet5 = "$ROGDestination\Ethernet5"
$ROGEthernet6 = "$ROGDestination\Ethernet6"
$ROGEthernet7 = "$ROGDestination\Ethernet7"

$ROGWiFi1 = "$ROGDestination\WiFi1"
$ROGWiFi2 = "$ROGDestination\WiFi2"
$ROGWiFi3 = "$ROGDestination\WiFi3"
$ROGWiFi4 = "$ROGDestination\WiFi4"

$ROGBluetooth = "$ROGDestination\Bluetooth"

$ROGStorage1 = "$ROGDestination\Storage"


Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASUS AM5 ROG - Republic of Gamers Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $ROGEthernetURL1 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGEthernetURL2 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGEthernetURL3 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGEthernetURL4 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGEthernetURL5 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGEthernetURL6 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGEthernetURL7 -DestinationDirectory $ROGDestination

Write-Verbose "Acquiring ASUS AM5 ROG - Republic of Gamers Motherboard WiFi Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $ROGWiFiURL1 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFiURL2 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFiURL3 -DestinationDirectory $ROGDestination
Save-WebFile -SourceUrl $ROGWiFiURL4 -DestinationDirectory $ROGDestination

Write-Verbose "Acquiring ASUS AM5 ROG - Republic of Gamers Motherboard Bluetooth Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $ROGBluetoothURL -DestinationDirectory $ROGDestination


Write-Verbose "Acquiring ASUS AM5 ROG - Republic of Gamers Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $ROGStorageURL1 -DestinationDirectory $ROGDestination


Write-Verbose "ASUS AM5 ROG - Republic of Gamers Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$ROGDestination\ASUS-AM5-ROG-EthernetDrivers1.zip" -TargetPath $ROGEthernet1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ROGDestination\ASUS-AM5-ROG-EthernetDrivers2.zip" -TargetPath $ROGEthernet2  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ROGDestination\ASUS-AM5-ROG-EthernetDrivers3.zip" -TargetPath $ROGEthernet3  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ROGDestination\ASUS-AM5-ROG-EthernetDrivers4.zip" -TargetPath $ROGEthernet4  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ROGDestination\ASUS-AM5-ROG-EthernetDrivers5.zip" -TargetPath $ROGEthernet5  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ROGDestination\ASUS-AM5-ROG-EthernetDrivers6.zip" -TargetPath $ROGEthernet6  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ROGDestination\ASUS-AM5-ROG-EthernetDrivers7.zip" -TargetPath $ROGEthernet7  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ROGDestination\ASUS-AM5-ROG-WLANDrivers1.zip" -TargetPath $ROGWiFi1  -ErrorAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$ROGDestination\ASUS-AM5-ROG-WLANDrivers2.zip" -TargetPath $ROGWiFi2  -ErrorAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$ROGDestination\ASUS-AM5-ROG-WLANDrivers3.zip" -TargetPath $ROGWiFi3  -ErrorAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$ROGDestination\ASUS-AM5-ROG-WLANDrivers4.zip" -TargetPath $ROGWiFi4  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$ROGDestination\ASUS-AM5-ROG-BluetoothDrivers.zip" -TargetPath $ROGBluetooth  -ErrorAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$ROGDestination\ASUS-AM5-ROG-RAID-StorageDrivers.zip" -TargetPath $ROGStorage1  -ErrorAction SilentlyContinue 


Write-Verbose "ZIP Files extracted successfully" -Verbose


Stop-Transcript
