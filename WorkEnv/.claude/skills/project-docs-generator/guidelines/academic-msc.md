---
name: academic-msc-guideline
description: Complete submission requirements for M.Sc. Computer Science software projects. Based on Dr. Segal Yoram's guidelines with ISO/IEC 25010 compliance.
version: 2.0
---

# Academic M.Sc. Submission Guideline

Complete requirements for software project submissions at academic excellence level.

---

## Overview

This guideline ensures projects meet all submission criteria for M.Sc. Computer Science. Projects are evaluated on:
- Comprehensive documentation
- High-quality development
- Research capability demonstration
- Professional presentation

**Important Note**: Not every section is mandatory, but the more criteria met, the higher the quality evaluation and grade.

---

## 1. Project Documents and Planning

### 1.1 Product Requirements Document (PRD.md)

The central document defining project purpose and requirements.

**Required Sections:**

| Section | Contents |
|---------|----------|
| Project Overview | Context, background, problem statement |
| Problem Statement | Clear description of user problem being solved |
| Market Analysis | Competitive landscape, strategic positioning |
| Target Audience | Stakeholders table with roles and interests |
| Project Goals | Measurable objectives with KPIs |
| Acceptance Criteria | How to evaluate if project meets requirements |
| Functional Requirements | Prioritized feature list (P0/P1/P2) with user stories |
| Use Cases | Actor, preconditions, main flow, postconditions, alternatives |
| Non-Functional Requirements | Performance, security, availability, scalability |
| Assumptions | What is assumed to be true |
| Dependencies | External systems table (dependency, type, risk level) |
| Constraints | Technical and organizational limitations |
| Out-of-Scope | Explicitly excluded items |
| Timeline & Milestones | Schedule table with deliverables per phase |
| Checkpoint Reviews | Review dates and criteria |

**Format Requirements:**
- Stakeholders as table: `| Stakeholder | Role | Interest |`
- KPIs as table: `| KPI | Target | Measurement Method |`
- Features prioritized: P0 (Must), P1 (Should), P2 (Nice-to-have)
- Use cases with full flow documentation

### 1.2 Architecture Document (PLANNING.md)

Comprehensive technical description of system structure and operation.

**Required Diagrams:**

| Diagram Type | Purpose | Required Level |
|--------------|---------|----------------|
| C4 Context | System and external actors | Mandatory |
| C4 Container | Major components/services | Mandatory |
| C4 Component | Internal component structure | For complex systems |
| UML Sequence | Complex process interactions | As needed |
| UML Class | Object relationships | For OOP projects |
| Deployment | Infrastructure and operations | Mandatory |

**Architectural Decision Records (ADRs):**

Minimum 2-3 ADRs documenting major decisions:

```markdown
## ADR-001: [Decision Title]

**Status:** Accepted | Superseded | Deprecated

**Context:**
[What situation requires a decision]

**Decision:**
[What was decided]

**Consequences:**
[Positive and negative outcomes]

**Alternatives Considered:**
[Other options and why rejected]

**Trade-offs:**
[What was gained vs. sacrificed]
```

**API Documentation (if applicable):**
- Complete endpoint documentation
- Data schemas for all entities
- Contracts between system components
- Request/response examples

---

## 2. Code Documentation and Project Structure

### 2.1 README File (Comprehensive)

Must serve as complete user manual.

**Required Sections:**

| Section | Contents |
|---------|----------|
| Installation Instructions | System requirements, step-by-step setup, all platforms |
| Environment Setup | How to configure environment variables |
| Troubleshooting | Common issues and solutions |
| Usage Instructions | How to run in different modes (CLI flags, GUI) |
| Examples & Demonstrations | Working code examples, screenshots, demo videos |
| Configuration Guide | All configurable parameters explained |
| Contribution Guidelines | Code standards, PR process |
| License & Credits | License file, third-party attribution |

### 2.2 Modular Project Structure

**Required Structure:**

