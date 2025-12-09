# WorkEnv - Claude Code Skills Repository

## Project Overview

This is a **meta-development project** - a repository of Claude Code skills designed to improve software development workflows. It contains reusable skills that help transform vague project ideas into comprehensive, production-ready documentation.

**Purpose**: Provide a structured, repeatable process for project planning and documentation that can be used across any software project.

**Type**: Development Tooling / AI Skills Library
**Scope**: Long-term Product (maintained and extended over time)
**Users**: Software developers, students, researchers using Claude Code

---

## Project Structure

### Essential Files to Read on Every Session

When starting work on this project, Claude should read these files in order:

1. **PROJECT.md** (this file) - Project context and structure
2. **CLAUDE.md** - Work instructions and conventions for this project
3. **README.md** - User-facing documentation
4. **TASKS.md** (if exists) - Current task list and progress

### Directory Structure

```
E:/                                      # Project root
├── README.md                            # User documentation
├── PROJECT.md                           # Project description (this file)
├── CLAUDE.md                            # Claude work instructions
├── TASKS.md                             # Task tracking (created when needed)
├── .gitignore                           # Git ignore rules
│
├── .claude/                             # Claude Code configuration
│   ├── settings.local.json              # Local settings (not in git)
│   └── skills/                          # The skills library
│       ├── project-discovery/           # Skill #1: Interview agent
│       │   ├── SKILL.md                 # Main skill definition
│       │   └── PROJECT-BRIEF-TEMPLATE.md # Output template
│       │
│       └── project-docs-generator/      # Skill #2: Documentation generator
│           ├── SKILL.md                 # Main skill definition
│           └── guidelines/              # Quality guidelines
│               ├── _base.md             # Universal requirements
│               ├── academic-msc.md      # Comprehensive standards
│               └── lean-startup.md      # Minimal MVP standards
│
└── todo/                                # Planning and scratch work
    └── README.md                        # Planning notes
```

---

## Key Components

### 1. Project Discovery Skill
**Location:** `.claude/skills/project-discovery/`

**What it does:**
- Conducts 9-phase interview with users
- Transforms vague ideas into structured Project Briefs
- Asks clarifying questions across: vision, features, data, MVP, UX, scope, platform, tech stack, process

**Key files:**
- `SKILL.md` - Interview agent logic and question templates
- `PROJECT-BRIEF-TEMPLATE.md` - Output format specification

**Input:** Vague project idea
**Output:** Structured Project Brief (markdown)

### 2. Project Documentation Generator Skill
**Location:** `.claude/skills/project-docs-generator/`

**What it does:**
- Consumes Project Briefs (from discovery or manual)
- Generates 4 comprehensive documentation files
- Applies quality guidelines based on project type

**Generated outputs:**
- `PRD.md` - Product Requirements Document
- `PLANNING.md` - Architecture and technical planning
- `CLAUDE.md` - Development rules and conventions
- `TASKS.md` - Implementation task breakdown

**Key files:**
- `SKILL.md` - Generator logic and execution flow
- `guidelines/_base.md` - Universal requirements
- `guidelines/academic-msc.md` - Comprehensive M.Sc. standards (10 sections)
- `guidelines/lean-startup.md` - Minimal MVP standards

**Input:** Project Brief (markdown)
**Output:** 4 documentation files in `docs/` directory

---

## Guidelines System

The documentation generator uses **swappable guidelines** to adjust documentation depth:

### Base Guideline (`_base.md`)
- Universal requirements all guidelines inherit
- Defines minimum required sections
- File standards (UTF-8, max 120 chars per line)
- Validation rules

### Academic M.Sc. Guideline (`academic-msc.md`)
- **Use for:** Formal projects, thesis submissions, high-quality production
- **Coverage:** All 10 M.Sc. Computer Science submission requirements
- **Standards:** ISO/IEC 25010 compliance
- **Features:**
  - C4 diagrams (Context, Container, Component)
  - Architectural Decision Records (ADRs)
  - 150-line file limit enforcement
  - 70-80% test coverage requirements
  - Comprehensive stakeholder tables, KPI tracking
  - Prompt engineering log structure

### Lean Startup Guideline (`lean-startup.md`)
- **Use for:** MVPs, hackathons, quick validation projects
- **Philosophy:** Minimal documentation that doesn't slow you down
- **Features:**
  - 1-page PRD (5 sections max)
  - ASCII diagrams acceptable
  - Now/Next/Later task format
  - "Ship fast" approach

