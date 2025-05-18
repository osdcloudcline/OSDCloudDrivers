$LGA1851Workstation = "C:\Logs\OSDCloud\LGA1851\Workstation.log"
Start-Transcript -Path $LGA1851Workstation

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   LGA 1851 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$WorkstationEthernet1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Workstation%20Motherboards/Ethernet/ASUS-LGA1851-WorkstationSeries-EthernetDrivers1.zip"
$WorkstationEthernet2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Workstation%20Motherboards/Ethernet/ASUS-LGA1851-WorkstationSeries-EthernetDrivers2.zip"
$WorkstationEthernet3URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Workstation%20Motherboards/Ethernet/ASUS-LGA1851-WorkstationSeries-EthernetDrivers3.zip"
$WorkstationEthernet4URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Workstation%20Motherboards/Ethernet/ASUS-LGA1851-WorkstationSeries-EthernetDrivers4.zip"
$WorkstationEthernet5URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Workstation%20Motherboards/Ethernet/ASUS-LGA1851-WorkstationSeries-EthernetDrivers5.zip"
$WorkstationEthernet6URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Workstation%20Motherboards/Ethernet/ASUS-LGA1851-WorkstationSeries-EthernetDrivers6.zip"
$WorkstationEthernet7URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Workstation%20Motherboards/Ethernet/ASUS-LGA1851-WorkstationSeries-EthernetDrivers7.zip"
$WorkstationEthernet8URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Workstation%20Motherboards/Ethernet/ASUS-LGA1851-WorkstationSeries-EthernetDrivers8.zip"
$WorkstationEthernet9URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Workstation%20Motherboards/Ethernet/ASUS-LGA1851-WorkstationSeries-EthernetDrivers9.zip"
$WorkstationEthernet10URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Workstation%20Motherboards/Ethernet/ASUS-LGA1851-WorkstationSeries-EthernetDrivers10.zip"

$WorkstationStorage1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Workstation%20Motherboards/Storage/ASUS-LGA1851-WorkstationSeries-IRST-StorageDrivers1.zip"
$WorkstationStorage2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Workstation%20Motherboards/Storage/ASUS-LGA1851-WorkstationSeries-IRST-StorageDrivers2.zip"

####################################################################################
#             LGA 1851 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$WorkstationDestination = "C:\Drivers\Motherboards\ASUS\LGA1851\Workstation"

####################################################################################
#             LGA 1851 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$WorkstationEthernet1 = "$WorkstationDestination\Ethernet1"
$WorkstationEthernet2 = "$WorkstationDestination\Ethernet2"
$WorkstationEthernet3 = "$WorkstationDestination\Ethernet3"
$WorkstationEthernet4 = "$WorkstationDestination\Ethernet4"
$WorkstationEthernet5 = "$WorkstationDestination\Ethernet5"
$WorkstationEthernet6 = "$WorkstationDestination\Ethernet6"
$WorkstationEthernet7 = "$WorkstationDestination\Ethernet7"
$WorkstationEthernet8 = "$WorkstationDestination\Ethernet8"
$WorkstationEthernet9 = "$WorkstationDestination\Ethernet9"
$WorkstationEthernet10 = "$WorkstationDestination\Ethernet10"


$WorkstationStorage1 = "$WorkstationDestination\Storage1"
$WorkstationStorage2 = "$WorkstationDestination\Storage2"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force 

Write-Verbose "Acquiring ASUS LGA 1851 Workstation Motherboard Ethernet Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $WorkstationEthernet1URL -DestinationDirectory $WorkstationDestination
Save-WebFile -SourceUrl $WorkstationEthernet2URL -DestinationDirectory $WorkstationDestination
Save-WebFile -SourceUrl $WorkstationEthernet3URL -DestinationDirectory $WorkstationDestination
Save-WebFile -SourceUrl $WorkstationEthernet4URL -DestinationDirectory $WorkstationDestination
Save-WebFile -SourceUrl $WorkstationEthernet5URL -DestinationDirectory $WorkstationDestination
Save-WebFile -SourceUrl $WorkstationEthernet6URL -DestinationDirectory $WorkstationDestination
Save-WebFile -SourceUrl $WorkstationEthernet7URL -DestinationDirectory $WorkstationDestination
Save-WebFile -SourceUrl $WorkstationEthernet8URL -DestinationDirectory $WorkstationDestination
Save-WebFile -SourceUrl $WorkstationEthernet9URL -DestinationDirectory $WorkstationDestination
Save-WebFile -SourceUrl $WorkstationEthernet10URL -DestinationDirectory $WorkstationDestination

Write-Host
Write-Verbose "Acquiring ASUS LGA 1851 Workstation Motherboard Storage Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $WorkstationStorage1URL -DestinationDirectory $WorkstationDestination
Save-WebFile -SourceUrl $WorkstationStorage2URL -DestinationDirectory $WorkstationDestination

Write-Host
Write-Verbose "ASUS LGA 1851 Workstation Motherboard Drivers downloaded" -Verbose

Write-Host 
Write-Verbose "Processing: ZIP File extraction" -Verbose

Expand-7Zip -ArchiveFileName "$WorkstationDestination\ASUS-LGA1851-WorkstationSeries-EthernetDrivers1.zip" -TargetPath $WorkstationEthernet1   
Expand-7Zip -ArchiveFileName "$WorkstationDestination\ASUS-LGA1851-WorkstationSeries-EthernetDrivers2.zip" -TargetPath $WorkstationEthernet2 
Expand-7Zip -ArchiveFileName "$WorkstationDestination\ASUS-LGA1851-WorkstationSeries-EthernetDrivers3.zip" -TargetPath $WorkstationEthernet3   
Expand-7Zip -ArchiveFileName "$WorkstationDestination\ASUS-LGA1851-WorkstationSeries-EthernetDrivers4.zip" -TargetPath $WorkstationEthernet4 
Expand-7Zip -ArchiveFileName "$WorkstationDestination\ASUS-LGA1851-WorkstationSeries-EthernetDrivers5.zip" -TargetPath $WorkstationEthernet5   
Expand-7Zip -ArchiveFileName "$WorkstationDestination\ASUS-LGA1851-WorkstationSeries-EthernetDrivers6.zip" -TargetPath $WorkstationEthernet6 
Expand-7Zip -ArchiveFileName "$WorkstationDestination\ASUS-LGA1851-WorkstationSeries-EthernetDrivers7.zip" -TargetPath $WorkstationEthernet7   
Expand-7Zip -ArchiveFileName "$WorkstationDestination\ASUS-LGA1851-WorkstationSeries-EthernetDrivers8.zip" -TargetPath $WorkstationEthernet8 
Expand-7Zip -ArchiveFileName "$WorkstationDestination\ASUS-LGA1851-WorkstationSeries-EthernetDrivers9.zip" -TargetPath $WorkstationEthernet9   
Expand-7Zip -ArchiveFileName "$WorkstationDestination\ASUS-LGA1851-WorkstationSeries-EthernetDrivers10.zip" -TargetPath $WorkstationEthernet10 

Expand-7Zip -ArchiveFileName "$WorkstationDestination\ASUS-LGA1851-WorkstationSeries-IRST-StorageDrivers1.zip" -TargetPath $WorkstationStorage1 
Expand-7Zip -ArchiveFileName "$WorkstationDestination\ASUS-LGA1851-WorkstationSeries-IRST-StorageDrivers2.zip" -TargetPath $WorkstationStorage2 

Write-Host
Write-Verbose "ZIP Files extracted successfully" -Verbose


Stop-Transcript
