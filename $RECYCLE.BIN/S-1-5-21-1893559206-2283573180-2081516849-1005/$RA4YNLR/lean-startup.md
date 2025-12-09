# Lean Startup Guideline

Minimal documentation for rapid MVP development.

---

## Meta

```yaml
id: lean-startup
version: 1.0
extends: _base
philosophy: Move fast, validate, iterate
```

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

### Skip These
- Detailed architecture docs
- Testing requirements
- Complex git workflows
- Prompt documentation

---

## PLANNING.md Requirements

**One diagram maximum.** ASCII art is fine:

```
┌──────┐     ┌─────────┐     ┌─────────┐
│ User │────▶│ Your App│────▶│ API     │
└──────┘     └─────────┘     └─────────┘
```

**Tech decisions as bullets:**
- Frontend: React (I know it)
- Backend: Node (matches frontend)
- Database: SQLite (no setup)
- Hosting: Vercel (free)

No ADRs required.

---

## TASKS.md Requirements

**Simple checklist only:**

```markdown
# Tasks

## Now
- [ ] Set up project
- [ ] Core feature 1
- [ ] Core feature 2

## Next
- [ ] Feature 3
- [ ] Basic testing

## Later
- [ ] Nice-to-have 1
- [ ] Nice-to-have 2
```

No status emojis. No due dates. No phases.

---

## Testing Requirements

- Test happy path manually
- ONE test for critical function
- If it breaks, you'll know

### Don't Do
- Coverage percentages
- Tests for obvious code
- Block shipping for tests

---

## README Requirements

**Three sections:**

```markdown
# Project Name

What is this? [1-2 sentences]

## Setup
npm install
npm run dev

## Usage
[Screenshot]
```

---

## Security

- Use `.env` for secrets
- Don't commit `.env`
- Done

---

## What This Skips

| Academic Requirement | Lean Approach |
|---------------------|---------------|
| ISO/IEC 25010 | Ship and iterate |
| 70% coverage | Critical paths only |
| 150-line limit | Reasonable sizes |
| ADRs | Quick notes |
| C4 diagrams | Box and arrow |

---

## When to Graduate

Switch to `academic-msc` when:
- MVP is validated
- Team grows beyond 2-3
- Maintaining for months
- Stakeholders need docs

---

## Lean Checklist

Before shipping:
- [ ] Core feature works?
- [ ] Someone else can run it?
- [ ] Nothing embarrassingly broken?

Ship it.
