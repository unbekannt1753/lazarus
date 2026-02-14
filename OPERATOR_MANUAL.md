# 📗 Manual del Operador de Lazarus

Bienvenido al ecosistema avanzado de codificación agentica. Este manual proporciona el "mapa técnico" de cómo funciona Lazarus bajo el capó.

## 1. Filosofía Central: Intención sobre Código
Lazarus está diseñado para que el **Usuario** se enfoque en el "Qué" y el "Por qué", mientras que un **Enjambre de Agentes** se encarga del "Cómo".

## 2. El Enjambre de Agentes
Cada agente es una "Habilidad" especializada ubicada en `.agent/skills/`.

| Agente | Responsabilidad | Habilidad Clave |
| :--- | :--- | :--- |
| **Architect** | Descubrimiento Estratégico | Generación de PRD y User Stories |
| **PM** | Descomposición Técnica | Planificación de tareas y contratos de API |
| **Orchestrator** | Gestor de Ejecución | Coordinación paralela multi-agente |
| **Android** | Móvil Nativo | Kotlin, Compose, integración con Hilt |
| **Desktop** | Multiplataforma | Tauri, Electron, APIs del SO |
| **Refactor** | Optimización | Eficiencia de tokens y limpieza de código |
| **Scrum** | Gobernanza | Auditorías y monitoreo de salud |
| **QA** | Aseguramiento de Calidad | Pruebas de rendimiento, seguridad y lógica |

## 3. Maestría en Workflows
Los Workflows (`.agent/workflows/`) son máquinas de estado que automatizan procesos complejos.
- **`/iniciar-proyecto`**: Tu punto de entrada. Refina la visión primero.
- **`/plan`**: Elaboración del blueprint técnico.
- **`/build`**: El comando maestro. Desde la idea hasta el producto de una sola vez.
- **`/auditar`**: Verificación de salud. Úsalo si sientes que el proyecto está estancado.

## 4. Modos de Transparencia
Alterna tu experiencia a través del comando `/build`:
- **Hands-Off (Sin intervención)**: Enfócate en el resultado. Ideal para prototipado rápido.
- **Developer-in-the-Loop (Desarrollador presente)**: Aprende de los agentes. Mira los logs del terminal y los diffs de código.

## 5. Instalación y Distribución

Existen tres formas de llevar Lazarus a un nuevo proyecto:

### A. El "One-Liner" (Recomendado)
Puedes instalar el ecosistema Lazarus directamente desde GitHub con un solo comando:
```bash
curl -sSL https://raw.githubusercontent.com/unbekannt1753/lazarus/main/scripts/setup.sh | bash -s -- .
```

### B. Usando el Script Local
Si ya tienes el repositorio clonado:
```bash
./scripts/setup.sh /ruta/al/proyecto
```

### C. Diferencia con `bunx oh-my-ag`
- **`bunx oh-my-ag`**: Instala los agentes "vainilla" (6 agentes básicos en inglés).
- **Lazarus**: Instala el enjambre fortificado (14 agentes, localizado al español, con /build maestro).
> [!IMPORTANT]
> Aún recomendamos tener **Bun** y **uv** instalados, ya que son el "motor" que permite al Orchestrator ejecutar tareas en paralelo y gestionar dashboards.

## 6. Extendiendo Lazarus
