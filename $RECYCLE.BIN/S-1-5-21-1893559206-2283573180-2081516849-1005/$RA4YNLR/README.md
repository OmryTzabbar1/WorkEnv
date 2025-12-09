# Project Planning Skills for Claude Code

Two complementary skills that transform vague project ideas into comprehensive documentation.

---

## What's Included

```
skills/
├── project-discovery/           # Skill 1: Clarifies your idea
│   ├── SKILL.md                 # Main skill file
│   └── PROJECT-BRIEF-TEMPLATE.md
│
└── project-docs-generator/      # Skill 2: Generates documentation
    ├── SKILL.md                 # Main skill file
    └── guidelines/              # Swappable quality standards
        ├── _base.md
        ├── academic-msc.md      # For M.Sc. submissions
        └── lean-startup.md      # For quick MVPs
```

---

## How They Work Together

```
Your vague idea
      │
      ▼
┌─────────────────────┐
│  project-discovery  │  ← Asks 9 phases of questions
└──────────┬──────────┘
           │
           ▼
    Project Brief
           │
           ▼
┌─────────────────────┐
│project-docs-generator│ ← Applies selected guideline
└──────────┬──────────┘
           │
           ▼
docs/
├── PRD.md
├── PLANNING.md
├── CLAUDE.md
└── TASKS.md
```

---

## Installation

### Option A: Personal Skills (just for you)

```bash
# Create the skills directory
mkdir -p ~/.claude/skills

# Copy both skills
cp -r project-discovery ~/.claude/skills/
cp -r project-docs-generator ~/.claude/skills/
```

### Option B: Project Skills (shared with team)

```bash
# In your project root
mkdir -p .claude/skills

# Copy both skills
cp -r project-discovery .claude/skills/
cp -r project-docs-generator .claude/skills/

# Commit to git
git add .claude/skills/
git commit -m "Add project planning skills"
```

---

## Usage

### Starting a New Project

Just tell Claude you have an idea:

```
I want to build a habit tracking app
```

Claude will automatically use `project-discovery` to interview you.

### After Discovery

Once you have a Project Brief:

```
Generate the project documentation
```

or specify a guideline:

```
Generate docs using lean-startup guidelines
```

### Direct Documentation (Skip Discovery)

If you already have clear requirements:

```
Create project docs for [detailed description]
```

---

## Choosing Guidelines

| Guideline | Best For | Doc Level |
|-----------|----------|-----------|
| `academic-msc` | M.Sc. submissions, formal projects | Heavy (ISO/IEC 25010) |
| `lean-startup` | MVPs, hackathons, quick prototypes | Minimal |

### Academic M.Sc. Produces:
- 7-section PRD with KPI tables
- C4 architecture diagrams + ADRs
- 150-line file limits, prompt logs
- 5-phase task breakdown with ISO checklist

### Lean Startup Produces:
- 1-page PRD (5 bullet points)
- ASCII box diagram
- Minimal code standards
- Now/Next/Later task list

---

## Customization

### Adding a New Guideline

1. Create `project-docs-generator/guidelines/your-guideline.md`
2. Include the meta header:
   ```yaml
   id: your-guideline
   version: 1.0
   extends: _base
   ```
3. Define requirements for each document type
4. Update SKILL.md's guideline table

### Modifying Interview Questions

Edit `project-discovery/SKILL.md` to add/remove phases or questions.

---

## Verification

Check that skills are loaded:

```
What skills are available?
```

Claude should list both `project-discovery` and `project-docs-generator`.

---

## Troubleshooting

### Skills Not Found

1. Check file location:
   ```bash
   ls ~/.claude/skills/project-discovery/SKILL.md
   ls ~/.claude/skills/project-docs-generator/SKILL.md
   ```

2. Restart Claude Code after adding skills

### Wrong Guideline Used

Specify explicitly:
```
Use the lean-startup guideline for this project
```

### Claude Skips Discovery

Be explicit:
```
Run the project discovery interview for my idea
```
