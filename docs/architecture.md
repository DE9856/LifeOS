# LifeOS Architecture

## Overview

LifeOS is a modular, event-driven personal operating system built using n8n, Telegram, and Supabase.

The system is designed around a layered architecture where each workflow has a single responsibility and communicates through a standardized request contract.

```
                 Telegram
                     │
                     ▼
             001 - Gateway
       (Platform & Identity Layer)
                     │
                     ▼
              002 - Router
      (Command Parsing & Routing)
                     │
         ┌───────────┴───────────┐
         ▼                       ▼
   003 - TaskOS          Future Modules
                         (FinanceOS,
                          CalendarOS,
                          NotesOS,
                          ReminderOS,
                          AIOS...)
                     │
                     ▼
                 Supabase
```

---

## Layer Responsibilities

### Gateway

Responsibilities:

- Receive platform events
- Authenticate and register users
- Normalize incoming data
- Build the LifeOS Request Contract
- Forward requests to the Router

Gateway never contains business logic.

---

### Router

Responsibilities:

- Extract commands
- Parse command arguments
- Identify the destination module
- Route requests

Router never performs database operations.

---

### Modules

Each module owns a specific business domain.

Current modules:

- TaskOS

Future modules:

- FinanceOS
- CalendarOS
- NotesOS
- ReminderOS
- MemoryOS
- AI Assistant

Each module is responsible for:

- Input validation
- Business logic
- Database operations
- Response generation

---

### Database

Supabase is the persistent storage layer.

Current tables:

- users
- tasks

Future tables:

- expenses
- budgets
- events
- reminders
- notes
- memories

Each module owns its own tables.

---

## LifeOS Request Flow

```
Telegram
      │
      ▼
Gateway
      │
      ▼
Router
      │
      ▼
Module
      │
      ▼
Database
      │
      ▼
Response
```

---

## Design Principles

- Modular architecture
- Separation of concerns
- Event-driven workflows
- Standardized request contract
- Standardized response contract
- Scalable module system