$AM5UltraDurable = "C:\Logs\OSDCloud\Gigabyte\AM5\UD-UltraDurable.log"
Start-Transcript -Path $AM5UltraDurable

Get-Date

$GHURL = "https://github.com/osdcloudcline/OSDCloudDrivers"

####################################################################################
#                   Ultra Durable AM5 Bluetooth Driver URLs
####################################################################################

# Ultra Durable A620 - Bluetooth

$UDBluetoothURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/UD%20-%20Ultra%20Durable/A620/Bluetooth/Gigabyte-AM5-UltraDurable-A620-BluetoothDrivers1.zip"
$UDBluetoothURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/UD%20-%20Ultra%20Durable/A620/Bluetooth/Gigabyte-AM5-UltraDurable-A620-BluetoothDrivers2.zip"


# Ultra Durable B650 - Bluetooth

$UDBluetoothURL3 = ""
$UDBluetoothURL4 = ""



####################################################################################
#                   Ultra Durable AM5 Ethernet Driver URLs
####################################################################################

# Ultra Durable A620 - Ethernet

$UDEthernetURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/UD%20-%20Ultra%20Durable/A620/Ethernet/Gigabyte-AM5-UltraDurable-A620-EthernetDrivers1.zip"
$UDEthernetURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/UD%20-%20Ultra%20Durable/A620/Ethernet/Gigabyte-AM5-UltraDurable-A620-EthernetDrivers2.zip"

# Ultra Durable B650 - Ethernet

$UDEthernetURL3 = ""
$UDEthernetURL4 = ""


####################################################################################
#                   Ultra Durable AM5 WiFi Driver URLs
####################################################################################

# Ultra Durable A620 - WiFi

$UDWiFiURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/UD%20-%20Ultra%20Durable/A620/WiFi/Gigabyte-AM5-UltraDurable-A620-WLANDrivers1.zip"
$UDWiFiURL2 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/UD%20-%20Ultra%20Durable/A620/WiFi/Gigabyte-AM5-UltraDurable-A620-WLANDrivers2.zip"

# Ultra Durable B650 - WiFi

$UDWiFiURL3 = ""
$UDWiFiURL4 = ""


####################################################################################
#                   Ultra Durable AM5 Storage Driver URLs
####################################################################################

# Ultra Durable A620 - Storage

$UDStorageURL1 = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/UD%20-%20Ultra%20Durable/A620/Storage/Gigabyte-AM5-UltraDurable-A620-NVMe-RAID-StorageDrivers.zip"

# Ultra Durable B650 - Storage

$UDStorageURL2 = ""

###########################################################################################
#        Ultra Durable AM5 Ethernet, Bluetooth, Storage and WiFi Destination Folders
###########################################################################################

$UDDestination =  "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable"
$UDDestinationA620 =  "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\ZIP\A620"
$UDDestinationB650 =  "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\ZIP\B650"


###########################################################################################
#        Ultra Durable Ethernet, Bluetooth, Storage and WiFi Extraction Folders
###########################################################################################

# Ultra Durable A620 - Bluetooth

$UDBluetooth1 = "$UDDestination\A620\Bluetooth1"
$UDBluetooth2 = "$UDDestination\A620\Bluetooth2"

# Ultra Durable B650 - Bluetooth

$UDBluetooth3 = "$UDDestination\B650\Bluetooth1"
$UDBluetooth4 = "$UDDestination\B650\Bluetooth2"

# Ultra Durable A620 - Ethernet

$UDEthernet1 = "$UDDestination\A620\Ethernet1"
$UDEthernet2 = "$UDDestination\A620\Ethernet2"

# Ultra Durable B650 - Ethernet

$UDEthernet3 = "$UDDestination\B650\Ethernet1"
$UDEthernet4 = "$UDDestination\B650\Ethernet2"

# Ultra Durable A620 - Storage

$UDStorage1 = "$UDDestination\A620\Storage\RAID\NVMe"

# Ultra Durable B650 - Storage

$UDStorage2 = "$UDDestination\B650\Storage\RAID\NVMe"

# Ultra Durable A620 - WiFi

$UDWiFi1 = "$UDDestination\A620\WiFi1"
$UDWiFi2 = "$UDDestination\A620\WiFi2"

# Ultra Durable B650 - WiFi

$UDWiFi3 = "$UDDestination\B650\WiFi1"
$UDWiFi4 = "$UDDestination\B650\WiFi2"


Write-Host
Write-Verbose "Processing: Gigabyte Ultra Durable AM5 motherboard drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM5 A620 Ethernet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $UDEthernetURL1 -DestinationDirectory $UDDestinationA620
Save-WebFile -SourceUrl $UDEthernetURL2 -DestinationDirectory $UDDestinationA620

Write-Host
Write-Verbose "Completed: Download of Gigabyte Ultra Durable AM5 A620 Ethernet Drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM5 A620 WiFi Drivers..." -Verbose

Save-WebFile -SourceUrl $UDWiFiURL1 -DestinationDirectory $UDDestinationA620
Save-WebFile -SourceUrl $UDWiFiURL2 -DestinationDirectory $UDDestinationA620

Write-Host
Write-Verbose "Completed: Download of Gigabyte Ultra Durable AM5 A620 WiFi WLAN Drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM5 A620 Bluetooth Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $UDBluetoothURL1 -DestinationDirectory $UDDestinationA620
Save-WebFile -SourceUrl $UDBluetoothURL2 -DestinationDirectory $UDDestinationA620

Write-Host
Write-Verbose "Completed: Download of Gigabyte Ultra Durable AM5 A620 Bluetooth Drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM5 A620 Storage Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $UDStorageURL1 -DestinationDirectory $UDDestinationA620


Write-Host
Write-Verbose "Completed: Download of Gigabyte Ultra Durable AM5 A620 Storage Drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM5 B650 Ethernet Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $UDEthernetURL3 -DestinationDirectory $UDDestinationB650
Save-WebFile -SourceUrl $UDEthernetURL4 -DestinationDirectory $UDDestinationB650

Write-Host
Write-Verbose "Completed: Download of Gigabyte Ultra Durable AM5 B650 Ethernet Drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM5 B650 WiFi Drivers..." -Verbose

Save-WebFile -SourceUrl $UDWiFiURL3 -DestinationDirectory $UDDestinationB650
Save-WebFile -SourceUrl $UDWiFiURL4 -DestinationDirectory $UDDestinationB650

Write-Host
Write-Verbose "Completed: Download of Gigabyte Ultra Durable AM5 B650 WiFi WLAN Drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM5 B650 Bluetooth Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $UDBluetoothURL3 -DestinationDirectory $UDDestinationB650
Save-WebFile -SourceUrl $UDBluetoothURL4 -DestinationDirectory $UDDestinationB650

Write-Host
Write-Verbose "Completed: Download of Gigabyte Ultra Durable AM5 B650 Bluetooth Drivers..." -Verbose
Write-Host

Write-Verbose "Processing: Acquiring Gigabyte Ultra Durable AM5 B650 Storage Drivers..." -Verbose
Write-Host

Save-WebFile -SourceUrl $UDStorageURL2 -DestinationDirectory $UDDestinationB650


Write-Host
Write-Verbose "Completed: Download of Gigabyte Ultra Durable AM5 B650 Storage Drivers..." -Verbose
Write-Host
