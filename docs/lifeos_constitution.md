# LifeOS Constitution

The following rules define the engineering standards for the LifeOS platform.

---

# Rule 1

Gateway is the only entry point from external platforms.

---

# Rule 2

Router never contains business logic.

---

# Rule 3

Modules own their own database tables.

---

# Rule 4

Modules never communicate directly with each other.

Communication always happens through the Router.

---

# Rule 5

Every request follows the LifeOS Request Contract.

---

# Rule 6

Every module follows the same internal architecture.

```
Input

↓

Validation

↓

Business Logic

↓

Persistence

↓

Response
```

---

# Rule 7

Every module validates its own input.

No module assumes incoming data is valid.

---

# Rule 8

Business Logic prepares data.

Persistence only stores data.

---

# Rule 9

Platform-specific logic belongs only in the Gateway.

Modules should not know whether the request came from:

- Telegram
- Discord
- WhatsApp
- Web
- API

---

# Rule 10

Each module owns its own database tables.

Cross-module table access is prohibited.

---

# Rule 11

Every module returns a standard response.

Example:

```json
{
    "success": true,
    "response_message": "Task created successfully."
}
```

---

# Rule 12

New functionality should be implemented by extending existing modules or creating new modules—not by adding unrelated logic to the Router or Gateway.

---

# Rule 13

Every workflow, node, and database object should have meaningful names.

Avoid generic names such as:

- IF1
- Code2
- Set3

Use descriptive names instead.

---

# Rule 14

LifeOS should always prioritize readability, maintainability, and scalability over short-term convenience.