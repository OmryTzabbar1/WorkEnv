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
| `academic-msc` | M.Sc. submissions, formal projects | Comprehensive (10 sections) |
| `lean-startup` | MVPs, hackathons, prototypes | Minimal |

See [guidelines/](guidelines/) for full details on each.

## Submission Requirements Coverage (academic-msc)

The academic guideline covers 10 requirement categories:

1. **Project Documents and Planning** → PRD.md, PLANNING.md
2. **Code Documentation and Project Structure** → CLAUDE.md
3. **Configuration Management and Security** → CLAUDE.md
4. **Testing and Software Quality** → CLAUDE.md, TASKS.md
5. **Research and Results Analysis** → PLANNING.md, TASKS.md
6. **User Interface and User Experience** → PRD.md, PLANNING.md
7. **Version Management and Development Documentation** → CLAUDE.md
8. **Costs and Pricing** → PLANNING.md (if using APIs)
9. **Extensibility and Maintainability** → PLANNING.md, CLAUDE.md
10. **International Quality Standards (ISO/IEC 25010)** → All documents

---

## Execution Flow

### Step 1: Determine Guideline

**If user specifies a guideline:**
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

## Document Responsibilities

Each generated document covers specific submission requirements:

### PRD.md
**Covers:** Section 1 (Project Documents), Section 6 (UI/UX requirements)
- Project overview and problem statement
- Target audience and stakeholders
- Functional requirements with user stories
- Use cases with full flows
- Non-functional requirements
- Timeline and milestones
- Success metrics and KPIs

### PLANNING.md
**Covers:** Section 1 (Architecture), Section 5 (Research), Section 8 (Costs), Section 9 (Extensibility)
- C4 diagrams (Context, Container, Component)
- Architectural Decision Records (ADRs)
- API documentation
- Tech stack decisions with rationale
- Research methodology (if applicable)
- Cost analysis tables (if using APIs)
- Extension points and plugin architecture

### CLAUDE.md
**Covers:** Section 2 (Code/Structure), Section 3 (Config/Security), Section 4 (Testing), Section 7 (Version Management)
- Project structure (150-line file limit)
- Naming conventions
- Code quality standards
- Configuration management rules
- Security practices
- Testing requirements (70%+ coverage)
- Git workflow (10-20+ commits)
- Prompt engineering log structure

### TASKS.md
**Covers:** Section 4 (Testing tasks), Section 5 (Research tasks), Section 10 (ISO checklist)
- Phase-based task breakdown
- Testing tasks and coverage goals
- Research experiment tasks
- ISO/IEC 25010 compliance checklist
- Progress tracking

---

## Guideline-Specific Rules

### academic-msc (10 Submission Requirement Sections)

**PRD.md must include:**
- All sections from guideline 1.1
- Stakeholders table with roles and interests
- KPI table with measurement methods
- Detailed use cases (Actor, Preconditions, Flow, Postconditions)
- Non-functional requirements (performance, security, scalability)
- Out-of-scope section (explicit exclusions)
- Timeline with milestone deliverables

**PLANNING.md must include:**
- C4 diagrams: Context (mandatory), Container (mandatory), Component (if complex)
- Minimum 2-3 ADRs with: Status, Context, Decision, Consequences, Trade-offs
- API documentation with data schemas (if applicable)
- Deployment diagram
- Cost analysis table (if using APIs)
- Extension points documentation

**CLAUDE.md must include:**
- **150-line file limit** (strictly enforced)
- Full project structure template with `prompts/` directory
- Naming conventions table
- Docstring requirements
- Configuration separation rules
- Security practices (no API keys in code)
- Git commit format: `<type>(<scope>): <description> [TaskID]`
- 10-20+ commits required
- 70-80% test coverage target

**TASKS.md must include:**
- 5-phase structure:
  1. Project Setup & Infrastructure
  2. Core Development
  3. Testing & Quality Assurance
  4. Research & Analysis (if applicable)
  5. Final Documentation & Polish
- Task format: `| ID | Task | Priority | Status | Notes |`
- ISO/IEC 25010 submission checklist (all 10 sections)
- Daily progress log template
- Blockers tracking

### lean-startup

**PRD.md:**
- One page maximum
- 5 sections only (Problem, Solution, User, Features, Metric)

**PLANNING.md:**
- One diagram (ASCII OK)
- Tech decisions as bullets
- No ADRs required

**CLAUDE.md:**
- 4 sections max
- No strict file limits

**TASKS.md:**
- Now/Next/Later format
- Simple checkboxes

---

## Output Format

After generation, provide:

## Documentation Generated ✓

**Guideline used:** [guideline name]

### Files Created
- `docs/PRD.md`
- `docs/PLANNING.md`
- `docs/CLAUDE.md`
- `docs/TASKS.md`

### Sections Needing Review
- [Section]: [Why it needs human review]

### Assumptions Made
- [Assumption 1]
- [Assumption 2]

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