```
project-root/
├── src/                    # Source code
│   ├── agents/             # Agent modules (if applicable)
│   ├── core/               # Core business logic
│   ├── utils/              # Helper functions
│   └── config/             # Configuration code
├── tests/                  # Unit and integration tests
├── data/                   # Databases and input files
├── results/                # Experiment results
├── docs/                   # Additional documentation
├── config/                 # Configuration files
├── assets/                 # Images, graphs, resources
├── notebooks/              # Analysis notebooks (Jupyter)
├── prompts/                # Prompt engineering log
│   ├── README.md           # Overview and lessons learned
│   ├── architecture/       # Architecture prompts
│   ├── code-generation/    # Code generation prompts
│   ├── testing/            # Testing prompts
│   └── documentation/      # Documentation prompts
├── README.md
├── requirements.txt        # or package.json
├── .env.example
└── .gitignore
```

**File Size Limit:**
- **Maximum 150 lines per file** (strictly enforced)
- When file exceeds limit, refactor into smaller modules
- Each file should have single responsibility (separation of concerns)

**Naming Conventions:**
- Files: `snake_case.py` (Python), `kebab-case.ts` (TypeScript)
- Classes: `PascalCase`
- Functions: `snake_case` (Python), `camelCase` (JS/TS)
- Constants: `UPPER_SNAKE_CASE`

### 2.3 Code Quality and Comments

**Comment Standards:**
- Comments explain "WHY" not "WHAT"
- Every function, class, and module needs docstrings

**Docstring Requirements:**
```python
def function_name(param1: type, param2: type) -> return_type:
    """
    Brief description of function purpose.

    Args:
        param1: Description of parameter
        param2: Description of parameter

    Returns:
        Description of return value

    Raises:
        ExceptionType: When this occurs
    """
```

---

## 3. Configuration Management and Information Security

### 3.1 Configuration Files

**Separation Principle:**
- Configuration MUST be separated from code
- Use standard formats: `.json`, `.yaml`, `.env`
- No hardcoded values in source code

**Required Files:**
- `.env.example` - Template with safe defaults
- `.gitignore` - Must exclude sensitive config files

### 3.2 Information Security

**Critical Rule: No API keys or secrets in source code**

**Required Practices:**
- Use environment variables: `os.environ.get("API_KEY")`
- Hide `.env` files via `.gitignore`
- Provide `.env.example` without real values

---

## 4. Testing and Software Quality

### 4.1 Unit Tests

**Coverage Requirements:**
- **Minimum 70-80% coverage** for new code
- Enhanced coverage for critical business logic
- Must cover both normal paths AND edge cases

**Required Tools:**
- Standard frameworks: `pytest`, `unittest`, `jest`
- CI/CD pipeline integration
- Automated coverage reports

### 4.2 Handling Edge Cases and Failures

**Error Handling Requirements:**
- Defensive programming with input validation
- Clear, user-friendly error messages
- Detailed logging for debugging
- Graceful degradation when failures occur

### 4.3 Expected Test Results

- Document expected output for each test
- Generate automated reports with pass/fail rates
- Preserve logs of successful and failed runs

---

## 5. Research and Results Analysis

### 5.1 Parameter Investigation

**Sensitivity Analysis Process:**
1. Systematic experiments with controlled parameter changes
2. Accurate documentation of each parameter's effect
3. Identify critical parameters affecting performance

### 5.2 Results Analysis Notebook

**Required Tool:** Jupyter Notebook or equivalent

**Must Include:**
- Code + text + results combined
- Comparison between different algorithms/configurations
- Statistical analysis with confidence intervals
- LaTeX formulas for mathematical expressions

### 5.3 Visual Presentation of Results

**Chart Types:** Bar, Line, Heatmaps, Scatter, Box, Waterfall

**Quality Requirements:**
- Clear labels, consistent colors
- Detailed captions and legends
- High resolution (publication quality)

---

## 6. User Interface and User Experience

### 6.1 Quality Criteria (Usability)

