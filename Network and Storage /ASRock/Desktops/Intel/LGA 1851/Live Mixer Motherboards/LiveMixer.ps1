$LGA1851LiveMixer = "C:\Logs\OSDCloud\ASRock\LGA1851\LiveMixer.log"
Start-Transcript -Path $LGA1851LiveMixer

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#          LGA 1851 Ethernet and Storage Driver URLs
####################################################################################

$LiveMixerEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/Live%20Mixer%20Motherboards/Ethernet/ASRock-LGA1851-LiveMixer-Realtek-EthernetDrivers.zip"

$LiveMixerStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/Live%20Mixer%20Motherboards/Storage/ASRock-LGA1851-LiveMixer-IRST-StorageDrivers.zip"

$LiveMixerWLANURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/Live%20Mixer%20Motherboards/WLAN/ASRock-LGA1851-LiveMixer-WLANDrivers.zip"

####################################################################################
#    LGA 1851 Ethernet and Storage Driver Download Destination
####################################################################################

$LiveMixerDestination = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\LiveMixer"

####################################################################################
#   LGA 1851 Ethernet and Storage Driver Extraction Destination
####################################################################################

$LiveMixerEthernet = "$LiveMixerDestination\Ethernet"

$LiveMixerWLAN = "$LiveMixerDestination\WLAN"

$LiveMixerStorage = "$LiveMixerDestination\Storage"

Write-Verbose "Processing: Downloading ASRock LGA 1851 Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $LiveMixerEthernetURL -DestinationDirectory $LiveMixerDestination

Write-Verbose "Processing: Downloading ASRock LGA 1851 Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $LiveMixerStorageURL -DestinationDirectory $LiveMixerDestination

Write-Verbose "Processing: Downloading ASRock LGA 1851 Motherboard WLAN Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $LiveMixerWLANURL -DestinationDirectory $LiveMixerDestination

Write-Verbose "Completed: ASRock LGA1851 LiveMixer Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$LiveMixerDestination\ASRock-LGA1851-LiveMixer-IRST-StorageDrivers.zip" -TargetPath $LiveMixerStorage   
Expand-7Zip -ArchiveFileName "$LiveMixerDestination\ASRock-LGA1851-LiveMixer-Realtek-EthernetDrivers.zip" -TargetPath $LiveMixerEthernet  
Expand-7Zip -ArchiveFileName "$LiveMixerDestination\ASRock-LGA1851-LiveMixer-WLANDrivers.zip" -TargetPath $LiveMixerWLAN

Write-Verbose "Completed: ZIP Files extracted successfully" -Verbose
Write-Host


Stop-Transcript

