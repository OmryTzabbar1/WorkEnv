---
name: lean-startup-guideline
description: Minimal documentation for rapid MVP development. Use for quick prototypes, hackathons, or validation projects.
version: 1.0
---

# Lean Startup Guideline

Minimal documentation for rapid MVP development.

---

## Overview

For:
- Quick MVPs (days to 2 weeks)
- Solo developers
- Hackathons and prototypes
- Validation-focused projects

**Philosophy**: Documentation helps you build faster, not slow you down.

---

## PRD.md Requirements

**One page maximum.** Five sections only:

```markdown
# [Project Name] - PRD

## Problem
[2-3 sentences - what pain point?]

## Solution
[2-3 sentences - how does it solve it?]

## Target User
[1 sentence - who specifically?]

## Core Features
- [Feature 1]
- [Feature 2]
- [Feature 3]

## Success Metric
[1 metric - how will you know it works?]
```

---

## CLAUDE.md Requirements

**Four sections maximum:**

```markdown
# CLAUDE.md

## Overview
[3 sentences max]

## How to Run
[Commands only]

## Key Constraints
[Hard rules if any]

## Code Style
[Use linter defaults]
```

---

## PLANNING.md Requirements

**One diagram maximum.** ASCII art is fine:

```
┌──────┐     ┌─────────┐     ┌─────────┐
│ User │────▶│ Your App│────▶│ API     │
└──────┘     └─────────┘     └─────────┘
```

**Tech decisions as bullets:**
- Frontend: [Tech] (reason)
- Backend: [Tech] (reason)
- Database: [Tech] (reason)
- Hosting: [Tech] (reason)

No ADRs required.

---

## TASKS.md Requirements

**Simple checklist only:**

```markdown
# Tasks

## Now
- [ ] [Task 1]
- [ ] [Task 2]

## Next
- [ ] [Task 3]
- [ ] [Task 4]

## Later
- [ ] [Task 5]
```

No status emojis. No due dates.

---

## Testing (Lean Version)

- Test happy path manually
- ONE test for critical function
- If it breaks, you'll know

---

## README (Lean Version)

```markdown
# Project Name

[1-2 sentences]

## Setup
[commands]

## Usage
[screenshot or description]
```

---

## Security

- Use `.env` for secrets
- Don't commit `.env`

---

## Lean Checklist

Before shipping:
- [ ] Core feature works?
- [ ] Someone else can run it?
- [ ] Nothing embarrassingly broken?

Ship it.
