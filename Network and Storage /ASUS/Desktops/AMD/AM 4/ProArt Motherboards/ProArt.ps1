$AM4ProArt = "C:\Logs\OSDCloud\AM4\ProArt.log"
Start-Transcript -Path $AM4ProArt

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   AM4 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$ProArtEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/ProArt%20Motherboards/Ethernet%20and%20WiFi/ProArt-LANDriver.zip"

$ProArtWiFiURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/ProArt%20Motherboards/Ethernet%20and%20WiFi/ProArt-WiFiDrivers.zip"

$ProArtStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/ProArt%20Motherboards/Storage/ProArt-NVMe-RAIDStorageDrivers.zip"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$ProArtDestination = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ProArt"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$ProArtEthernet = "$ProArtDestination\Ethernet"

$ProArtWiFi = "$ProArtDestination\WiFi"

$ProArtStorage = "$ProArtDestination\Storage"


Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASUS AM4 ProArt Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $ProArtEthernetURL -DestinationDirectory $ProArtDestination

Write-Verbose "Acquiring ASUS AM4 ProArt Motherboard WiFi Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $ProArtWiFiURL -DestinationDirectory $ProArtDestination

Write-Verbose "Acquiring ASUS AM4 ProArt Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $ProArtStorageURL -DestinationDirectory $ProArtDestination


Write-Verbose "ASUS AM4 ProArt Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$ProArtDestination\ProArt-LANDriver.zip" -TargetPath $ProArtEthernet  -ErrorAction SilentlyContinue 

Expand-7Zip -ArchiveFileName "$ProArtDestination\ProArt-WiFiDrivers.zip" -TargetPath $ProArtWiFi  -ErrorAction SilentlyContinue 

Expand-7Zip -ArchiveFileName "$ProArtDestination\ProArt-NVMe-RAIDStorageDrivers.zip" -TargetPath $ProArtStorage  -ErrorAction SilentlyContinue 

Write-Verbose "ZIP Files extracted successfully" -Verbose

Stop-Transcript

$AM4VirtualDrivers = "C:\Logs\OSDCloud\ASUS\AM4Virtual.log"

Start-Transcript -Path $AM4VirtualDrivers

Write-Verbose "Processing: VMWare ESXI Virtualization Drivers" -Verbose
Write-Host

Write-Verbose "Processing: Hyper-V Virtualization Drivers" -Verbose
Write-Host

Write-Verbose "Processing: VMWare Workstation Professional Virtualization Drivers" -Verbose
Write-Host

Write-Verbose "Processing: Proxmox Virtual I/O Virtualization Drivers" -Verbose
Write-Host

Write-Verbose "Processing: Docker Virtualization Drivers" -Verbose
Write-Host

Stop-Transcript

$ASUSOSDCloudISOMain = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/CreateISO-Main.ps1")
Invoke-Expression $($ASUSOSDCloudISOMain.Content)
