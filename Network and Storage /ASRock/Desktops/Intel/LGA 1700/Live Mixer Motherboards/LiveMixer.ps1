$LGA1700LiveMixer = "C:\Logs\OSDCloud\ASRock\LGA1700\LiveMixer.log"
Start-Transcript -Path $LGA1700LiveMixer

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#          LGA 1700 Ethernet and Storage Driver URLs
####################################################################################

$LiveMixerEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Live%20Mixer%20Motherboards/Ethernet/ASRock-LGA1700-LiveMixer-EthernetDrivers.zip"

$LiveMixerStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Live%20Mixer%20Motherboards/Storage/ASRock-LGA1700-LiveMixer-IRST-StorageDrivers.zip"

####################################################################################
#    LGA 1700 Ethernet and Storage Driver Download Destination
####################################################################################

$LiveMixerDestination = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\LiveMixer"

####################################################################################
#   LGA 1700 Ethernet and Storage Driver Extraction Destination
####################################################################################

$LiveMixerEthernet = "$LiveMixerDestination\Ethernet"

$LiveMixerStorage = "$LiveMixerDestination\Storage"


Write-Verbose "Processing: Downloading ASRock LGA 1700 Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $LiveMixerEthernetURL -DestinationDirectory $LiveMixerDestination


Write-Verbose "Processing: Downloading ASRock LGA 1700 Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $LiveMixerStorageURL -DestinationDirectory $LiveMixerDestination


Write-Verbose "Completed: ASRock LGA1700 LiveMixer Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$LiveMixerDestination\ASRock-LGA1700-LiveMixer-EthernetDrivers.zip" -TargetPath $LiveMixerEthernet1 -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$LiveMixerDestination\ASRock-LGA1700-LiveMixer-IRST-StorageDrivers.zip" -TargetPath $LiveMixerStorage  -ErrorAction SilentlyContinue 


Write-Verbose "Completed: ZIP Files extracted successfully" -Verbose
Write-Host


Stop-Transcript
