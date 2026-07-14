$ErrorActionPreference = "Stop"

$engine = Get-Command "miktex-xetex.exe" -ErrorAction SilentlyContinue
if ($engine) {
    $enginePath = $engine.Source
} else {
    $enginePath = Join-Path $env:LOCALAPPDATA "Programs\MiKTeX\miktex\bin\x64\miktex-xetex.exe"
}

if (-not (Test-Path -LiteralPath $enginePath)) {
    throw "Khong tim thay MiKTeX XeTeX. Hay cai MiKTeX hoac them miktex-xetex.exe vao PATH."
}

Push-Location $PSScriptRoot
try {
    1..3 | ForEach-Object {
        & $enginePath --enable-installer --undump=xelatex `
            -interaction=nonstopmode -halt-on-error main.tex
        if ($LASTEXITCODE -ne 0) {
            throw "XeLaTeX build failed on pass $_."
        }
    }
    Write-Host "Build thanh cong: $PSScriptRoot\main.pdf"
} finally {
    Pop-Location
}
