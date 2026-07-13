# LifeOS

A personal operating system for college — a Telegram-driven automation platform that manages tasks, study, knowledge, projects, finances, and career preparation through one connected pipeline instead of multiple disconnected apps.

> 📚 **Explore the complete documentation, architecture, roadmap, and development guides:**  
> **https://de9856.github.io/LifeOS/**

---

## Current Status

**Version:** v0.3.0 – Core Architecture & TaskOS MVP

### ✅ Completed

- Telegram Gateway
- Automatic User Registration
- Existing User Detection
- Modular Router
- Command Parsing
- Shared Request Contract
- TaskOS (CRUD)
- Supabase Integration
- Layered Workflow Architecture
- Engineering Standards & Documentation

### 🚧 In Progress

- TaskOS

### 📋 Planned

- FinanceOS
- CalendarOS
- ReminderOS
- NotesOS
- StudyOS
- Knowledge Vault
- CareerOS
- AnalyticsOS
- AI Gateway
- React Dashboard

---

# Features

## Gateway

- Telegram Bot integration
- Automatic user registration
- Returning user detection
- Standardized request generation

## Router

- Command extraction
- Argument extraction
- Dynamic module routing
- Centralized command registry

## TaskOS

- Natural language task creation
- Task persistence
- User ownership
- Confirmation responses

---

# Architecture

```
                Telegram
                    │
                    ▼
            001 - Gateway
      (Identity & Platform Layer)
                    │
                    ▼
             002 - Router
     (Command Parsing & Routing)
                    │
                    ▼
             003 - TaskOS
        (Business Logic Layer)
                    │
                    ▼
               Supabase
```

---

# Request Flow

```
Telegram

↓

Gateway

↓

Router

↓

TaskOS

↓

Supabase

↓

Telegram Response
```

---

# Current Database

## users

Stores platform identity.

| Column |
|---------|
| id |
| telegram_id |
| username |
| first_name |
| last_name |
| language_code |
| timezone |
| created_at |
| updated_at |

---

## tasks

Stores user-created tasks.

| Column |
|---------|
| id |
| user_id |
| title |
| description |
| priority |
| status |
| due_date |
| created_at |
| completed_at |

---

# Tech Stack

| Layer | Technology |
|--------|------------|
| Workflow Engine | n8n |
| Database | Supabase (PostgreSQL) |
| Messaging | Telegram Bot API |
| Containerization | Docker |
| Webhook Exposure | Cloudflare Tunnel |
| Future AI | Gemini API |
| Future Dashboard | React + Tailwind |

---

# Repository Structure

```
LifeOS/

├── data/
├── database/
├── docker/
├── docs/
├── scripts/
├── src/
└── workflows/
```

---

# Development Roadmap

## ✅ Phase 1 — Foundation

- Docker
- Self-hosted n8n
- Telegram
- Cloudflare Tunnel
- Supabase

---

## ✅ Phase 2 — Core Architecture

- Gateway
- Router
- TaskOS
- Shared Request Contract
- Shared Response Contract
- Engineering Standards

---

## 🚧 Phase 3 — Platform Expansion

- FinanceOS
- CalendarOS
- ReminderOS
- NotesOS

---

## 📋 Phase 4 — AI Layer

- AI Gateway
- Intent Detection
- Natural Language Understanding
- Cross-module reasoning

---

## 📋 Phase 5 — Dashboard

- React Frontend
- Authentication
- Analytics
- User Settings

---

# Design Principles

LifeOS follows several engineering principles:

- Modular architecture
- Separation of concerns
- Event-driven workflows
- Standardized request contract
- Standardized response contract
- Independent modules
- Scalable workflow design

Documentation for the architecture and engineering standards can be found in the `docs/` directory.

---

# Current Modules

| Module | Status |
|---------|--------|
| Gateway | ✅ |
| Router | ✅ |
| TaskOS | 🚧 |
| FinanceOS | 📋 |
| CalendarOS | 📋 |
| ReminderOS | 📋 |
| NotesOS | 📋 |
| StudyOS | 📋 |
| Knowledge Vault | 📋 |
| CareerOS | 📋 |
| AnalyticsOS | 📋 |
| AI Gateway | 📋 |

---

# Setup

```bash
git clone https://github.com/<your-username>/LifeOS.git

cd LifeOS

docker compose up -d
```

Configure the required environment variables:

- TELEGRAM_BOT_TOKEN
- SUPABASE_URL
- SUPABASE_KEY
- CLOUDFLARE_TUNNEL_TOKEN

---

# Changelog

Project history is available in:

```
CHANGELOG.md
```

---

# License

MIT License
