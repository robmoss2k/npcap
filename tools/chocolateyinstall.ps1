
$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://nmap.org/npcap/dist/npcap-0.96.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  fileType       = 'EXE_MSI_OR_MSU'
  url            = $url
  softwareName   = 'Npcap*'
  checksum       = '83667E1306FDCF7F9967C10277B36B87E50EE8812E1EE2BB9443BDD065DC04A1'
  checksumType   = 'sha256'
  validExitCodes = @(0, 3010, 1641)
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
