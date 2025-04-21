$LGA1700PRO = "C:\Logs\OSDCloud\ASRock\LGA1700\PRO.log"
Start-Transcript -Path $LGA1700PRO

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#          LGA 1700 Ethernet and Storage Driver URLs
####################################################################################

$PROEthernet1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/PRO%20Motherboards/Ethernet/ASRock-LGA1700-PRO-Killer-EthernetDrivers1.zip"
$PROEthernet2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/PRO%20Motherboards/Ethernet/ASRock-LGA1700-PRO-Killer-EthernetDrivers2.zip"
$PROEthernet3URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/PRO%20Motherboards/Ethernet/ASRock-LGA1700-PRO-Killer-EthernetDrivers3.zip"
$PROEthernet4URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/PRO%20Motherboards/Ethernet/ASRock-LGA1700-PRO-Killer-EthernetDrivers4.zip"
$PROEthernet5URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/PRO%20Motherboards/Ethernet/ASRock-LGA1700-PRO-Killer-EthernetDrivers5.zip"
$PROEthernet6URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/PRO%20Motherboards/Ethernet/ASRock-LGA1700-PRO-Realtek-EthernetDrivers.zip"

$PROStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/PRO%20Motherboards/Storage/ASRock-LGA1700-PRO-IRST-StorageDrivers.zip"

####################################################################################
#    LGA 1700 Ethernet and Storage Driver Download Destination
####################################################################################

$PRODestination = "C:\Drivers\Motherboards\ASRock\LGA1700\PRO"

####################################################################################
#   LGA 1700 Ethernet and Storage Driver Extraction Destination
####################################################################################

$PROEthernet1 = "$PRODestination\Ethernet1"
$PROEthernet2 = "$PRODestination\Ethernet2"
$PROEthernet3 = "$PRODestination\Ethernet3"
$PROEthernet4 = "$PRODestination\Ethernet4"
$PROEthernet5 = "$PRODestination\Ethernet5"
$PROEthernet6 = "$PRODestination\Ethernet6"

$PROStorage = "$PRODestination\Storage"


Write-Verbose "Processing: Downloading ASRock LGA 1700 Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PROEthernet1URL -DestinationDirectory $PRODestination
Save-WebFile -SourceUrl $PROEthernet2URL -DestinationDirectory $PRODestination
Save-WebFile -SourceUrl $PROEthernet3URL -DestinationDirectory $PRODestination
Save-WebFile -SourceUrl $PROEthernet4URL -DestinationDirectory $PRODestination
Save-WebFile -SourceUrl $PROEthernet5URL -DestinationDirectory $PRODestination
Save-WebFile -SourceUrl $PROEthernet6URL -DestinationDirectory $PRODestination

Write-Verbose "Processing: Downloading ASRock LGA 1700 Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $PROStorageURL -DestinationDirectory $PRODestination

Write-Verbose "Completed: ASRock LGA1700 PRO Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-LGA1700-PRO-Killer-EthernetDrivers1.zip" -TargetPath $PROEthernet1  
Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-LGA1700-PRO-Killer-EthernetDrivers2.zip" -TargetPath $PROEthernet2  
Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-LGA1700-PRO-Killer-EthernetDrivers3.zip" -TargetPath $PROEthernet3  
Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-LGA1700-PRO-Killer-EthernetDrivers4.zip" -TargetPath $PROEthernet4  
Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-LGA1700-PRO-Killer-EthernetDrivers5.zip" -TargetPath $PROEthernet5  
Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-LGA1700-PRO-Realtek-EthernetDrivers.zip" -TargetPath $PROEthernet6  
Expand-7Zip -ArchiveFileName "$PRODestination\ASRock-LGA1700-PRO-IRST-StorageDrivers.zip" -TargetPath $PROStorage  

Write-Verbose "Completed: ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
