#################################################################
# Main Menu
#################################################################

Function Show-MainMenu{
   [CmdletBinding()]
   param(
   [string]$Title = 'OSD Cloud ASUS LGA 1700 Desktop Motherboards - Main Menu',
   [string]$Question = 'What type of action do you need to do?' 
   )
cls

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
Write-Host '                                                                              ' -BackgroundColor White                                                              
Write-Host '            This OSDCloud section allows the user to perform:                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Creating ISO images for Desktop motherboards                           ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '       LGA 1700 model lines:                                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - ASUS: Intel LGA 1700 Business motherboards                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - ASUS: Intel LGA 1700 CSM motherboards                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - ASUS: Intel LGA 1700 Other motherboards                                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - ASUS: Intel LGA 1700 PRIME motherboards                                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - ASUS: Intel LGA 1700 ProArt motherboards                               ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - ASUS: Intel LGA 1700 ROG - Republic of Gamers motherboards             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - ASUS: Intel LGA 1700 TUF Gaming motherboards                           ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - ASUS: Intel LGA 1700 Expedition motherboards                           ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - ASUS: Intel LGA 1700 Workstation motherboards                           ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - ASUS: ALL Intel LGA 1700 motherboards                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
pause
Clear-Host

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: Create ISO - LGA 1700 Business motherboards"
Write-Host " 2. OSDCloud: Create ISO - LGA 1700 CSM motherboards"
Write-Host " 3. OSDCloud: Create ISO - LGA 1700 Other motherboards"
Write-Host " 4. OSDCloud: Create ISO - LGA 1700 PRIME motherboards"
Write-Host " 5. OSDCloud: Create ISO - LGA 1700 ProArt motherboards"
Write-Host " 6. OSDCloud: Create ISO - LGA 1700 ROG - Republic of Gamers motherboards"
Write-Host " 7. OSDCloud: Create ISO - LGA 1700 TUF Gaming motherboards"
Write-Host " 8. OSDCloud: Create ISO - LGA 1700 Expedition motherboards"
Write-Host " 9. OSDCloud: Create ISO - LGA 1700 Workstation motherboards"
Write-Host " 10. OSDCloud: Create ISO - ALL LGA 1700 motherboards"
Write-Host " 11. OSDCloud: Get Help"
Write-Host " 12. Return to Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1'{cls
    $Business = Invoke-WebRequest("")
    Invoke-Expression $($Business.Content)
    }
'2'{cls
    $CSM = Invoke-WebRequest("")
    Invoke-Expression $($CSM.Content)
    }
'3'{cls
    $Other = Invoke-WebRequest("")
    Invoke-Expression $($Other.Content)
    }
'4'{cls
    $PRIME = Invoke-WebRequest("")
    Invoke-Expression $($PRIME.Content)
    }
'5'{cls
    $ProArt = Invoke-WebRequest("")
    Invoke-Expression $($ProArt.Content)
    }
'6'{cls
    $ROG = Invoke-WebRequest("")
    Invoke-Expression $($ROG.Content)
    }
'7'{cls
    $TUFGaming = Invoke-WebRequest("")
    Invoke-Expression $($TUFGaming.Content)
    }
'8'{cls
    $Expedition = Invoke-WebRequest("")
    Invoke-Expression $($Expedition.Content)
    }
'9'{cls
    $Workstation = Invoke-WebRequest("")
    Invoke-Expression $($Workstation.Content)
    }
'10'{cls
    $ALL1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ALL%20LGA%201700/ALL-LGA1700.ps1")
    Invoke-Expression $($ALL1700.Content)
    }
'11'{cls
    Get-Command -Module OSD | Out-File -FilePath "C:\OSDCloud\Help\Commands\OSD\OSDFunctions.txt"
    Start-Process -FilePath "C:\OSDCloud\Help\Commands\OSD\OSDFunctions.txt"
    pause
    Show-MainMenu
    }
'12'{cls
    $OSDCloudMain = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/NEW-OSDCloudMain.ps1")
    Invoke-Expression $($OSDCloudMain.Content)
   }
    }
    }
     until ($selection -eq '12'){Invoke-Expression $($OSDCloudMain.Content)}
    }

    
Show-MainMenu

