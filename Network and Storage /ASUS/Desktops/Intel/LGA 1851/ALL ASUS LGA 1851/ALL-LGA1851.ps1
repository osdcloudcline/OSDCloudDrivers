$LGA1851 = "C:\Logs\OSDCloud\ASUS\LGA1851.log"

Start-Transcript

Get-Date

$BusinessLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Business%20Motherbords/Business.ps1")
Invoke-Expression $($BusinessLGA1851.Content)

$CSMLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/CSM%20Motherboards/CSM.ps1")
Invoke-Expression $($CSMLGA1851.Content)
