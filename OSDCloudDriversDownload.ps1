       $os = Get-CimInstance -ClassName Win32_OperatingSystem
       $PCName = "$env:computername"
       $OSVerison = $($os.Version)
       $UBR = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -Name UBR).UBR
       $FullOS = $($os.Caption)
       $OSBuild = $($os.Version) + "." + $UBR
       $DisplayVersion = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -Name DisplayVersion).DisplayVersion
       $EditionID = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -Name EditionID).EditionID
       $CompleteOSInfo = "$FullOS" + " $OSBuild" + " $DisplayVersion"
       $EdgeEXE = Get-ItemPropertyValue 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\msedge.exe' "(default)"
       $EdgeBrowser = (Get-Item $EdgeEXE).VersionInfo.ProductVersion

       $IP1 = (Get-NetIpaddress | Where-Object { $_.AddressFamily -eq "IPv4" -and $_.InterfaceAlias -eq "Ethernet" -and $_.PrefixLength -eq "24"}).IPAddress
       $IP2 = (Get-NetIpaddress | Where-Object { $_.AddressFamily -eq "IPv4" -and $_.InterfaceAlias -eq "Ethernet 2" -and $_.PrefixLength -eq "24"}).IPAddress
       $IP3 = (Get-NetIpaddress | Where-Object { $_.AddressFamily -eq "IPv4" -and $_.InterfaceAlias -eq "WiFi" -and $_.PrefixLength -eq "24"}).IPAddress
       $NetName = (Get-NetconnectionProfile).Name
       $GatewayDNS = (Get-CimInstance -Class Win32_NetworkAdapterConfiguration -Filter IPEnabled=TRUE -ComputerName $env:computername).DefaultIPGateway
       $ExternalIP = (Invoke-WebRequest -uri "https://api.ipify.org/").Content
       
       
       $Baseboard1 = (Get-CimInstance -ClassName Win32_Baseboard).Manufacturer
       $Baseboard2 = (Get-CimInstance -ClassName Win32_Baseboard).Product
       $CPU = (Get-CimInstance -Class Win32_Processor -ComputerName "$env:computername").Name
       $RAM = (Get-CimInstance -Class Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).sum/1gb
       $PCManufacturer = (Get-CimInstance -ClassName Win32_ComputerSystem).Manufacturer
       $BIOS1 = (Get-CimInstance -ClassName Win32_BIOS).Manufacturer
       $BIOS2 = (Get-CimInstance -ClassName Win32_BIOS).SMBIOSBIOSVersion
       $CheckUEFIBoot = [System.Text.Encoding]::ASCII.GetString((Get-SecureBootUEFI PK).bytes) -match "DO NOT TRUST|DO NOT SHIP"

       
       Write-Host
       Write-Host         "Running Computer Info:" -ForegroundColor Green 
       Write-Verbose "System Hostname: $PCName" -Verbose
       Write-Verbose "Running Operating System: $CompleteOSInfo" -Verbose  
       Write-Verbose "Operating System: $FullOS" -Verbose 
       Write-Verbose "Build Number: $OSBuild" -Verbose 
       Write-Verbose "Display Version: $DisplayVersion" -Verbose
       Write-Verbose "OS Edition: $EditionID" -Verbose 
       Write-Verbose "MS Edge Chromium Version: $EdgeBrowser" -Verbose 

       Write-Host 
       Write-Host         "System Hardware Info:" -ForegroundColor Green 
       Write-Verbose "System Hostname: $PCName" -Verbose
       Write-Verbose "Processor: $CPU" -Verbose
       Write-Verbose "System Memory: $RAM GB" -Verbose
       Write-Verbose "Motherboard: $Baseboard1 $Baseboard2" -Verbose
       Write-Verbose "Manufacturer: $PCManufacturer" -Verbose
       Write-Verbose "System BIOS: $BIOS1 $BIOS2" -Verbose
      If($CheckUEFIBoot -eq $false){
       Write-Host "Great news - $env:computername using $Baseboard1 $Baseboard2 is NOT affected by PKFail security vulneralbility" -ForegroundColor DarkBlue -BackgroundColor White
    }
       ElseIf($CheckUEFIBoot -eq $true){
       Write-Host "Bad news - $env:computername using $Baseboard1 $Baseboard2 IS affected by PKFail security vulneralbility" -ForegroundColor DarkRed -BackgroundColor White
    }
       
       Write-Host 
       Write-Host         "Network Connection Info:" -ForegroundColor Green 
       Write-Verbose "System Hostname: $PCName" -Verbose
       Write-Verbose "System IP Address 1: $IP1" -Verbose
       Write-Verbose "System IP Address 2: $IP2" -Verbose
       Write-Verbose "System IP Address 3: $IP3" -Verbose
       Write-Verbose "Network Name: $NetName" -Verbose
       Write-Verbose "System Gateway/DNS Server: $GatewayDNS" -Verbose
       Write-Verbose "WAN or External IP Address: $ExternalIP" -Verbose

       Write-Host
       Write-Host "Hello, $env:username..." -ForegroundColor Cyan 
       Write-Host
       $Date = Get-Date
       Write-Host "Today is:" "$Date"
       Write-Host
       Write-Verbose "Your user profile is located at $env:userprofile" -Verbose
       Write-Host
       Write-Host 
       Write-Host '                                                                                        ' -BackgroundColor White                                                              
       Write-Host '            This OSDCloud script will download all drivers:                             ' -ForegroundColor DarkBlue -BackgroundColor White
       Write-Host '     - Virtualization Drivers: VMWare, Proxmox and Hyper-V                              ' -ForegroundColor DarkBlue -BackgroundColor White
       Write-Host '     - Motherboard Drivers: ASRock AMD AM4/AM5 and Intel LGA1700/LGA1851 motherboards   ' -ForegroundColor DarkBlue -BackgroundColor White
       Write-Host '     - Motherboard Drivers: ASUS AMD AM4/AM5 and Intel LGA1700/LGA1851 motherboards     ' -ForegroundColor DarkBlue -BackgroundColor White
       Write-Host '     - Motherboard Drivers: Gigabyte AMD AM4/AM5 and Intel LGA1700/LGA1851 motherboards ' -ForegroundColor DarkBlue -BackgroundColor White
       Write-Host '     - Motherboard Drivers: MSI AMD AM5 and Intel LGA1700/LGA1851 motherboards          ' -ForegroundColor DarkBlue -BackgroundColor White
       Write-Host '     - OEM Drivers: ASUS, DELL, Acer, Lenovo laptops and MFF devices                    ' -ForegroundColor DarkBlue -BackgroundColor White
       Write-Host '       and Microsoft Surface tablet devices                                             ' -ForegroundColor DarkBlue -BackgroundColor White
       Write-Host '                                                                                        ' -BackgroundColor White

       pause

       $DriverDownloadLogs = "C:\Logs\OSDCloud\Drivers\ALL-Drivers-Download.log"

       Start-Transcript -Path $DriverDownloadLogs

       $DLQues = Read-Host -Prompt 'Do you Want to download Virtualization, AMD, Intel, OEM or Custom drivers?'

       If(($DLQues -eq "Virtual") -or ($DLQues -eq "virtual") -or ($DLQues -eq "Virtualization") -or ($DLQues -eq "virtualization")){ 
       Write-Verbose "Processing: Virtualization Drivers" -Verbose
       Write-Host

       $ESXI = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20ESXI/ESXI-Drivers.ps1")
       Invoke-Expression $($ESXI.Content)

       $HyperV = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Hyper-V/Hyper-V-NetworkDrivers.ps1")
       Invoke-Expression $($HyperV.Content)

       $Proxmox = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Proxmox/Proxmox.ps1")
       Invoke-Expression $($Proxmox.Content)

       $VMWareWSPRO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20Workstation/VMWare-WorkstationPRO-Drivers.ps1")
       Invoke-Expression $($VMWareWSPRO.Content)

       Write-Verbose "Completed: ALL Driver downloads" -Verbose
       Write-Host
       }

       ElseIf(($DLQues -eq "AMD") -or ($DLQues -eq "amd")){

       Write-Verbose "Processing: Virtualization Drivers" -Verbose
       Write-Host

       $ESXI = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20ESXI/ESXI-Drivers.ps1")
       Invoke-Expression $($ESXI.Content)

       $HyperV = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Hyper-V/Hyper-V-NetworkDrivers.ps1")
       Invoke-Expression $($HyperV.Content)

       $Proxmox = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Proxmox/Proxmox.ps1")
       Invoke-Expression $($Proxmox.Content)

       $VMWareWSPRO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20Workstation/VMWare-WorkstationPRO-Drivers.ps1")
       Invoke-Expression $($VMWareWSPRO.Content)

       Write-Verbose "Processing: ASRock AMD AM4 and AM5 motherboard drivers" -Verbose
       Write-Host

       $ExtremeAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Extreme%20Motherboards/Extreme.ps1")
       Invoke-Expression $($ExtremeAM4.Content)

       $Fala1tyGamingAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Fatal1ty%20Gaming%20Motherboards/Fatal1tyGaming.ps1")
       Invoke-Expression $($Fala1tyGamingAM4.Content)

       $PROAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/PRO%20Motherboards/PRO.ps1")
       Invoke-Expression $($PROAM4.Content)

       $PhantomGamingAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Phantom%20Gaming%20Motherboards/PhantomGaming.ps1")
       Invoke-Expression $($PhantomGamingAM4.Content)

       $SteelLegendAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Steel%20Legend%20Motherboards/SteelLegend.ps1")
       Invoke-Expression $($SteelLegendAM4.Content)

       $TaichiAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Taichi%20Motherboards/Taichi.ps1")
       Invoke-Expression $($TaichiAM4.Content)

       $PROAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/PRO%20Motherboards/PRO.ps1")
       Invoke-Expression $($PROAM5.Content)

       $SteelLegendAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/Steel%20Legend%20Motherboards/SteelLegend.ps1")
       Invoke-Expression $($SteelLegendAM5.Content)

       $TaichiAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/Taichi%20Motherboards/Taichi.ps1")
       Invoke-Expression $($TaichiAM5.Content)

       Write-Verbose "Processing: ASUS AMD AM4 and AM5 motherboard drivers" -Verbose
       Write-Host

       Write-Verbose "Processing: Gigabyte AMD AM4 and AM5 motherboard drivers" -Verbose
       Write-Host

       Write-Verbose "Processing: MSI AMD AM5 motherboard drivers" -Verbose
       Write-Host

       Write-Verbose "Completed: ALL Driver downloads" -Verbose
       Write-Host

       }

       ElseIf(($DLQues -eq "Intel") -or ($DLQues -eq "intel")){

       Write-Verbose "Processing: Virtualization Drivers" -Verbose
       Write-Host

       $ESXI = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20ESXI/ESXI-Drivers.ps1")
       Invoke-Expression $($ESXI.Content)

       $HyperV = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Hyper-V/Hyper-V-NetworkDrivers.ps1")
       Invoke-Expression $($HyperV.Content)

       $Proxmox = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Proxmox/Proxmox.ps1")
       Invoke-Expression $($Proxmox.Content)

       $VMWareWSPRO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20Workstation/VMWare-WorkstationPRO-Drivers.ps1")
       Invoke-Expression $($VMWareWSPRO.Content)

       Write-Verbose "Processing: ASRock Intel LGA 1700 and LGA 1851 motherboard drivers" -Verbose
       Write-Host

       $AQUALGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/AQUA%20Motherboards/AQUA.ps1")
       Invoke-Expression $($AQUALGA1700.Content)
       
       $ExtremeLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Extreme%20Motherboards/Extreme.ps1")
       Invoke-Expression $($ExtremeLGA1700.Content)

       $LiveMixerLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Live%20Mixer%20Motherboards/LiveMixer.ps1")
       Invoke-Expression $($LiveMixerLGA1700.Content)

       $PROLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/PRO%20Motherboards/PRO.ps1")
       Invoke-Expression $($PROLGA1700.Content)

       $PhantomGamingLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Phantom%20Gaming%20Motherboards/PhantomGaming.ps1")
       Invoke-Expression $($PhantomGamingLGA1700.Content)

       $SteelLegendLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Steel%20Legend%20Motherboards/SteelLegend.ps1")
       Invoke-Expression $($SteelLegendLGA1700.Content)

       $TaichiLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Taichi%20Motherboards/Taichi.ps1")
       Invoke-Expression $($TaichiLGA1700.Content)

       $AQUALGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/AQUA%20Motherboards/AQUA.ps1")
       Invoke-Expression $($AQUALGA1851.Content)
       
       $ExtremeLGA1851 = Invoke-WebRequest("")
       Invoke-Expression $($ExtremeLGA1851.Content)

       $LiveMixerLGA1851 = Invoke-WebRequest("")
       Invoke-Expression $($LiveMixerLGA1851.Content)

       $PROLGA1851 = Invoke-WebRequest("")
       Invoke-Expression $($PROLGA1851.Content)

       $SteelLegendLGA1851 = Invoke-WebRequest("")
       Invoke-Expression $($SteelLegendLGA1851.Content)

       $TaichiLGA1851 = Invoke-WebRequest("")
       Invoke-Expression $($TaichiLGA1851.Content)
       
       Write-Verbose "Processing: ASUS Intel LGA 1700 and LGA 1851 motherboard drivers" -Verbose
       Write-Host

       Write-Verbose "Processing: Gigabyte Intel LGA 1700 and LGA 1851 motherboard drivers" -Verbose
       Write-Host

       Write-Verbose "Processing: MSI Intel LGA 1700 and LGA 1851 motherboard drivers" -Verbose
       Write-Host

       Write-Verbose "Completed: ALL Driver downloads" -Verbose
       Write-Host

       }

       ElseIf(($DLQues -eq "OEM") -or ($DLQues -eq "oem")){

       Write-Verbose "Processing: Virtualization Drivers" -Verbose
       Write-Host

       $ESXI = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20ESXI/ESXI-Drivers.ps1")
       Invoke-Expression $($ESXI.Content)

       $HyperV = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Hyper-V/Hyper-V-NetworkDrivers.ps1")
       Invoke-Expression $($HyperV.Content)

       $Proxmox = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Proxmox/Proxmox.ps1")
       Invoke-Expression $($Proxmox.Content)

       $VMWareWSPRO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20Workstation/VMWare-WorkstationPRO-Drivers.ps1")
       Invoke-Expression $($VMWareWSPRO.Content)

       Write-Verbose "Processing: Dell Optiplex Micro-Form Factor drivers" -Verbose
       Write-Host

       Write-Verbose "Processing: Dell laptop drivers" -Verbose
       Write-Host

       Write-Verbose "Processing: ASUS laptop drivers" -Verbose
       Write-Host

       Write-Verbose "Processing: Acer laptop drivers" -Verbose
       Write-Host

       Write-Verbose "Processing: Lenovo laptop drivers" -Verbose
       Write-Host

       Write-Verbose "Processing: Microsoft Surface drivers" -Verbose
       Write-Host

       Write-Verbose "Completed: ALL Driver downloads" -Verbose
       Write-Host
       }

       ElseIf(($DLQues -eq "Custom") -or ($DLQues -eq "custom")){

       Write-Verbose "Processing: Virtualization Drivers" -Verbose
       Write-Host

       $ESXI = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20ESXI/ESXI-Drivers.ps1")
       Invoke-Expression $($ESXI.Content)

       $HyperV = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Hyper-V/Hyper-V-NetworkDrivers.ps1")
       Invoke-Expression $($HyperV.Content)

       $Proxmox = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Proxmox/Proxmox.ps1")
       Invoke-Expression $($Proxmox.Content)

       $VMWareWSPRO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20Workstation/VMWare-WorkstationPRO-Drivers.ps1")
       Invoke-Expression $($VMWareWSPRO.Content)

       Write-Verbose "Processing: Custom built PC drivers" -Verbose
       Write-Host

       Write-Verbose "Completed: ALL Driver downloads" -Verbose
       Write-Host
       }

       Stop-Transcript
