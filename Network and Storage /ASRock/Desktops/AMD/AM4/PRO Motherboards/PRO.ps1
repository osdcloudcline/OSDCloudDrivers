$AM4PRO = "C:\Logs\OSDCloud\ASRock\AM4\PRO.log"
Start-Transcript -Path $AM4PRO

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"


####################################################################################
#                   AM4 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$PROEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/PRO%20Motherboards/Ethernet%20and%20WiFi/ASRock-PRO-Intel-LANDrivers.zip"
$PROEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/PRO%20Motherboards/Ethernet%20and%20WiFi/ASRock-PRO-Realtek-LANDrivers1.zip"
$PROEthernetURL3 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Extreme%20Motherboards/Ethernet%20and%20WiFi/ASRock-Extreme-Intel-NetworkDrivers.zip"
$PROEthernetURL4 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Extreme%20Motherboards/Ethernet%20and%20WiFi/ASRock-Extreme-Intel-NetworkDrivers.zip"
$PROEthernetURL5 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Extreme%20Motherboards/Ethernet%20and%20WiFi/ASRock-Extreme-Intel-NetworkDrivers.zip"

$PROStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Extreme%20Motherboards/Storage/ASRock-Extreme-NVMe-StorageDriver.zip"


####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$PRODestination = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PRO"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$PROEthernet1 = "$PRODestination\Ethernet1"
$PROEthernet2 = "$PRODestination\Ethernet2"
$PROEthernet3 = "$PRODestination\Ethernet3"
$PROEthernet4 = "$PRODestination\Ethernet4"
$PROEthernet5 = "$PRODestination\Ethernet5"

$PROStorage = "$PRODestination\Storage"


Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASRock AM4 PRO Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PROEthernetURL1 -DestinationDirectory $PRODestination
Save-WebFile -SourceUrl $PROEthernetURL2 -DestinationDirectory $PRODestination
Save-WebFile -SourceUrl $PROEthernetURL3 -DestinationDirectory $PRODestination
Save-WebFile -SourceUrl $PROEthernetURL4 -DestinationDirectory $PRODestination
Save-WebFile -SourceUrl $PROEthernetURL5 -DestinationDirectory $PRODestination


Write-Verbose "Acquiring ASRock AM4 PRO Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PROStorageURL -DestinationDirectory $PRODestination


Write-Verbose "ASRock AM4 PRO Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-PRO-Intel-LANDrivers.zip -TargetPath $PROEthernet1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-PRO-Realtek-LANDrivers1.zip" -TargetPath $PROEthernet2  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-PRO-Realtek-LANDrivers2.zip" -TargetPath $PROEthernet3  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-PRO-Realtek-LANDrivers3.zip" -TargetPath $PROEthernet4  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-PRO-Realtek-LANDrivers4.zip" -TargetPath $PROEthernet5  -ErrorAction SilentlyContinue 

Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-Extreme-NVMe-StorageDriver.zip" -TargetPath $PROStorage  -ErrorAction SilentlyContinue 


Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
