---
name: project-docs-generator
description: Generates project documentation (PRD.md, CLAUDE.md, PLANNING.md, TASKS.md) based on a Project Brief and selected guideline. Use when the user has a defined project and needs documentation, or after completing project-discovery.
---

# Project Documentation Generator

Generates comprehensive project documentation based on a Project Brief and selected quality guideline.

## When to Use This Skill

- User has a Project Brief (from project-discovery or manually created)
- User asks for PRD, project docs, or documentation
- User wants to set up a new project with proper structure
- After completing the project-discovery interview

## Available Guidelines

| Guideline | Use When | Level |
|-----------|----------|-------|
| `academic-msc` | M.Sc. submissions, formal projects | Comprehensive |
| `lean-startup` | MVPs, hackathons, prototypes | Minimal |

See [guidelines/](guidelines/) for full details on each.

---

## Execution Flow

### Step 1: Determine Guideline

**If user specifies**:
- "Use academic standards" → `academic-msc`
- "Keep it lean" / "MVP docs" → `lean-startup`

**If not specified**, ask:
> "What type of project is this?
> - **Academic/formal** → comprehensive documentation
> - **MVP/prototype** → minimal documentation"

**Default**: `academic-msc` (better to over-document)

### Step 2: Load Guideline

1. Read [guidelines/_base.md](guidelines/_base.md) (always)
2. Read selected guideline (e.g., [guidelines/academic-msc.md](guidelines/academic-msc.md))
3. Apply guideline requirements to generation

### Step 3: Validate Input

Check that Project Brief contains:
- [ ] Project name
- [ ] Problem statement
- [ ] Target users  
- [ ] Core features (at least 3)
- [ ] Success metric

**If missing**: Ask for the missing information before generating.

### Step 4: Generate Documents

Generate in order:
1. **PRD.md** — Defines WHAT we're building
2. **PLANNING.md** — Defines HOW we'll build it
3. **CLAUDE.md** — Defines development RULES
4. **TASKS.md** — Defines the WORK breakdown

### Step 5: Save & Report

1. Create `docs/` directory
2. Save all four files
3. Report what was generated and any sections needing review

---

## Guideline-Specific Rules

### academic-msc

**PRD.md**:
- 7 major sections with tables
- Detailed use cases (not just user stories)
- KPIs with measurement methods
- Out-of-scope section

**PLANNING.md**:
- C4 diagrams (Context + Container minimum)
- 2-3 ADRs with trade-off analysis
- API documentation if applicable

**CLAUDE.md**:
- 150-line file limit (strict)
- Prompt documentation requirements
- Full project structure template
- Git commit format

**TASKS.md**:
- 5-phase structure
- ISO/IEC 25010 checklist
- Daily progress log

### lean-startup

**PRD.md**:
- One page maximum
- 5 sections only (Problem, Solution, User, Features, Metric)

**PLANNING.md**:
- One diagram (ASCII OK)
- Tech decisions as bullets
- No ADRs required

**CLAUDE.md**:
- 4 sections max
- No strict file limits

**TASKS.md**:
- Now/Next/Later format
- Simple checkboxes

---

## Section Mapping

| Project Brief Section | PRD | PLANNING | CLAUDE | TASKS |
|----------------------|-----|----------|--------|-------|
| Vision & Purpose | ✓ | | | |
| Core Functionality | ✓ | | | ✓ |
| Data Architecture | ✓ | ✓ | | ✓ |
| MVP Specification | ✓ | | | ✓ |
| User Experience | ✓ | ✓ | | ✓ |
| Project Scope | ✓ | ✓ | ✓ | ✓ |
| Platform & Delivery | ✓ | ✓ | ✓ | ✓ |
| Tech Recommendations | | ✓ | ✓ | ✓ |
| Development Process | | | ✓ | ✓ |
| Risks & Questions | ✓ | ✓ | | ✓ |

---

## Output Format

After generation:

```
## Documentation Generated ✓

**Guideline**: [name]

### Files Created
- docs/PRD.md
- docs/PLANNING.md
- docs/CLAUDE.md
- docs/TASKS.md

### Needs Review
- [Section]: [Why]

### Assumptions Made
- [List any inferences made]
```

---

## Error Handling

**If Project Brief is too vague**:
```
I need more information before generating documentation.

Missing:
- [What's missing]

Would you like to run project-discovery first?
```

**If guideline doesn't fit**:
```
The [guideline] doesn't seem right for this project.

Consider:
- [alternative]: better for [reason]
```
