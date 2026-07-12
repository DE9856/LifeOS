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

## v0.3.0 – LifeOS Core Architecture & TaskOS MVP

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
- Centralized Module Registry
- Dynamic module routing
- Module metadata (`module_id`, `module_name`, `route`, `description`)

#### TaskOS

- Dedicated TaskOS module
- Request validation layer
- Business Logic layer (`Prepare Task`)
- Task creation workflow
- Supabase task persistence
- Standard task preparation pipeline
- Standard response builder
- Success and validation responses

#### Database

- End-to-end task persistence
- Shared internal `user_id` across all modules
- Canonical task creation pipeline

#### Engineering Standards

- Standard workflow naming convention
- Standard node naming convention
- Layered module architecture
- Standard request contract
- Standard response structure
- Canonical module data model
- Shared module development template
- LifeOS Engineering Standards
- LifeOS Project Constitution

### Improved

- Separation of concerns between Gateway, Router, and modules
- Modular workflow architecture
- Consistent data flow across workflows
- Internal data normalization
- User identity propagation
- Workflow readability and maintainability
- Module scalability for future expansion
- Overall system architecture

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
003 - TaskOS
    │
    ▼
Supabase
```

### Status

✅ Modular LifeOS architecture established

✅ First end-to-end feature complete

✅ TaskOS MVP operational

✅ Engineering standards established

🚀 Foundation prepared for FinanceOS, CalendarOS, NotesOS, ReminderOS, MemoryOS, and AI modules