**Nielsen's 10 Heuristics (Apply All):**
1. Visibility of system status
2. Match between system and real world
3. User control and freedom
4. Consistency and standards
5. Error prevention
6. Recognition over recall
7. Flexibility and efficiency of use
8. Aesthetic and minimalist design
9. Help users recognize and recover from errors
10. Help and documentation

### 6.2 Interface Documentation

- Screenshots of every screen/state
- Typical user workflow from start to goal
- Accessibility considerations

---

## 7. Version Management and Development Documentation

### 7.1 Best Practices with Git

**Commit Requirements:**
- **Minimum 10-20 commits** showing clear progression
- Format: `<type>(<scope>): <description>`
- Reference task IDs: `feat(auth): Add login flow [P2.1.3]`

**Commit Types:** feat, fix, docs, refactor, test, chore

### 7.2 The Prompt Book (Prompt Engineering Log)

**Directory Structure:**
```
prompts/
├── README.md              # Overview and lessons learned
├── architecture/          # System design prompts
├── code-generation/       # Code creation prompts
├── testing/               # Test generation prompts
└── documentation/         # Doc generation prompts
```

---

## 8. Costs and Pricing

### 8.1 Cost Analysis (If Using APIs)

**Token Usage Table:**

| Model | Input Tokens | Output Tokens | Total Cost |
|-------|--------------|---------------|------------|
| [Model] | [Count] | [Count] | $[Amount] |

### 8.2 Budget Management

- Batch processing for efficiency
- Model selection by cost-effectiveness
- Real-time usage tracking

---

## 9. Extensibility and Maintainability

### 9.1 Extension Points

- Enable adding functionality without core code changes
- Define clear interfaces between core and plugins
- API-first design with middleware support

### 9.2 Maintainability

| Characteristic | Description |
|----------------|-------------|
| Modularity | Independent components |
| Separation of Concerns | Each part handles one thing |
| Reusability | Write once, use many places |
| Analyzability | Easy to understand and debug |
| Testability | Easy to write automated tests |

---

## 10. International Quality Standards

### 10.1 Product Quality Characteristics (ISO/IEC 25010)

| Characteristic | Sub-characteristics | Requirement |
|----------------|---------------------|-------------|
| **Functional Suitability** | Completeness, Correctness, Appropriateness | Mandatory |
| **Performance Efficiency** | Time behavior, Resource utilization, Capacity | Mandatory |
| **Compatibility** | Interoperability, Coexistence | If applicable |
| **Usability** | Learnability, Operability, Error protection, Aesthetics, Accessibility | Mandatory |
| **Reliability** | Maturity, Availability, Fault tolerance, Recoverability | Mandatory |
| **Security** | Confidentiality, Integrity, Authenticity, Accountability | Mandatory |
| **Maintainability** | Modularity, Reusability, Analyzability, Modifiability, Testability | Mandatory |
| **Portability** | Adaptability, Installability, Replaceability | Recommended |

---

## Final Submission Checklist

### 1. Project Documents and Planning
- [ ] PRD.md with all sections
- [ ] Architecture documentation with C4 diagrams
- [ ] ADRs (minimum 2-3)

### 2. Code Documentation and Structure
- [ ] README.md at user manual level
- [ ] No file exceeds 150 lines
- [ ] Docstrings for all functions/classes

### 3. Configuration and Security
- [ ] Configuration separated from code
- [ ] No API keys in source code
- [ ] `.gitignore` configured

### 4. Testing and Quality
- [ ] 70%+ unit test coverage
- [ ] Edge cases documented
- [ ] Automated test reports

### 5. Research (if applicable)
- [ ] Parameter sensitivity analysis
- [ ] Analysis notebook
- [ ] Publication-quality graphs

### 6. UI/UX
- [ ] Screenshots of all screens
- [ ] Nielsen's heuristics applied

### 7. Version Management
- [ ] 10-20+ meaningful commits
- [ ] Prompt engineering log

### 8. Costs (if using APIs)
- [ ] Token usage table
- [ ] Optimization strategies

### 9. Extensibility
- [ ] Extension points documented

### 10. Quality Standards
- [ ] ISO/IEC 25010 addressed
