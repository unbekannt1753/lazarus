---
description: Workflow de descubrimiento — usa el Architect Agent para guiar al usuario desde una idea cruda hasta un PRD y User Stories profesionales.
---

# /iniciar-proyecto — Workflow de Descubrimiento

## REGLAS MANDATORIAS
- **Sigue el Protocolo de Ejecución**: No te saltes el cuestionario estratégico.
- **Entregables**: Debes generar al menos un `PRD.md` y un conjunto de `User Stories`.

---

## Paso 1: Entrevista Estratégica
Activa el **Architect Agent** (`.agent/skills/architect-agent`).
1. Pregunta sobre el "Por qué" del proyecto.
2. Identifica la audiencia objetiva.
3. Define las características "Must-Have" (Imprescindibles) frente a las "Nice-to-Have" (Deseables).

## Paso 2: Construcción del PRD
// turbo
Basado en la entrevista, genera el Documento de Requisitos del Producto (PRD) usando la plantilla en `resources/prd-template.md`.
- Guarda el archivo en el directorio del "cerebro" del proyecto.

## Paso 3: Definición de User Stories
// turbo
Descompone el PRD en User Stories técnicas usando la plantilla `resources/user-story-template.md`.
- Asegura que cada historia tenga Criterios de Aceptación claros.

## Paso 4: Aprobación del Usuario
Presenta el PRD y las User Stories.
- **IMPORTANTE**: No pases a la fase de `/plan` hasta que el usuario apruebe formalmente la visión estratégica.

---

# CONSEJO DEL AGENTE
Si el usuario es vago, usa la técnica de los "Cinco Porqués" (Five Whys) para extraer la verdadera necesidad del negocio.
