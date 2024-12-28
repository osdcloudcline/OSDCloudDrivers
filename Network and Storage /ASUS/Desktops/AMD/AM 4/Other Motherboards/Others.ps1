$AM4Other = "C:\Logs\OSDCloud\ASUS\AM4\Other.log"
Start-Transcript -Path $AM4Other

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   AM4 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$OtherEthernetURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/Other%20Motherboards/Ethernet%20and%20WiFi/Realtek-LANDrivers.zip"


$OtherStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/Other%20Motherboards/Storage/RAID-StorageDrivers-NVMe.zip"


####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$OtherDestination = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Other"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$OtherEthernet = "$OtherDestination\Ethernet"
$OtherStorage = "$OtherDestination\Storage"


Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASUS AM4 Other Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $OtherEthernetURL -DestinationDirectory $OtherDestination

Write-Verbose "Acquiring ASUS AM4 Other Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $OtherStorageURL -DestinationDirectory $OtherDestination

Write-Verbose "ASUS AM4 Other Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$OtherDestination\Realtek-LANDrivers.zip" -TargetPath $OtherEthernet  -ErrorAction SilentlyContinue 

Expand-7Zip -ArchiveFileName "$OtherDestination\RAID-StorageDrivers-NVMe.zip" -TargetPath $OtherStorage  -ErrorAction SilentlyContinue 


Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript


