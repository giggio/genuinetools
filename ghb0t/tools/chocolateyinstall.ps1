# IMPORTANT: Before releasing this package, copy/paste the next 2 lines into PowerShell to remove all comments from this file:
#   $f='c:\path\to\thisFile.ps1'
#   gc $f | ? {$_ -notmatch "^\s*#"} | % {$_ -replace '(^.*?)\s*?[^``]#.*','$1'} | Out-File $f+".~" -en utf8; mv -fo $f+".~" $f

$ErrorActionPreference = 'Stop'; # stop on all errors
$softwareName = 'ghb0t'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = "https://github.com/genuinetools/$softwareName/releases/download/v$env:ChocolateyPackageVersion/$softwareName-windows-386"
$url64      = "https://github.com/genuinetools/$softwareName/releases/download/v$env:ChocolateyPackageVersion/$softwareName-windows-amd64"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = $softwareName
  checksum      = '9f8bb37c4bc35ab03f1543e6567dbd05ce3ad584e12906bda577f03ca1225815'
  checksumType  = 'sha256'
  checksum64    = 'dc424962a9d3090493079697701d631d3e1075de658409304481facc7a5a8780'
  checksumType64= 'sha256'
  url           = $url
  url64bit      = $url64
  fileFullPath  = Join-Path $toolsDir "$softwareName.exe"
}
Get-ChocolateyWebFile @packageArgs