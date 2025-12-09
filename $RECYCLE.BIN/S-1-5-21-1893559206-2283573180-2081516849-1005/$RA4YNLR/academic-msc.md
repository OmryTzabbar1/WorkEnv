# Academic M.Sc. Guideline

For M.Sc. Computer Science software project submissions requiring academic excellence.

---

## Meta

```yaml
id: academic-msc
version: 1.0
extends: _base
compliance: ISO/IEC 25010
source: Dr. Segal Yoram's submission guidelines
```

---

## Overview

Targets distinguished students with emphasis on:
- Comprehensive documentation
- Research capabilities demonstration  
- High-quality development practices
- Professional presentation

---

## ISO/IEC 25010 Compliance

All projects must address:

| Characteristic | Requirement |
|----------------|-------------|
| Functional Suitability | Mandatory |
| Performance Efficiency | Mandatory |
| Compatibility | If applicable |
| Usability | Mandatory |
| Reliability | Mandatory |
| Security | Mandatory |
| Maintainability | Mandatory |
| Portability | Recommended |

---

## PRD.md Requirements

### Required Sections (7 total)

1. **Project Overview & Background**
   - Project name, version, date, author
   - Problem statement
   - Value proposition
   - Market/competitive analysis
   - Stakeholders table

2. **Objectives & Success Metrics**
   - Measurable goals with checkboxes
   - KPI table (metric, target, measurement method)
   - Acceptance criteria

3. **Functional Requirements**
   - Prioritized features (P0/P1/P2) with user stories
   - Detailed use cases (Actor, Preconditions, Flow, Postconditions)

4. **Non-Functional Requirements**
   - Performance targets
   - Security requirements
   - Scalability strategy
   - Availability targets

5. **Assumptions, Dependencies & Constraints**
   - External dependencies table
   - Technical constraints
   - Out-of-scope items

6. **Timeline & Milestones**
   - Schedule table
   - Checkpoint reviews

7. **Appendices**
   - Glossary
   - References

---

## CLAUDE.md Requirements

### Mandatory Sections

1. **Git Workflow**
   - Minimum 10-20 commits
   - Format: `<type>(<scope>): <description>`
   - Task ID references: `[P2.2.1]`

2. **Prompt Documentation**
   - Save to `prompts/` directory
   - Organize: `architecture/`, `code-generation/`, `testing/`, `documentation/`

3. **Code Quality**
   - **Maximum 150 lines per file** (strict)
   - Single responsibility per file

4. **Project Structure**
   ```
   project-root/
   ├── src/
   │   ├── core/
   │   ├── utils/
   │   └── config/
   ├── tests/
   ├── data/
   ├── results/
   ├── docs/
   ├── config/
   ├── assets/
   ├── notebooks/
   ├── prompts/
   ├── README.md
   ├── requirements.txt
   ├── .env.example
   └── .gitignore
   ```

5. **Naming Conventions**
   - Files: `snake_case.py`, `kebab-case.ts`
   - Classes: `PascalCase`
   - Functions: `snake_case` (Python), `camelCase` (JS)
   - Constants: `UPPER_SNAKE_CASE`

6. **Documentation Standards**
   - Comments explain "why" not "what"
   - Docstrings for all functions/classes

---

## PLANNING.md Requirements

### Diagrams

1. **C4 Model** (minimum Context + Container)
2. **UML** (sequence/class as applicable)
3. **Deployment diagram**

### ADRs (2-3 minimum)

Format:
- Status
- Context
- Decision
- Consequences
- Trade-offs

### API Documentation

- Endpoint documentation
- Data schemas
- Contracts

---

## TASKS.md Requirements

### Phase Structure (5 phases)

1. Project Setup & Infrastructure
2. Core Development
3. Testing & Quality Assurance
4. Research & Analysis (if applicable)
5. Final Documentation & Polish

### Task Format

| ID | Task | Priority | Status | Due | Notes |
|----|------|----------|--------|-----|-------|
| P1.1.1 | [Desc] | P0/P1/P2 | 🔴/🟡/🟢 | - | - |

### Required Sections

- Daily progress log
- Blockers table
- ISO/IEC 25010 submission checklist

---

## Testing Requirements

- **70-80% minimum coverage**
- Edge cases documented
- Automated test reports
- Error handling tests

---

## Research Requirements (If Applicable)

- Parameter experiments with sensitivity analysis
- Jupyter analysis notebook
- LaTeX formulas
- Publication-quality visualizations

---

## Security Requirements

- No API keys in source
- Environment variables for secrets
- `.gitignore` configured
- `.env.example` provided

---

## Submission Checklist

### Documentation
- [ ] PRD.md (all 7 sections)
- [ ] Architecture diagrams
- [ ] README.md (user manual level)
- [ ] Prompt engineering log

### Code
- [ ] No file > 150 lines
- [ ] Docstrings everywhere
- [ ] Consistent style

### Testing
- [ ] 70%+ coverage
- [ ] Edge cases documented

### Version Control
- [ ] 10-20+ commits
- [ ] License file
- [ ] Third-party credits
