---
description: Workflow de inicialización — verifica instalaciones de CLI, chequea conexiones MCP, configura el idioma y el mapeo agente-CLI.
---

# /setup — Inicialización del Ecosistema

Este workflow asegura que tu entorno esté listo para el enjambre de Lazarus.

## Paso 1: Verificación de Herramientas
Verifica que las siguientes herramientas estén instaladas y accesibles:
- [ ] `git`
- [ ] `node` / `npm`
- [ ] SDKs específicos de lenguaje (Android SDK, Rust/Cargo, etc.)

## Paso 2: Chequeo de Conexión MCP
Realiza una llamada de prueba a los siguientes servidores:
- [ ] `serena` (Sistema de archivos y Análisis)
- [ ] `github` (Gestión de repositorios)
- [ ] `stitch` (Generación de UI)

## Paso 3: Configuración del Proyecto
1. **Idioma**: Configura el idioma principal en `.agent/config/user-preferences.yaml`.
2. **Contexto**: Inicializa un nuevo directorio de "cerebro" si empiezas desde cero.

## Paso 4: Validación Final
Ejecuta `/auditar` para asegurar que todos los activos principales estén presentes y que el manifiesto sea válido.
