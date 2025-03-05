Import-Module -Name OSD -Force

$StubInstallerURL = "https://drivers.amd.com/drivers/installer/24.20/whql/amd-software-adrenalin-edition-24.12.1-minimalsetup-241204_web.exe"

$AdrenilineSoftwareURL = "https://drivers.amd.com/drivers/amd-software-adrenalin-edition-25.2.1-win10-win11-feb2025-rdna.exe"

$destination = "C:\Test"

Save-WebFile -SourceUrl $StubInstallerURL -DestinationDirectory $destination
Save-WebFile -SourceUrl $AdrenilineSoftwareURL -DestinationDirectory $destination
