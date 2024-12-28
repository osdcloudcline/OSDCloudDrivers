$ESXINetLog = "C:\Logs\OSDCloud\ESXI\NetworkDrivers.log"

Start-Transcript -Path $ESXINetLog

Get-Date

#########################
# ESXI Network Drivers  Path
##########################

$ESXIPath1 = "C:\OSDCloud\Drivers\Virtualization\ESXI\Network"
$ESXINetworkDriversURL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20ESXI/ESXILANDrivers.ps1"
$ESXIDownloadPath = "C:\OSDCloud\Drivers\Virtualization\ESXI"

Import-Module -Name OSD -Force

Write-Verbose "Processing: VMWare ESXI Network Drivers..." -Verbose

Save-WebFile -SourceUrl $ESXINetworkDriversURL -DestinationDirectory $ESXIDownloadPath
Expand-7zip -ArchiveName "$ESXIDownloadPath\Proxmox-Wi11-Ethernet.zip" -TargetPath $ESXIPath1 -ErrorAction SilentlyContinue

Write-Host
Write-Verbose "Completed: ESXI Network Drivers..." -Verbose
Write-Host

Stop-Transcript
