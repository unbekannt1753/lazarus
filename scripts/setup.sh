#!/bin/bash

# Script de Inicialización del Ecosistema Lazarus
# Uso: ./setup.sh [directorio_destino]

TARGET_DIR=${1:-"."}
SOURCE_DIR=$(dirname "$0")/..

echo "🚀 Instalando el Ecosistema de Agentes Lazarus en: $TARGET_DIR"

# 1. Crear Estructura
mkdir -p "$TARGET_DIR/.agent/skills"
mkdir -p "$TARGET_DIR/.agent/workflows"

# 2. Copiar Activos Base
echo "📦 Copiando habilidades y workflows..."
cp -r "$SOURCE_DIR/.agent/"* "$TARGET_DIR/.agent/"
cp "$SOURCE_DIR/prompt-manifest.json" "$TARGET_DIR/"
cp "$SOURCE_DIR/OPERATOR_MANUAL.md" "$TARGET_DIR/"

# 3. Inicializar Git si no está presente
if [ ! -d "$TARGET_DIR/.git" ]; then
    echo "🔧 Inicializando repositorio git..."
    git -C "$TARGET_DIR" init
fi

echo "✅ ¡Instalación completada!"
echo "👉 Ejecuta '/setup' o '/iniciar-proyecto' para comenzar."
