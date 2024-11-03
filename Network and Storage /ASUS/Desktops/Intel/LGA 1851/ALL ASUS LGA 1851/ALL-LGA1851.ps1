$LGA1851 = "C:\Logs\OSDCloud\ASUS\LGA1851.log"

Start-Transcript

Get-Date

$BusinessLGA1851 = Invoke-WebRequest("")
Invoke-Expression $($BusinessLGA1851.Content)
