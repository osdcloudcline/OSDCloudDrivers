$AM5Others = "C:\Logs\OSDCloud\ASUS\AM5\Others.log"
Start-Transcript -Path $AM5Others

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################################
#                   AM5 Ethernet and Storage Driver URLs
####################################################################################

$OthersBluetooth1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/Other%20Motherboards/Bluetooth/ASUS-AM5-Others-BluetoothDrivers1.zip"
$OthersBluetooth2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/Other%20Motherboards/Bluetooth/ASUS-AM5-Others-BluetoothDrivers2.zip"

$OthersEthernet1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/Other%20Motherboards/Ethernet/ASUS-AM5-Others-EthernetDrivers1.zip"
$OthersEthernet2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/Other%20Motherboards/Ethernet/ASUS-AM5-Others-EthernetDrivers2.zip"

$OthersStorageURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/Other%20Motherboards/Storage/ASUS-AM5-Others-StorageDrivers.zip"

$OthersWLAN1URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/Other%20Motherboards/WLAN/ASUS-AM5-Others-WLANDrivers1.zip"
$OthersWLAN2URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/Other%20Motherboards/WLAN/ASUS-AM5-Others-WLANDrivers2.zip"

####################################################################################
#             AM5 Ethernet and Storage Driver Download Destination
####################################################################################

$OthersDestination = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM5\Others"

####################################################################################
#             AM5 Ethernet and Storage Driver Extraction Destination
####################################################################################

$OthersEthernet1 = "$OthersDestination\Ethernet1"
$OthersEthernet2 = "$OthersDestination\Ethernet2"

$OthersBluetooth1 = "$OthersDestination\Bluetooth1"
$OthersBluetooth2 = "$OthersDestination\Bluetooth2"

$OthersStorage = "$OthersDestination\Storage"

$OthersWLAN1 = "$OthersDestination\WLAN1"
$OthersWLAN2 = "$OthersDestination\WLAN2"

Import-Module -Name OSD -Force 

Write-Verbose "Acquiring ASUS AM5 Others Motherboard Bluetooth Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $OthersBluetooth1URL -DestinationDirectory $OthersDestination
Save-WebFile -SourceUrl $OthersBluetooth2URL -DestinationDirectory $OthersDestination

Write-Verbose "Acquiring ASUS AM5 Others Motherboard Ethernet Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $OthersEthernet1URL -DestinationDirectory $OthersDestination
Save-WebFile -SourceUrl $OthersEthernet2URL -DestinationDirectory $OthersDestination

Write-Verbose "Acquiring ASUS AM5 Others Motherboard WLAN Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $OthersWLAN1URL -DestinationDirectory $OthersDestination
Save-WebFile -SourceUrl $OthersWLAN2URL -DestinationDirectory $OthersDestination

Write-Verbose "Acquiring ASUS AM5 Others Motherboard Storage Drivers from $GHURL" -Verbose
Write-Host

Save-WebFile -SourceUrl $OthersStorageURL -DestinationDirectory $OthersDestination


Write-Verbose "ASUS AM5 Others Motherboard Drivers downloaded" -Verbose
Write-Host

Write-Verbose "Processing: ZIP File extraction" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$OthersDestination\ASUS-AM5-Others-BluetoothDrivers1.zip" -TargetPath $OthersBluetooth1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OthersDestination\ASUS-AM5-Others-BluetoothDrivers2.zip" -TargetPath $OthersBluetooth2  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OthersDestination\ASUS-AM5-Others-EthernetDrivers1.zip" -TargetPath $OthersEthernet1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OthersDestination\ASUS-AM5-Others-EthernetDrivers2.zip" -TargetPath $OthersEthernet2  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OthersDestination\ASUS-AM5-Others-WLANDrivers1.zip" -TargetPath $OthersWLAN1  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OthersDestination\ASUS-AM5-Others-WLANDrivers2.zip" -TargetPath $OthersWLAN2  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OthersDestination\ASUS-AM5-Others-StorageDrivers.zip" -TargetPath $OthersStorage  -ErrorAction SilentlyContinue 


Write-Verbose "ZIP Files extracted successfully" -Verbose
Write-Host

Stop-Transcript
