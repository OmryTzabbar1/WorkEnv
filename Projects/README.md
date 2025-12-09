# Projects Directory

This directory contains your individual software projects. Each project should be its own git repository.

## How to Start a New Project

### Step 1: Run Project Discovery
```bash
# In Claude Code, invoke the project-discovery skill
# This will guide you through a 9-phase interview
```

### Step 2: Generate Documentation
```bash
# After completing discovery, use project-docs-generator skill
# Choose guideline: academic-msc (comprehensive) or lean-startup (minimal)
```

### Step 3: Create Project Repository
```bash
cd E:/Projects
mkdir your-project-name
cd your-project-name
git init
git remote add origin https://github.com/yourusername/your-project-name.git
```

### Step 4: Set Up Project Structure
```bash
# Copy generated docs to your project
# Create initial structure based on PLANNING.md
# Follow conventions from CLAUDE.md
```

### Step 5: Start Developing
```bash
# Work through tasks from TASKS.md
# Commit regularly (10-20+ commits for academic projects)
# Use hooks from WorkEnv for validation
```

## Project Organization

```
E:/Projects/
├── project-1/          # Separate git repo
│   ├── docs/
│   │   ├── PRD.md
│   │   ├── PLANNING.md
│   │   ├── CLAUDE.md
│   │   └── TASKS.md
│   ├── src/
│   ├── tests/
│   └── README.md
│
├── project-2/          # Another separate git repo
└── project-3/
```

## Available Skills

Your WorkEnv skills are available globally from `~/.claude/skills/`:
- **project-discovery**: Transform vague ideas into structured Project Briefs
- **project-docs-generator**: Generate comprehensive documentation (PRD, PLANNING, CLAUDE, TASKS)

## Available Guidelines

- **academic-msc**: Comprehensive M.Sc. standards (10 sections, C4 diagrams, ADRs, 70%+ test coverage)
- **lean-startup**: Minimal MVP approach (1-page PRD, simple tasks, ship fast)

## Tips

- Each project should be its own git repository
- Use WorkEnv skills at the start of each project
- Follow the CLAUDE.md rules generated for each project
- The hooks from WorkEnv will help enforce quality standards
- Commit early and often (aim for 10-20+ meaningful commits)

## Questions?

Refer to `E:/WorkEnv/README.md` for detailed documentation on the skills system.
