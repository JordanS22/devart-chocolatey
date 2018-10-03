$ErrorActionPreference = 'Stop'; 
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.devart.com/dbforge/oracle/studio/dbforgeoracle40x86.exe' 
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe' 
  url           = $url 
  softwareName  = 'Devart dbForge Studio for Oracle, v4.0.237 Enterprise Edition 32-bit' 
  checksum      = 'C24B2152076B3BAE1AD9C253397A853CC2057F9486AD379CB93EF100B219F2C5'
  checksumType  = 'sha256' 
  silentArgs    = '/VERYSILENT'
  validExitCodes= @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs 