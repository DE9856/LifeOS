# LifeOS Workflows

This directory contains the exported n8n workflows that power the LifeOS platform.

## Workflow Structure

```text
workflows/
│
├── 001 - Telegram Gateway.json
├── 002 - Router.json
│
└── TaskOS/
    ├── 200 - Add Task.json
    ├── 201 - List Tasks.json
    ├── 202 - Complete Task.json
    └── 203 - Delete Task.json
```

---

## Current Workflows

| Workflow | Purpose |
|----------|---------|
| **001 - Telegram Gateway** | Telegram entry point, user registration, identity normalization, and request generation |
| **002 - Router** | Command parsing, workflow lookup, and dynamic workflow execution |
| **200 - Add Task** | Validate input, create a new task, and persist it to Supabase |
| **201 - List Tasks** | Retrieve all pending tasks and format them for Telegram |
| **202 - Complete Task** | Mark a pending task as completed using its task number |
| **203 - Delete Task** | Delete a pending task using its task number |

---

## Workflow Architecture

```text
Telegram
    │
    ▼
001 - Telegram Gateway
    │
    ▼
002 - Router
    │
    ▼
Workflow Registry
    │
    └───────────────┬───────────────┬───────────────┐
                    ▼               ▼               ▼
           200 - Add Task   201 - List Tasks   202 - Complete Task
                                                    │
                                                    ▼
                                           203 - Delete Task
```

---

## Importing

1. Open **n8n**.
2. Create a new workflow.
3. Select **Import from File**.
4. Import the required JSON workflow(s).
5. Configure the required credentials.

Required credentials:

- Telegram Bot
- Supabase

> **Note:** The Gateway and Router workflows should be imported before the TaskOS workflows, as the TaskOS workflows are executed by the Router via **Execute Workflow** nodes.