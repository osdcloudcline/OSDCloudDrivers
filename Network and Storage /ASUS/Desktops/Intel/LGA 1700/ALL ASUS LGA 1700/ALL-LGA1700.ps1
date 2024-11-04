Function Get-LGA1700Storage(){

$LGA1700Storage1 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Storage\iaStorVD.cat" -IsValid)
$LGA1700Storage2 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Storage\iaStorVD.inf" -IsValid)
$LGA1700Storage3 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Storage\iaStorVD.sys" -IsValid)
$LGA1700Storage4 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Storage\RstMwEventLogMsg.dll" -IsValid)

If(($LGA1700Storage1 -eq $true) -and ($LGA1700Storage2 -eq $true) -and ($LGA1700Storage3 -eq $true) -and ($LGA1700Storage4 -eq $true)){
Write-Verbose "ASUS LGA 1851 Storage drivers have been downloaded and expanded" -Verbose
}
ElseIf (($LGA1700Storage1 -eq $false) -and ($LGA1700Storage2 -eq $false) -and ($LGA1700Storage3 -eq $false) -and ($LGA1700Storage4 -eq $false)){
$LGA1700Storage = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Storage/LGA1700-Storage.ps1")
Invoke-Expression $($LGA1700Storage.Content)
}
}

