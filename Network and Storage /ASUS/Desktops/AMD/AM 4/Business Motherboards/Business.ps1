$AM4Business = "C:\Logs\OSDCloud\ASUS\AM4\Business.log"
Start-Transcript -Path $AM4Business

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   AM4 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$BusinessEthernet1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/Business%20Motherboards/Ethernet%20and%20WiFi/Realtek-LANDrivers.zip"
$BusinessEthernet2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/Business%20Motherboards/Ethernet%20and%20WiFi/Realtek-LANDrivers-2.zip"

$BusinessStorage1URL = ""
$BusinessStorage2URL = ""

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Download Destination
####################################################################################

$BusinessDestination = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Business"

####################################################################################
#             AM4 Ethernet, WiFi and Storage Driver Extraction Destination
####################################################################################

$BusinessEthernet1 = "$BusinessDestination\Ethernet1"
$BusinessEthernet2 = "$BusinessDestination\Ethernet2"
$BusinessStorage1 = "$BusinessDestination\Storage1"
$BusinessStorage2 = "$BusinessDestination\Storage2"

Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASUS AM4 Business Motherboard Ethernet Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $BusinessEthernet1URL -DestinationDirectory $BusinessDestination
Save-WebFile -SourceUrl $BusinessEthernet2URL -DestinationDirectory $BusinessDestination

Write-Verbose "Acquiring ASUS AM4 Business Motherboard Storage Drivers from $GHURL" -Verbose

Save-WebFile -SourceUrl $BusinessStorage1URL -DestinationDirectory $BusinessDestination
Save-WebFile -SourceUrl $BusinessStorage2URL -DestinationDirectory $BusinessDestination

Write-Verbose "ASUS LGA 1700 Business Motherboard Drivers downloaded" -Verbose

Write-Verbose "Processing: ZIP File extraction" -Verbose

Expand-7Zip -ArchiveFileName "$BusinessDestination\Realtek-LANDrivers.zip" -TargetPath $BusinessEthernet1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$BusinessDestination\Realtek-LANDrivers-2.zip" -TargetPath $BusinessEthernet2  -ErrorAction SilentlyContinue 

Expand-7Zip -ArchiveFileName "$BusinessDestination\IRSTDrivers.zip" -TargetPath $BusinessStorage  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$BusinessDestination\IRSTDrivers.zip" -TargetPath $BusinessStorage  -ErrorAction SilentlyContinue 

Write-Verbose "ZIP Files extracted successfully" -Verbose

Stop-Transcript
