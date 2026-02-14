# Inicialización del Ecosistema Lazarus (PowerShell)
param (
    [string]$TargetDir = "."
)

$SourceDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$SourceDir = Join-Path $SourceDir ".."

Write-Host "🚀 Instalando el Ecosistema de Agentes Lazarus en: $TargetDir" -ForegroundColor Cyan

# 1. Crear Estructura
New-Item -ItemType Directory -Force -Path (Join-Path $TargetDir ".agent/skills") | Out-Null
New-Item -ItemType Directory -Force -Path (Join-Path $TargetDir ".agent/workflows") | Out-Null

# 2. Copiar Activos Base
Write-Host "📦 Copiando habilidades y workflows..."
Copy-Item -Path (Join-Path $SourceDir ".agent\*") -Destination (Join-Path $TargetDir ".agent") -Recurse -Force
Copy-Item -Path (Join-Path $SourceDir "prompt-manifest.json") -Destination $TargetDir -Force
Copy-Item -Path (Join-Path $SourceDir "OPERATOR_MANUAL.md") -Destination $TargetDir -Force

# 3. Inicializar Git
if (!(Test-Path (Join-Path $TargetDir ".git"))) {
    Write-Host "🔧 Inicializando repositorio git..."
    git -C $TargetDir init
}

Write-Host "✅ ¡Instalación completada!" -ForegroundColor Green
Write-Host "👉 Ejecuta '/setup' o '/iniciar-proyecto' para comenzar."
