$LGA1851Storage = "C:\Logs\OSDCloud\LGA1851\LGA1851Storage.log"
Start-Transcript -Path $LGA1851Storage

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   LGA 1851 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$LGA1851StorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Storage/IRST-StorageDriver.zip"


####################################################################################
#             LGA 1851 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$LGA1851StorageDestination = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\GenStorage"

####################################################################################
#             LGA 1851 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$LGA1851StorageDestination = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\GenStorage"

Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASUS LGA 1851 Motherboard General Storage Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $LGA1851StorageURL -DestinationDirectory $ROGDestination

Write-Verbose "ASUS LGA 1851 Motherboard General Storage Drivers downloaded" -Verbose

Write-Verbose "Processing: ZIP File extraction" -Verbose

Expand-7Zip -ArchiveFileName "$LGA1851StorageDestination\IRSTDrivers.zip" -TargetPath $LGA1851StorageDestination  -ErrorAction SilentlyContinue 

Write-Verbose "ZIP Files extracted successfully" -Verbose

Stop-Transcript
