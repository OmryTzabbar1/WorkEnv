# Claude Code Work Environment

My personal Claude Code skills for project planning and documentation generation.

## Overview

This repository contains two complementary Claude Code skills that transform vague project ideas into comprehensive, structured documentation ready for development.

## Skills Included

### 1. Project Discovery Agent
**Location:** `.claude/skills/project-discovery/`

A guided interview agent that transforms vague project ideas into well-defined Project Briefs through a structured 9-phase conversation.

**Use when:**
- Starting a new project with unclear requirements
- Need help clarifying what to build
- Want structured planning before coding

**What it does:**
- Conducts a conversational 9-phase interview
- Asks 2-4 questions at a time (not overwhelming)
- Digs deeper when answers are vague
- Outputs a comprehensive Project Brief

**9 Interview Phases:**
1. Project Purpose & Vision
2. Core Functionality & Features
3. Data & Information Architecture
4. MVP Definition
5. User Experience & Wireframing
6. Project Scope & Timeline
7. Delivery Platform
8. Technology Stack
9. Development Process

### 2. Project Documentation Generator
**Location:** `.claude/skills/project-docs-generator/`

Generates complete project documentation from a Project Brief with swappable quality guidelines.

**Use when:**
- You have a Project Brief (from discovery or manual)
- Need comprehensive project documentation
- Setting up a new project properly

**Generated Documents:**
- `PRD.md` - Product Requirements Document
- `PLANNING.md` - Architecture and technical planning
- `CLAUDE.md` - Development rules and conventions
- `TASKS.md` - Implementation task breakdown

**Available Guidelines:**

| Guideline | Use Case | Documentation Level |
|-----------|----------|---------------------|
| `academic-msc` | M.Sc. submissions, formal projects | Comprehensive (10 ISO/IEC sections) |
| `lean-startup` | MVPs, hackathons, quick prototypes | Minimal |

## Workflow

```
Your Idea (vague)
      ↓
┌─────────────────────┐
│ project-discovery   │  ← 9-phase interview
└──────────┬──────────┘
           ↓
   Project Brief
   (structured)
           ↓
┌─────────────────────┐
│project-docs-generator│ ← Applies guideline
└──────────┬──────────┘
           ↓
    docs/
    ├── PRD.md
    ├── PLANNING.md
    ├── CLAUDE.md
    └── TASKS.md
```

## Installation

### Option 1: Personal Skills (Local)
Clone this repository to your home directory:
```bash
git clone https://github.com/OmryTzabbar1/WorkEnv.git ~/.claude-work-env
ln -s ~/.claude-work-env/.claude/skills ~/.claude/skills
```

### Option 2: Project-Specific Skills
Clone into your project:
```bash
cd your-project/
git clone https://github.com/OmryTzabbar1/WorkEnv.git
cp -r WorkEnv/.claude .claude
```

## Usage Examples

### Start a New Project
```
I want to build a habit tracking app
```
Claude automatically runs the discovery interview.

### Generate Documentation (After Discovery)
```
Generate project documentation using academic-msc guideline
```

or for quick MVPs:
```
Generate docs using lean-startup guideline
```

### Skip Discovery (If Requirements Are Clear)
```
Create project docs for [detailed description]
```

## Guideline Comparison

### Academic M.Sc. (Comprehensive)
Perfect for formal projects, thesis submissions, or when you need thorough documentation.

**Produces:**
- 7-section PRD with stakeholder tables and KPI metrics
- C4 architecture diagrams (Context, Container, Component)
- 2-3 Architectural Decision Records (ADRs)
- Complete API documentation
- 150-line file limit enforcement
- Git commit format: `<type>(<scope>): <description> [TaskID]`
- 70-80% test coverage requirements
- ISO/IEC 25010 compliance checklist
- Prompt engineering log structure

### Lean Startup (Minimal)
Perfect for rapid prototyping, hackathons, or validation-focused projects.

**Produces:**
- 1-page PRD (5 sections max)
- ASCII architecture diagram
- Simple Now/Next/Later task list
- Minimal code standards
- "Ship fast" philosophy

## Repository Structure

```
.claude/
└── skills/
    ├── project-discovery/
    │   ├── SKILL.md                    # 9-phase interview agent
    │   └── PROJECT-BRIEF-TEMPLATE.md   # Output template
    │
    └── project-docs-generator/
        ├── SKILL.md                    # Main documentation generator
        └── guidelines/
            ├── _base.md                # Universal requirements
            ├── academic-msc.md         # Comprehensive M.Sc. standards
            └── lean-startup.md         # Minimal MVP standards

todo/                                    # Planning and reference materials
```

## Customization

### Adding a New Guideline
1. Create `project-docs-generator/guidelines/your-guideline.md`
2. Add meta header:
   ```yaml
   ---
   name: your-guideline
   version: 1.0
   extends: _base
   ---
   ```
3. Define requirements for PRD.md, PLANNING.md, CLAUDE.md, TASKS.md
4. Update the main SKILL.md's guideline table

### Modifying Interview Questions
Edit `project-discovery/SKILL.md` to add/remove phases or questions.

## Academic M.Sc. Coverage

The `academic-msc` guideline covers all 10 submission requirement categories:

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

## License

MIT - Use and modify freely.

## Author

Omry Tzabbar

## Contributing

Feel free to fork and customize for your own workflow!
