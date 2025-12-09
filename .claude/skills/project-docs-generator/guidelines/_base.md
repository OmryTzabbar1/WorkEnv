# Base Guideline

Universal requirements that all guidelines extend.

---

## Meta

```yaml
id: _base
version: 1.0
```

---

## Universal Requirements

### File Standards
- Markdown format, UTF-8 encoding
- Maximum line length: 120 characters

### Output Location
- All documents go to `docs/` directory
- Files: `PRD.md`, `CLAUDE.md`, `PLANNING.md`, `TASKS.md`

---

## Minimum Required Sections

### PRD.md
- [ ] Project name and version
- [ ] Problem statement
- [ ] Target users
- [ ] Feature list with priorities
- [ ] Success criteria

### CLAUDE.md
- [ ] Project overview
- [ ] Code organization rules
- [ ] Naming conventions

### PLANNING.md
- [ ] Architecture overview
- [ ] Technology choices with rationale

### TASKS.md
- [ ] Task breakdown
- [ ] Priority indicators
- [ ] Status tracking

---

## Validation

### Before Generation
- Project Brief must include: purpose, users, features

### After Generation
- All required sections present
- No placeholder text (`[TBD]`, `[TODO]`)
- Cross-references valid