---

## How the Skills Work Together

```
User has vague idea
        ↓
┌──────────────────────┐
│ project-discovery    │
│ (9-phase interview)  │
└──────────┬───────────┘
           ↓
    Project Brief
    (structured data)
           ↓
┌──────────────────────┐
│project-docs-generator│
│ + guideline selection│
└──────────┬───────────┘
           ↓
    docs/ folder
    ├── PRD.md
    ├── PLANNING.md
    ├── CLAUDE.md
    └── TASKS.md
```

---

## Development Workflow

### When Adding New Features
1. Read PROJECT.md and CLAUDE.md
2. Check/update TASKS.md
3. Implement changes
4. Test the skill with sample input
5. Update README.md if user-facing changes
6. Commit with descriptive message
7. Push to GitHub

### When Fixing Bugs
1. Identify which skill/guideline is affected
2. Read the relevant SKILL.md file
3. Make targeted fix
4. Test with edge cases
5. Commit and push

### When Adding New Guidelines
1. Create new file in `guidelines/`
2. Include meta header with `extends: _base`
3. Define requirements for all 4 document types
4. Update project-docs-generator/SKILL.md's guideline table
5. Update README.md with new guideline description
6. Test generation with sample brief
7. Commit and push

---

## Important Conventions

### File Naming
- Skill definitions: `SKILL.md` (uppercase)
- Templates: `*-TEMPLATE.md` (uppercase)
- Guidelines: `lowercase-with-dashes.md`
- Documentation: `UPPERCASE.md` (README, PROJECT, CLAUDE, TASKS)

### Markdown Standards
- UTF-8 encoding
- Max 120 characters per line
- Use tables for structured data
- Code blocks with language tags
- YAML frontmatter for skill metadata

### Git Workflow
- Commit format: `<type>: <description>`
  - `feat:` new feature
  - `fix:` bug fix
  - `docs:` documentation changes
  - `refactor:` code restructuring
  - `test:` test additions
- Branch: `main` (default)
- Always test before pushing

---

## Extension Points

This project is designed to be extended:

### Adding Skills
Create new skill folders in `.claude/skills/` with:
- `SKILL.md` with frontmatter (name, description)
- Supporting files as needed
- Update README.md to document the new skill

### Adding Guidelines
Create new guideline in `project-docs-generator/guidelines/`:
- Include meta YAML header
- Extend `_base.md`
- Define all 4 document requirements
- Update main SKILL.md

### Adding Interview Phases
Edit `project-discovery/SKILL.md`:
- Add new phase section
- Define goal and questions
- Update output template if needed

---

## Testing

### Manual Testing Process

**For project-discovery skill:**
1. Start conversation: "I want to build [vague idea]"
2. Verify it asks 2-4 questions at a time
3. Verify it progresses through all 9 phases
4. Verify output matches PROJECT-BRIEF-TEMPLATE.md format

**For project-docs-generator skill:**
1. Provide a sample Project Brief
2. Request documentation with specific guideline
3. Verify all 4 files are generated in docs/
4. Verify guideline requirements are met
5. Check for placeholder text (`[TBD]`, `[TODO]`)

**For guidelines:**
1. Generate docs with each guideline
2. Compare output complexity (academic vs lean)
3. Verify guideline-specific requirements (C4 diagrams, ADRs, etc.)

---

## Maintenance Notes

### What to Update When User-Facing Changes
- README.md - Always update with new features/usage
- Skills may reference each other - check cross-references
- Guideline changes affect generated output

### What NOT to Change
- `.claude/settings.local.json` - Local only, in .gitignore
- Skill frontmatter format (Claude Code standard)
- Base guideline minimum requirements

---

## Success Metrics

This project is successful if:
- Users can go from vague idea → complete documentation in one session
- Documentation quality matches selected guideline
- Skills are reusable across different project types
- Repository is clear enough for others to fork/customize

---

## Future Roadmap

Potential extensions (not yet implemented):
- Additional guidelines (enterprise, open-source, research)
- Project health check skill (re-evaluate mid-development)
- Code generation from PLANNING.md
- Integration with issue tracking systems
- Multi-language support for generated docs

---

## Quick Start for Contributors

1. Clone the repository
2. Read PROJECT.md (this file)
3. Read CLAUDE.md for work instructions
4. Review README.md to understand user perspective
5. Explore `.claude/skills/` to see skill implementations
6. Check TASKS.md if it exists for current work items
