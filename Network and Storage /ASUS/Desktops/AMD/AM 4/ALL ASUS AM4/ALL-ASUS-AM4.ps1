Function Get-AM4Storage(){

$AM4Storage1 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\rcbottom.cat" -IsValid)
$AM4Storage2 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\rcbottom.inf" -IsValid)
$AM4Storage3 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\rcbottom.sys" -IsValid)
$AM4Storage4 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\rccfg.cat" -IsValid)
$AM4Storage5 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\rccfg.inf" -IsValid)
$AM4Storage6 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\rccfg.sys" -IsValid)
$AM4Storage7 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\rcraid.sys" -IsValid)
$AM4Storage8 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\rcraid.cat" -IsValid)
$AM4Storage9 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\rcraid.inf" -IsValid)

If(($AM4Storage1 -eq $true) -and ($AM4Storage2 -eq $true) -and ($AM4Storage3 -eq $true) -and ($AM4Storage4 -eq $true) -and ($AM4Storage5 -eq $true) -and ($AM4Storage6 -eq $true) -and ($AM4Storage7 -eq $true) -and ($AM4Storage8 -eq $true) -and ($AM4Storage9 -eq $true)){
Write-Verbose "ASUS AM 4 Storage drivers have been downloaded and expanded" -Verbose
}
ElseIf (($AM4Storage1 -eq $false) -and ($AM4Storage2 -eq $false) -and ($AM4Storage3 -eq $false) -and ($AM4Storage4 -eq $false) -and ($AM4Storage5 -eq $false) -and ($AM4Storage6 -eq $false) -and ($AM4Storage7 -eq $false) -and ($AM4Storage8 -eq $false) -and ($AM4Storage9 -eq $false)){
$AM4Storage = Invoke-WebRequest("")
Invoke-Expression $($AM4Storage.Content)
}
}

$AM4 = "C:\Logs\OSDCloud\ASUS\AM4.log"

Start-Transcript -Path $AM4

Get-Date

Write-Verbose "Processing: ASUS AM4 Business Motherboards" -Verbose
Write-Host

$BusinessAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/Business%20Motherboards/Business.ps1")
Invoke-Expression $($BusinessAM4.Content)
