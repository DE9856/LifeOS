# LifeOS Module Template

Every module in LifeOS follows the same architecture.

---

## Standard Workflow

```
When Executed
        │
        ▼
Validate Request
        │
        ▼
Business Logic
        │
        ▼
Persistence
        │
        ▼
Build Response
```

---

## Layer Responsibilities

### Input Layer

Receives the standardized LifeOS Request Contract.

---

### Validation Layer

Responsible for:

- Required fields
- Input format
- Permission checks

Validation should fail fast.

---

### Business Logic Layer

Responsible for:

- Parsing data
- Normalization
- Transformations
- Domain-specific logic

Examples:

TaskOS

```
command_args

↓

title

↓

priority

↓

status
```

FinanceOS

```
command_args

↓

amount

↓

category

↓

description
```

---

### Persistence Layer

Responsible only for database operations.

No business logic should exist here.

---

### Response Layer

Every module returns a standardized response.

Example:

```json
{
    "success": true,
    "response_message": "Operation completed successfully."
}
```

---

## Module Naming

```
003 - TaskOS
004 - FinanceOS
005 - CalendarOS
006 - NotesOS
```

---

## Database Ownership

Each module owns its own tables.

Example:

TaskOS

- tasks

FinanceOS

- expenses
- budgets

CalendarOS

- events

ReminderOS

- reminders

NotesOS

- notes

---

## Development Checklist

Before completing a module:

- Input validated
- Business logic separated
- Database isolated
- Response standardized
- Node names standardized
- Workflow documented