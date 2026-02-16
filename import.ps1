param(
    [Parameter(Mandatory=$true)]
    [string]$AssetFileName
)

$assetPath  = ".\excel\$AssetFileName"
$targetPath = ".\csv\template.csv"
$outPath    = ".\result_$AssetFileName"

# Read IDs (always the first header)
$assetRows = Import-Csv $assetPath
$firstColumn = ($assetRows[0].PSObject.Properties.Name)[0]
$assetIds = $assetRows | ForEach-Object { $_.$firstColumn } | Where-Object { $_ }

# Read header from target
$header = Get-Content $targetPath -First 1

$newLines = @()
$newLines += $header

foreach ($id in $assetIds) {
    $newLines += ",$id,,,,"
}

$newLines | Set-Content -Path $outPath -Encoding UTF8

Write-Host "Ferdig. Rader skrevet: $($assetIds.Count)"
Write-Host "Output: $outPath"