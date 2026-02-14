# Skill Routing Map

Routing rules for Orchestrator and workflow-guide to assign tasks to the correct agent.

---

## Keyword → Skill Mapping

| User Request Keywords | Primary Skill | Notes |
|----------------------|---------------|-------|
| API, endpoint, REST, GraphQL, database, migration | **backend-agent** | |
| auth, JWT, login, register, password | **backend-agent** | Auth UI task can also be created for frontend |
| UI, component, page, form, screen (web) | **frontend-agent** | |
| style, Tailwind, responsive, CSS | **frontend-agent** | |
| mobile, iOS, Android, Flutter, React Native, app | **mobile-agent** | Cross-platform |
| Kotlin, Jetpack Compose, Android Native, Hilt | **android-agent** | Native only |
| Windows, macOS, Linux, Tauri, Electron, Desktop | **desktop-agent** | |
| offline, push notification, camera, GPS | **mobile-agent**/**android-agent** | |
| refactor, optimize, clean code, DRY | **refactor-agent** | |
| bug, error, crash, broken, slow | **debug-agent** | |
| review, security, performance | **qa-agent** | |
| accessibility, WCAG, a11y | **qa-agent** | |
| scrum, audit, status, blockers, retro | **scrum-agent** | Process check |
| plan, breakdown, task, sprint | **pm-agent** | Technical plan |
| automatic, parallel, orchestrate | **orchestrator** | |
| workflow, guide, manual, step-by-step | **workflow-guide** | |

---

## Command Map
- `/iniciar-proyecto` -> Architect Agent (Discovery)
- `/plan` -> PM Agent (Technical Planning)
- `/coordinate` / `/orchestrate` -> Orchestrator (Execution)
- `/auditar` -> Scrum Agent (Audit)
- `/build` / `/lanzar` -> Master Workflow (E2E Integration)
- `/debug` -> Debug Agent (Analysis & Fix)
- `/review` -> QA Agent (Compliance)
- `/refactor` -> Refactor Agent (Optimization)

---

## Complex Request Routing

| Request Pattern | Execution Order |
|----------------|-----------------|
| "Create a fullstack app" | pm → (backend + frontend) parallel → qa |
| "Create a mobile app" | pm → (backend + mobile) parallel → qa |
| "Native Android project" | pm → (backend + android) parallel → qa |
| "Desktop application" | pm → (backend + desktop) parallel → qa |
| "Fullstack + mobile + desktop" | pm → (backend + frontend + mobile + desktop) parallel → qa |
| "Optimize whole project" | refactor → qa |
| "Audit project health" | scrum → (relevant agents if gaps found) |
| "Show status and blockers" | scrum |
| "Fix bug and review" | debug → qa |
| "Add feature and test" | pm → relevant agent → qa |
| "Do everything automatically" | orchestrator (internally pm → agents → qa) |
| "I'll manage manually" | workflow-guide |

---

## Inter-Agent Dependency Rules

### Parallel Execution Possible (No Dependencies)
- backend + frontend (when API contract is pre-defined)
- backend + mobile (when API contract is pre-defined)
- frontend + mobile (independent of each other)

### Sequential Execution Required
- pm → all other agents (planning comes first)
- implementation agent → qa (review after implementation complete)
- implementation agent → debug (debugging after implementation complete)
- backend → frontend/mobile (when executing parallel without API contract)

### QA Is Always Last
- qa-agent runs after all implementation tasks are complete
- Exception: Can run immediately if user requests review of specific files only

---

## Escalation Rules

| Situation | Escalation Target |
|-----------|------------------|
| Agent finds bug in different domain | Create task for debug-agent |
| QA finds CRITICAL issue | Re-run relevant domain agent |
| Architecture change needed | Request re-planning from pm-agent |
| Performance issue found (during implementation) | Current agent fixes, debug-agent if severe |
| API contract mismatch | Orchestrator re-runs backend agent |

---

## Turn Limit Guide by Agent

| Agent | Default Turns | Max Turns (including retries) |
|-------|--------------|------------------------------|
| pm-agent | 10 | 15 |
| backend-agent | 20 | 30 |
| frontend-agent | 20 | 30 |
| mobile-agent | 20 | 30 |
| debug-agent | 15 | 25 |
| qa-agent | 15 | 20 |
