$ErrorActionPreference = "Stop"

$sourceDirectory = Join-Path $PSScriptRoot "pet"
$targetDirectory = Join-Path $env:USERPROFILE ".codex\pets\mashiro"

if (-not (Test-Path -LiteralPath (Join-Path $sourceDirectory "pet.json"))) {
    throw "找不到 pet/pet.json。请在完整仓库目录中运行此脚本。"
}

if (-not (Test-Path -LiteralPath (Join-Path $sourceDirectory "spritesheet.webp"))) {
    throw "找不到 pet/spritesheet.webp。请重新下载完整仓库。"
}

New-Item -ItemType Directory -Path $targetDirectory -Force | Out-Null
Copy-Item -LiteralPath (Join-Path $sourceDirectory "pet.json") -Destination $targetDirectory -Force
Copy-Item -LiteralPath (Join-Path $sourceDirectory "spritesheet.webp") -Destination $targetDirectory -Force

Write-Host "真白已安装到 $targetDirectory"
Write-Host "请在 Codex 中重新选择宠物；如未刷新，请重启 Codex。"
