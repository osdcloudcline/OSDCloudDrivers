$AM4Business = "C:\Logs\OSDCloud\ASUS\AM4\Business.log"
Start-Transcript -Path $AM4Business

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   AM4 Ethernet, WiFi and Storage Driver URLs
####################################################################################

$BusinessEthernet1URL = ""
$BusinessEthernet2URL = ""

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

