---
description: Workflow de auditoría — supervisado por el Scrum Agent para evaluar la salud del proyecto y el cumplimiento de estándares.
---

# /auditar — Workflow de Auditoría y Salud

## REGLAS MANDATORIAS
- **Imparcialidad**: Audita según los estándares definidos, no según suposiciones.
- **Accionable**: Cada reporte debe terminar con una lista de tareas para corregir el rumbo.

---

## Paso 1: Toma de Instantánea (Snapshot)
Activa el **Scrum Agent** (`.agent/skills/scrum-agent`).
1. Lee los archivos `task.md`, `PRD.md` y `plan.md` actuales.
2. Escanea la estructura de archivos para verificar que los entregables prometidos existan.
3. Revisa el historial de commits recientes.

## Paso 2: Evaluación de Cumplimiento
// turbo
Evalúa el progreso basándose en:
- **Consistencia**: ¿El código coincide con el plan?
- **Ritmo**: ¿Hay tareas bloqueadas por mucho tiempo?
- **Calidad**: ¿El Refactor Agent ha dado su visto bueno a las últimas optimizaciones?

## Paso 3: Generación del Reporte
// turbo
Genera un `audit_report.md` usando la plantilla `resources/audit-report-template.md`.
- **Estado de Salud**:
  - 🟢 **Verde**: Todo en orden.
  - 🟡 **Amarillo**: Riesgos menores o falta de documentación.
  - 🔴 **Rojo**: Bloqueadores críticos o desviaciones graves del plan.

## Paso 4: Retrospectiva con el Usuario
Presenta el reporte y sugiere ajustes inmediatos si el estado no es Verde.

---

# NOTA DEL SCRUM MASTER
La auditoría no es una penalización, es una herramienta para asegurar que el producto final sea de alta calidad y bajo mantenimiento.
