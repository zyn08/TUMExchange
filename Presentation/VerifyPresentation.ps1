param(
  [string]$PresentationPath = (Join-Path $PSScriptRoot 'SmartHomeOrganizationRobotPresentation.html')
)

$ErrorActionPreference = 'Stop'

if (-not (Test-Path -LiteralPath $PresentationPath)) {
  throw "Presentation file not found: $PresentationPath"
}

$html = Get-Content -Raw -LiteralPath $PresentationPath
$visibleText = (($html -replace '<[^>]+>', ' ') -replace '\s+', ' ').Trim()
$requiredFragments = @(
  'Where are my keys?',
  'Object locations constantly change',
  'How might we help people easily find and organize everyday objects at home?',
  'SEE', 'REMEMBER', 'FIND', 'ORGANIZE',
  'Students living in dormitories or shared apartments',
  'Hardware sale',
  'keydown',
  'showSlide'
)

foreach ($fragment in $requiredFragments) {
  if ($visibleText -notmatch [regex]::Escape($fragment)) {
    throw "Required presentation fragment is missing: $fragment"
  }
}

$slideCount = ([regex]::Matches($html, 'class="slide(?:\s|")')).Count
if ($slideCount -ne 7) {
  throw "Expected 7 slides, found $slideCount"
}

Write-Output "PASS: $slideCount slides and all required narrative/navigation fragments are present."
