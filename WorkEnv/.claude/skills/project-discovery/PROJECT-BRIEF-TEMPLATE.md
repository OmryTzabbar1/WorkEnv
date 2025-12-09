# Project Brief Template

Use this template to generate the final Project Brief after completing all 9 interview phases.

---

# Project Brief: [Project Name]

Generated: [Date]

---

## Executive Summary

[2-3 sentence overview capturing the essence of the project]

---

## 1. Vision & Purpose

### Problem Statement
[Clear description of the problem being solved]

### Target Users
[Detailed user persona(s)]

### Value Proposition
[Core value in one sentence]

### Success Criteria
[How we'll know this project succeeded]

---

## 2. Core Functionality

### Must-Have Features (P0)
| Feature | User Story | Acceptance Criteria |
|---------|------------|---------------------|
| [Name] | As a [user], I want [action] so that [benefit] | [Testable criteria] |

### Should-Have Features (P1)
| Feature | User Story | Acceptance Criteria |
|---------|------------|---------------------|
| [Name] | [User story] | [Criteria] |

### Nice-to-Have Features (P2)
| Feature | User Story | Notes |
|---------|------------|-------|
| [Name] | [User story] | [Why deferred] |

### Guardrails & Constraints
- [What users cannot/should not do]
- [Safety/privacy/compliance requirements]

---

## 3. Data Architecture

### Core Entities
| Entity | Description | Key Attributes |
|--------|-------------|----------------|
| [Name] | [What it represents] | [Main fields] |

### Relationships
```
[Entity A] ---(relationship)---> [Entity B]
```

### Data Sensitivity
- [PII considerations]
- [Security requirements]

---

## 4. MVP Specification

### Core Workflow
[Step-by-step description of the one essential user journey]

### MVP Feature Set
- [ ] [Feature 1 - essential]
- [ ] [Feature 2 - essential]
- [ ] [Feature 3 - essential]

### Explicitly Excluded from MVP
- [Feature X - reason]

### MVP Success Metric
[Single metric that validates the MVP]

---

## 5. User Experience

### User Journey Map
1. [Entry point] → [User sees...]
2. [Action 1] → [System responds...]
3. [Completion] → [User achieves...]

### Key Screens/States
| Screen | Purpose | Key Elements |
|--------|---------|--------------|
| [Name] | [What user does here] | [Main components] |

### UX Priorities
1. [Most important consideration]
2. [Second priority]
3. [Third priority]

---

## 6. Project Scope

### Timeline
- **Type**: [Quick Script / Small Project / Medium Project / Long-term Product]
- **Estimated Duration**: [Time range]

### Future Roadmap
| Phase | Features | Timing |
|-------|----------|--------|
| MVP | [Features] | [When] |
| v1.1 | [Features] | [When] |
| v2.0 | [Features] | [When] |

---

## 7. Platform & Delivery

### Primary Platform
[Web / Mobile / Desktop / CLI / Extension / API]

### Requirements
- [Device/browser support]
- [Offline requirements]
- [Performance expectations]

### Integrations
| System | Purpose | Priority |
|--------|---------|----------|
| [Name] | [Why needed] | [P0/P1/P2] |

---

## 8. Technology Recommendations

### Recommended Stack
| Layer | Technology | Rationale |
|-------|------------|-----------|
| Frontend | [Tech] | [Why] |
| Backend | [Tech] | [Why] |
| Database | [Tech] | [Why] |
| Hosting | [Platform] | [Why] |

### Deployment Strategy
[How the project will be deployed]

---

## 9. Development Process

### Repository Structure
```
project-root/
├── [folder structure]
```

### Conventions
- **File naming**: [Convention]
- **Commit messages**: [Format]

### Quality Assurance
- **Testing**: [Approach]
- **CI/CD**: [Pipeline or "Not needed"]

---

## 10. Open Questions & Risks

### Unresolved Questions
- [ ] [Question needing research]

### Identified Risks
| Risk | Impact | Mitigation |
|------|--------|------------|
| [Risk] | [H/M/L] | [Strategy] |

### Assumptions
- [Assumption 1]
- [Assumption 2]

---

## Ready for Documentation Generation

This Project Brief can be passed to the **project-docs-generator** skill to create:
- PRD.md
- CLAUDE.md
- PLANNING.md
- TASKS.md
