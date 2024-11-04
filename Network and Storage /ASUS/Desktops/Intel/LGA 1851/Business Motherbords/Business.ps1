$LGA1851Business = "C:\Logs\OSDCloud\LGA1851\Business.log"
Start-Transcript -Path $LGA1851Business

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   LGA 1851 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$BusinessEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Business%20Motherbords/Ethernet%20and%20WiFi/Realtek-LANDriver.zip"
$BusinessWiFiURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Business%20Motherbords/Ethernet%20and%20WiFi/MediaTekWiFiDrivers.zip"
$BusinessStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Business%20Motherbords/Storage/IRSTDrivers.zip"


####################################################################################
#             LGA 1851 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$BusinessDestination = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\Business"

####################################################################################
#             LGA 1851 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$BusinessEthernet = "$BusinessDestination\Ethernet"
$BusinessWiFi = "$BusinessDestination\WiFi"
$BusinessStorage = "$BusinessDestination\Storage"

Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASUS LGA 1851 Business Motherboard Ethernet Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $BusinessEthernetURL -DestinationDirectory $BusinessDestination

Write-Verbose "Acquiring ASUS LGA 1851 Business Motherboard WiFi Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $BusinessWiFiURL -DestinationDirectory $BusinessDestination

Write-Verbose "Acquiring ASUS LGA 1851 Business Motherboard Storage Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $BusinessStorageURL -DestinationDirectory $BusinessDestination

Write-Verbose "ASUS LGA 1851 Business Motherboard Drivers downloaded" -Verbose

Write-Verbose "Processing: ZIP File extraction" -Verbose

Expand-7Zip -ArchiveFileName "$BusinessDestination\Realtek-LANDriver.zip" -TargetPath $BusinessEthernet  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$BusinessDestination\MediaTekWiFiDrivers.zip" -TargetPath $BusinessWiFi  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$BusinessDestination\IRSTDrivers.zip" -TargetPath $BusinessStorage  -ErrorAction SilentlyContinue 

Write-Verbose "ZIP Files extracted successfully" -Verbose

Stop-Transcript

$LGA1851VirtualDrivers = "C:\Logs\OSDCloud\ASUS\LGA1851Virtual.log"

Start-Transcript -Path $LGA1851VirtualDrivers

Write-Verbose "Processing: VMWare ESXI Virtualization Drivers" -Verbose

Write-Verbose "Processing: Proxmox Virtual I/O Virtualization Drivers" -Verbose

Write-Verbose "Processing: Hyper-V Virtualization Drivers" -Verbose

Write-Verbose "Processing: Docker Virtualization Drivers" -Verbose

Stop-Transcript

$LGA1851ExtraFiles = "C:\Logs\OSDCloud\ASUS\LGA1851ExtraFiles.log"

Start-Transcript -Path $LGA1851ExtraFiles

Write-Verbose "Processing: Adding Google Chrome portable browser" -Verbose

Write-Verbose "Processing: Adding User Profile Backup and Restore" -Verbose

Write-Verbose "Processing: VBS Scripting Support" -Verbose

Stop-Transcript
