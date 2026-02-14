#!/bin/bash

# Script de Inicialización del Ecosistema Lazarus
# Soporta ejecución local y remota (curl | bash)

TARGET_DIR=${1:-"."}
REPO_URL="https://github.com/unbekannt1753/lazarus.git"
TEMP_DIR="/tmp/lazarus_bootstrap_$(date +%s)"

echo "🚀 Iniciando instalación del Ecosistema Lazarus..."

# 1. Determinar origen de los archivos
if [ -d "$(dirname "$0")/../.agent" ]; then
    SOURCE_DIR="$(dirname "$0")/.."
    echo "� Instalando desde origen local: $SOURCE_DIR"
else
    echo "🌐 No se detectaron archivos locales. Clonando desde GitHub..."
    if ! command -v git &> /dev/null; then
        echo "❌ Error: 'git' no está instalado. Es necesario para la instalación remota."
        exit 1
    fi
    git clone --depth 1 "$REPO_URL" "$TEMP_DIR" > /dev/null 2>&1
    SOURCE_DIR="$TEMP_DIR"
    TRAP_CLEANUP=true
fi

# 2. Crear estructura en destino
echo "🏗️ Creando estructura en: $TARGET_DIR"
mkdir -p "$TARGET_DIR/.agent/skills"
mkdir -p "$TARGET_DIR/.agent/workflows"

# 3. Copiar activos
echo "📦 Copiando habilidades y workflows..."
cp -r "$SOURCE_DIR/.agent/"* "$TARGET_DIR/.agent/"
cp "$SOURCE_DIR/prompt-manifest.json" "$TARGET_DIR/"
cp "$SOURCE_DIR/OPERATOR_MANUAL.md" "$TARGET_DIR/"
cp "$SOURCE_DIR/OPERATOR_MANUAL.html" "$TARGET_DIR/"

# 4. Inicializar Git si es necesario
if [ ! -d "$TARGET_DIR/.git" ]; then
    echo "🔧 Inicializando repositorio git en destino..."
    git -C "$TARGET_DIR" init > /dev/null 2>&1
fi

# 5. Limpieza
if [ "$TRAP_CLEANUP" = true ]; then
    echo "🧹 Limpiando archivos temporales..."
    rm -rf "$TEMP_DIR"
fi

echo "✅ ¡Lazarus ha sido instalado con éxito!"
echo "📄 Abriendo manual visual..."

# Intentar abrir el manual automáticamente según el SO
if command -v xdg-open &> /dev/null; then
    xdg-open "$TARGET_DIR/OPERATOR_MANUAL.html"
elif command -v open &> /dev/null; then
    open "$TARGET_DIR/OPERATOR_MANUAL.html"
elif command -v start &> /dev/null; then
    start "$TARGET_DIR/OPERATOR_MANUAL.html"
fi

echo "👉 Ahora abre esta carpeta en tu editor y ejecuta '/setup' para comenzar."
