# LifeOS Workflows

This directory contains the exported n8n workflows that make up the LifeOS platform.

## Current Workflows

| Workflow | Purpose |
|----------|---------|
| 001-Gateway | Telegram entry point, user registration, request normalization |
| 002-Router | Command parsing and module routing |
| 003-TaskOS | Task validation, creation, and persistence |

## Importing

1. Open n8n.
2. Create a new workflow.
3. Click **Import from File**.
4. Select the required JSON workflow.

> Some credentials (Telegram, Supabase) must be configured manually after import.