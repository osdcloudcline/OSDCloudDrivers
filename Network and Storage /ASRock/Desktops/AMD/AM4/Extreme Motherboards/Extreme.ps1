$AM4Extreme = "C:\Logs\OSDCloud\ASRock\AM4\Extreme.log"
Start-Transcript -Path $AM4Extreme

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   AM4 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$ExtremeEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Extreme%20Motherboards/Ethernet%20and%20WiFi/ASRock-Extreme-Intel-NetworkDrivers.zip"


$ExtremeStorage1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Extreme%20Motherboards/Storage/ASRock-Extreme-NVMe-StorageDriver.zip"
$ExtremeStorage2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Extreme%20Motherboards/Storage/ASRock-Extreme-NVMe2-StorageDrivers.zip"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$ExtremeDestination = "C:\Drivers\Motherboards\ASRock\AM4\Extreme"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$ExtremeEthernet = "$ExtremeDestination\Ethernet"

$ExtremeStorage1 = "$ExtremeDestination\Storage1"
$ExtremeStorage2 = "$ExtremeDestination\Storage2"

Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASRock AM4 Extreme Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $ExtremeEthernetURL -DestinationDirectory $ExtremeDestination


Write-Verbose "Acquiring ASRock AM4 Extreme Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $ExtremeStorage1URL -DestinationDirectory $ExtremeDestination
Save-WebFile -SourceUrl $ExtremeStorage2URL -DestinationDirectory $ExtremeDestination

Write-Verbose "ASRock AM4 Extreme Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$ExtremeDestination\ASRock-Extreme-Intel-NetworkDrivers.zip" -TargetPath $ExtremeEthernet  
Expand-7Zip -ArchiveFileName "$ExtremeDestination\ASRock-Extreme-NVMe-StorageDriver.zip" -TargetPath $ExtremeStorage1  
Expand-7Zip -ArchiveFileName "$ExtremeDestination\ASRock-Extreme-NVMe2-StorageDrivers.zip" -TargetPath $ExtremeStorage2  

Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
