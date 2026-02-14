---
description: Workflow maestro de extremo a extremo — lleva una idea conceptual a un producto totalmente funcional y verificado.
---

# /build — Workflow Maestro (E2E)

## REGLAS MANDATORIAS
- **Máquina de Estados**: Sigue las fases estrictamente. No te saltes la verificación.
- **Modo de Transparencia**: SIEMPRE pregunta al usuario al inicio si desea **Hands-Off** (Conciso) o **Developer-in-the-Loop** (Logs detallados/Aprendizaje).

---

## Paso 1: Inicialización y Selección de Transparencia
Activa el **Scrum Agent** para establecer la etapa del proyecto.
1. Pide al usuario su idea de proyecto.
2. **Pregunta por el Modo de Transparencia**: 
   - `[1] Hands-Off`: Solo muestra artefactos de alto nivel y resultados finales.
   - `[2] Developer-in-the-Loop`: Muestra todas las salidas del terminal, diffs de código y no te saltes nada.

---

## Paso 2: Descubrimiento Estratégico (Architect)
// turbo
Ejecuta `/iniciar-proyecto`.
- El **Architect Agent** realiza la entrevista.
- Resultado: PRD y User Stories aprobados.
- **Traspaso**: Guarda los artefactos en el directorio del "cerebro" actual.

---

## Paso 3: Planificación Técnica (PM)
// turbo
Ejecuta `/plan`.
- El **PM Agent** toma el PRD y genera el `plan.json` y la lista de tareas.
- **Verificación**: El Scrum Agent audita el plan para asegurar su integridad.

---

## Paso 4: Coordinación Autónoma (Orchestrator)
// turbo
Ejecuta `/coordinate` o `/orchestrate`.
- El **Orchestrator** asigna tareas a los agentes Frontend, Backend, Mobile, Android o Desktop.
- El **Refactor Agent** revisa los commits para asegurar la eficiencia de tokens.
- **Visibilidad**: Si el modo "Developer-in-the-Loop" está activo, muestra todos los logs de los sub-agentes. De lo contrario, muestra barras de progreso.

---

## Paso 5: Auditoría Final y Entrega (Scrum)
// turbo
Ejecuta `/auditar`.
- El **Scrum Agent** realiza una verificación de salud final.
- Resultado: `audit_report.md` (Debe estar en 🟢 Verde).
- Finaliza con un `walkthrough.md` y una guía de "Cómo ejecutar".

---

# PROTOCOLO DE CONSERJE
Si el usuario deja de ser proactivo, el Scrum Agent debe sugerir gentilmente el siguiente paso en el flujo de `/build`.
