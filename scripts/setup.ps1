# Inicialización del Ecosistema Lazarus (PowerShell)
param (
    [string]$TargetDir = "."
)

$RepoUrl = "https://github.com/unbekannt1753/lazarus.git"
$TempDir = Join-Path $env:TEMP "lazarus_bootstrap_$(Get-Date -Format 'yyyyMMddHHmmss')"

Write-Host "🚀 Iniciando instalación del Ecosistema Lazarus..." -ForegroundColor Cyan

# 1. Determinar origen
$LocalSource = Join-Path (Split-Path -Parent $MyInvocation.MyCommand.Path) ".."
if (Test-Path (Join-Path $LocalSource ".agent")) {
    $SourceDir = $LocalSource
    Write-Host "📂 Instalando desde origen local: $SourceDir"
} else {
    Write-Host "🌐 No se detectaron archivos locales. Clonando desde GitHub..."
    if (!(Get-Command git -ErrorAction SilentlyContinue)) {
        Write-Error "❌ Error: 'git' no está instalado."
        return
    }
    git clone --depth 1 $RepoUrl $TempDir | Out-Null
    $SourceDir = $TempDir
    $Cleanup = $true
}

# 2. Crear Estructura
Write-Host "🏗️ Creando estructura en: $TargetDir"
New-Item -ItemType Directory -Force -Path (Join-Path $TargetDir ".agent/skills") | Out-Null
New-Item -ItemType Directory -Force -Path (Join-Path $TargetDir ".agent/workflows") | Out-Null

# 3. Copiar Activos
Write-Host "📦 Copiando habilidades y workflows..."
Copy-Item -Path (Join-Path $SourceDir ".agent\*") -Destination (Join-Path $TargetDir ".agent") -Recurse -Force
Copy-Item -Path (Join-Path $SourceDir "prompt-manifest.json") -Destination $TargetDir -Force
Copy-Item -Path (Join-Path $SourceDir "OPERATOR_MANUAL.md") -Destination $TargetDir -Force

# 4. Git Init
if (!(Test-Path (Join-Path $TargetDir ".git"))) {
    Write-Host "🔧 Inicializando repositorio git en destino..."
    git -C $TargetDir init | Out-Null
}

# 5. Limpieza
if ($Cleanup) {
    Write-Host "🧹 Limpiando archivos temporales..."
    Remove-Item -Path $TempDir -Recurse -Force
}

Write-Host "✅ ¡Lazarus ha sido instalado con éxito!" -ForegroundColor Green
Write-Host "👉 Ahora abre esta carpeta en tu editor y ejecuta '/setup' para comenzar."
