# Install ParaDOCS as a local Cursor plugin under ~/.cursor/plugins/local.
# Uses a real directory copy (junctions are often ignored by Cursor plugin discovery).
# Re-run safely to refresh the copy.
$ErrorActionPreference = "Stop"

$pluginName = "paradocs"
$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path
$localRoot = Join-Path $env:USERPROFILE ".cursor\plugins\local"
$linkPath = Join-Path $localRoot $pluginName

New-Item -ItemType Directory -Force -Path $localRoot | Out-Null

# Prefer a clean replace; if Cursor has the folder locked, overlay-copy instead.
$overlayOnly = $false
if (Test-Path $linkPath) {
  $item = Get-Item $linkPath -Force
  if ($item.Attributes -band [IO.FileAttributes]::ReparsePoint) {
    cmd /c "rmdir `"$linkPath`""
  } else {
    try {
      Remove-Item -LiteralPath $linkPath -Recurse -Force -ErrorAction Stop
    } catch {
      Write-Warning "Could not replace local plugin folder (likely locked by Cursor). Overlaying files instead."
      $overlayOnly = $true
    }
  }
}

New-Item -ItemType Directory -Force -Path $linkPath | Out-Null

# Plugin payload only (skills + rules + docs).
$include = @(
  ".cursor-plugin",
  "assets",
  "docs",
  "rules",
  "skills",
  "scripts"
)

foreach ($name in $include) {
  $src = Join-Path $repoRoot $name
  if (-not (Test-Path $src)) { continue }
  $dst = Join-Path $linkPath $name
  if (Test-Path $src -PathType Container) {
    New-Item -ItemType Directory -Force -Path $dst | Out-Null
    robocopy $src $dst /E /NFL /NDL /NJH /NJS /nc /ns /np | Out-Null
    if ($LASTEXITCODE -ge 8) {
      throw "robocopy failed for $name with exit $LASTEXITCODE"
    }
  } else {
    Copy-Item -LiteralPath $src -Destination $dst -Force
  }
}

if ($overlayOnly) {
  Write-Host "Overlay refresh complete (folder was locked)."
}

Write-Host "Installed local plugin (copy):"
Write-Host "  $linkPath"
Write-Host "  (source repo: $repoRoot)"
Write-Host ""
Write-Host "Next:"
Write-Host "  1. Reload Window so ParaDOCS rules and the paragon-tech-docs skill load."
