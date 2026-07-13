# Changelog

---

## v0.1.0 – Foundation

### Added

- Docker Compose setup
- Self-hosted n8n instance
- Telegram Bot integration
- Cloudflare Tunnel configuration
- Supabase project setup
- Initial Telegram webhook workflow

### Status

✅ Development environment established

---

## v0.2.0 – Telegram Gateway

### Added

- Telegram Bot API connected to n8n
- Supabase database integration
- Automatic user registration
- Existing user detection
- Welcome messages for new users
- Welcome back messages for returning users
- Cloudflare Tunnel integration for local webhook testing

### Status

✅ Core Gateway operational

---

## v0.3.0 – LifeOS Core Architecture & TaskOS Foundation

### Added

#### Gateway

- Standardized LifeOS Gateway contract
- Shared `user_id` propagation across workflows
- Platform metadata propagation (`chat_id`, `message_id`, `received_at`)
- User identity normalization for new and existing users

#### Router

- Modular Router architecture
- Command extraction
- Command argument extraction
- Centralized Workflow Registry
- Dynamic workflow routing
- Workflow metadata (`workflow_id`, `workflow_name`, `description`)

#### TaskOS

- Dedicated TaskOS module
- Request validation layer
- Business Logic layer
- Task creation workflow
- Supabase task persistence
- Standard task preparation pipeline
- Standard response builder
- Success and validation responses

#### Database

- End-to-end task persistence
- Shared internal `user_id`
- Canonical task creation pipeline

#### Engineering Standards

- LifeOS Project Constitution
- Workflow naming convention
- Node naming convention
- Layered workflow architecture
- Standard request contract
- Standard response contract
- Canonical workflow template

### Improved

- Separation of concerns between Gateway, Router and workflows
- Consistent data flow
- Internal identity propagation
- Workflow readability
- Module scalability

### Architecture

```text
Telegram
    │
    ▼
001 - Gateway
    │
    ▼
002 - Router
    │
    ▼
TaskOS
    │
    ▼
Supabase
```

### Status

✅ Modular LifeOS architecture established

✅ Task creation operational

✅ Engineering standards established

---

## v0.4.0 – TaskOS CRUD

### Added

#### Task Management

- List Tasks workflow (`201`)
- Complete Task workflow (`202`)
- Delete Task workflow (`203`)
- Task lookup by list index
- Task number validation
- Empty task list handling
- Out-of-range task detection
- Invalid input validation
- Decimal input rejection
- User-friendly error responses

#### Router

- `/tasks`
- `/done`
- `/delete`

command routing

#### Workflow Improvements

- Shared validation pipeline
- Shared task lookup logic
- Standardized success responses
- Standardized error responses
- Consistent workflow contracts
- Reusable task validation architecture

### Improved

- Task workflow consistency
- Error handling across TaskOS
- Telegram response formatting
- Workflow maintainability
- CRUD workflow reuse
- Overall TaskOS reliability

### Architecture

```text
Telegram
      │
      ▼
001 - Gateway
      │
      ▼
002 - Router
      │
      ▼
 ┌─────────────┐
 │   TaskOS    │
 ├─────────────┤
 │200 Add      │
 │201 List     │
 │202 Complete │
 │203 Delete   │
 └─────────────┘
      │
      ▼
Supabase
```

### Status

✅ TaskOS CRUD complete

✅ Full task lifecycle implemented

✅ Input validation standardized

✅ Production-ready task management foundation established

🚀 Ready for advanced TaskOS features (Edit, Priority, Due Dates, Categories, Search)