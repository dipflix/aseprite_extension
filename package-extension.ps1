param(
  [string]$SourceDir = "src",
  [string]$OutDir = "dist"
)

$ErrorActionPreference = "Stop"

if (-not (Test-Path -Path (Join-Path $SourceDir "package.json"))) {
  throw "package.json not found in source directory: $SourceDir"
}

$pkg = Get-Content -Raw -Path (Join-Path $SourceDir "package.json") | ConvertFrom-Json
$name = if ($pkg.name) { $pkg.name } else { "aseprite_extension" }
$version = if ($pkg.version) { $pkg.version } else { "0.0.0" }

$outName = "$name-$version.aseprite-extension"
New-Item -ItemType Directory -Force -Path $OutDir | Out-Null
$outDirAbs = (Resolve-Path $OutDir).Path
$outPath = Join-Path $outDirAbs $outName
$zipPath = Join-Path $outDirAbs "$name-$version.zip"

Push-Location $SourceDir
try {
  $files = Get-ChildItem -Recurse -File
  if ($files.Count -eq 0) {
    throw "No files to package in source directory: $SourceDir"
  }

  $relPaths = $files | ForEach-Object {
    Resolve-Path -Relative $_.FullName
  }

  if (Test-Path $zipPath) {
    Remove-Item -Force $zipPath
  }
  if (Test-Path $outPath) {
    Remove-Item -Force $outPath
  }

  Compress-Archive -Path $relPaths -DestinationPath $zipPath -Force
}
finally {
  Pop-Location
}

Rename-Item -Path $zipPath -NewName $outName -Force
Write-Host "Created: $outPath"
