# Claude Work Instructions for WorkEnv Project

This file contains instructions for Claude Code when working on the WorkEnv skills repository.

---

## Session Initialization

### Every Time a Session Starts

**ALWAYS read these files first (in order):**

1. **PROJECT.md** - Understand the project context and structure
2. **CLAUDE.md** (this file) - Review work instructions
3. **README.md** - Know what users see
4. **TASKS.md** - Check for existing tasks (if file exists)

**Why:** This ensures you have full context before making any changes.

---

## Core Work Principles

### 1. Task Management

**When user requests a new task/feature:**

1. **Check if TASKS.md exists:**
   ```bash
   ls E:/TASKS.md
   ```

2. **If TASKS.md exists:**
   - Read it first
   - Add new tasks to appropriate section
   - Maintain existing structure
   - Update task status as you work

3. **If TASKS.md does NOT exist:**
   - Create it using this format:

```markdown
# WorkEnv - Tasks

## In Progress
- [ ] [Current task description]

## To Do
- [ ] [Pending task 1]
- [ ] [Pending task 2]

## Completed
- [x] [Completed task 1] (YYYY-MM-DD)
- [x] [Completed task 2] (YYYY-MM-DD)

## Backlog / Future Ideas
- [ ] [Low priority idea]
```

4. **Task Format:**
   - Use checkboxes: `- [ ]` for incomplete, `- [x]` for complete
   - Add completion dates for completed tasks
   - Be specific and actionable
   - Link to files when relevant: "Update `SKILL.md` to include..."

5. **Update tasks in real-time:**
   - Mark as in-progress when starting: `- [x] Task (in progress)`
   - Mark as complete when done: `- [x] Task (YYYY-MM-DD)`
   - Move completed tasks to "Completed" section

### 2. Development Workflow

**For ANY change to the project:**

```
Read context → Plan → Implement → Test → Commit → Push
```

#### Step 1: Read Context
- Always read relevant SKILL.md files before changing them
- Check if change affects other files (cross-references)
- Review existing patterns and conventions

#### Step 2: Plan
- Update TASKS.md with what you're about to do
- Ask user for clarification if requirements are ambiguous
- Consider impact on users (README changes needed?)

#### Step 3: Implement
- Make focused, minimal changes
- Follow existing patterns and conventions
- Maintain consistency with project structure

#### Step 4: Test
- **For skill changes:**
  - Verify YAML frontmatter is valid
  - Check markdown syntax
  - Ensure cross-references work
  - Simulate skill execution mentally

- **For guideline changes:**
  - Verify extends `_base` properly
  - Check all 4 document types are covered
  - Ensure requirements are testable

- **For documentation changes:**
  - Check markdown renders correctly
  - Verify code examples are accurate
  - Ensure links work

#### Step 5: Commit
- Use conventional commit format: `<type>: <description>`
- Types: `feat`, `fix`, `docs`, `refactor`, `test`
- Be descriptive but concise
- Reference task if applicable

#### Step 6: Push
- **ALWAYS push after committing**
- Use: `git push origin main`
- Verify push succeeded

---

## Commit Guidelines

### Commit Message Format

```
<type>(<scope>): <description>

[Optional body with more details]
```

**Examples:**
```
feat(discovery): Add phase for deployment considerations
fix(academic-msc): Correct ADR template format
docs(readme): Update installation instructions for Windows
refactor(guidelines): Consolidate duplicate requirements
test(generator): Add validation for missing Project Brief fields
```

### Commit Types

| Type | Use When |
|------|----------|
| `feat` | Adding new features or capabilities |
| `fix` | Fixing bugs or errors |
| `docs` | Documentation-only changes |
| `refactor` | Code restructuring without behavior change |
| `test` | Adding or updating tests |
| `chore` | Maintenance tasks (dependency updates, etc.) |

### When to Commit

**Commit after:**
- Completing a discrete task
- Fixing a bug
- Adding/updating documentation
- Before switching to a different task

**Don't commit:**
- Work in progress (unless specifically asked)
- Broken/untested code
- Multiple unrelated changes together

---

## Working on Skills

### Editing project-discovery Skill

**Location:** `.claude/skills/project-discovery/SKILL.md`

**When editing:**
1. Preserve YAML frontmatter (name, description)
2. Keep 9-phase structure
3. Questions should be conversational, not interrogative
4. Update PROJECT-BRIEF-TEMPLATE.md if output format changes
5. Test by simulating an interview flow

**Common tasks:**
- Adding questions to existing phases
- Adding new phases (update template too)
- Clarifying unclear questions
- Improving follow-up prompts

### Editing project-docs-generator Skill

**Location:** `.claude/skills/project-docs-generator/SKILL.md`

**When editing:**
1. Preserve YAML frontmatter
2. Keep execution flow structure (5 steps)
3. Update guideline table if adding new guidelines
4. Ensure error handling is clear
5. Test with sample Project Brief

**Common tasks:**
- Adding new guidelines (see below)
- Updating document responsibilities
- Clarifying validation requirements
- Improving error messages

### Adding New Guidelines

**Location:** `.claude/skills/project-docs-generator/guidelines/`

**Process:**
1. Create `your-guideline.md`
2. Add YAML frontmatter:
   ```yaml
   ---
   name: your-guideline
   description: Brief description
   version: 1.0
   ---
   ```
3. Add section: `## Overview` explaining use cases
4. Define requirements for each document:
   - PRD.md Requirements
   - PLANNING.md Requirements
   - CLAUDE.md Requirements
   - TASKS.md Requirements
5. Add checklist section at end
6. Update `project-docs-generator/SKILL.md` guideline table
7. Update README.md with new guideline description
8. Test generation with sample brief
9. Commit: `feat(guidelines): Add [name] guideline for [use case]`

---

## File-Specific Rules

### README.md
- **Purpose:** User-facing documentation
- **Update when:** Adding features, changing usage, new guidelines
- **Keep:** Clear examples, workflow diagrams, installation instructions
- **Avoid:** Implementation details, internal structure

### PROJECT.md
- **Purpose:** Project context for developers/Claude
- **Update when:** Structure changes, adding components, changing conventions
- **Keep:** Architecture overview, key file descriptions, development workflow
- **Avoid:** User-facing instructions (those go in README)

### CLAUDE.md (this file)
- **Purpose:** Work instructions for Claude Code
- **Update when:** Workflow changes, new conventions, adding processes
- **Keep:** Step-by-step instructions, clear rules, examples
- **Avoid:** Project description (that's PROJECT.md)

### TASKS.md
- **Purpose:** Track current and future work
- **Update:** Real-time as tasks progress
- **Keep:** Organized by status, specific and actionable
- **Avoid:** Vague tasks, duplicate tracking

---

## Quality Standards

### For Skill Files (SKILL.md)

- [ ] Valid YAML frontmatter (name, description)
- [ ] Clear section headings with `##`
- [ ] Tables for structured data
- [ ] Code blocks with language tags where applicable
- [ ] No placeholder text (`[TBD]`, `[TODO]`)
- [ ] Cross-references use correct paths
- [ ] Markdown syntax is valid

### For Guideline Files

- [ ] Extends `_base.md` explicitly
- [ ] Covers all 4 document types (PRD, PLANNING, CLAUDE, TASKS)
- [ ] Requirements are specific and testable
- [ ] Includes examples or templates
- [ ] Has final checklist section
- [ ] Version number present

### For Documentation Files

- [ ] No broken links
- [ ] Code examples are accurate
- [ ] Consistent formatting
- [ ] Clear hierarchy (H1 → H2 → H3)
- [ ] Proper grammar and spelling

---

## Common Tasks and How to Handle Them

### User: "Add a new guideline for [X]"

1. Read existing guidelines to understand patterns
2. Create TASKS.md entry if it doesn't exist
3. Create new guideline file in `guidelines/`
4. Follow guideline structure (frontmatter, overview, requirements, checklist)
5. Update `project-docs-generator/SKILL.md` table
6. Update README.md guideline comparison
7. Test conceptually (does it make sense?)
8. Commit: `feat(guidelines): Add [name] guideline for [use case]`
9. Push to GitHub

### User: "Fix bug in [skill]"

1. Read the affected SKILL.md file
2. Locate the bug
3. Make minimal fix
4. Consider edge cases
5. Update TASKS.md if it exists
6. Commit: `fix(skill-name): [brief description of fix]`
7. Push to GitHub

### User: "Improve documentation"

1. Read current README.md
2. Identify what's unclear or missing
3. Add/clarify sections
4. Update examples if needed
5. Check all links work
6. Commit: `docs: [what you improved]`
7. Push to GitHub

### User: "Add new feature to discovery interview"

1. Read `project-discovery/SKILL.md`
2. Determine which phase it belongs to (or if new phase needed)
3. Add questions following existing style
4. Update PROJECT-BRIEF-TEMPLATE.md if output changes
5. Update README.md if user-facing
6. Update TASKS.md
7. Commit: `feat(discovery): [feature description]`
8. Push to GitHub

### User: "Test the skills"

1. Read both SKILL.md files
2. Simulate execution flow mentally
3. Check for logical errors
4. Verify templates match skill outputs
5. Report findings to user
6. If issues found, fix them following fix workflow above

---

## Git Workflow

### Standard Workflow

```bash
# 1. Make your changes (edit files)

# 2. Check what changed
git status

# 3. Add files
git add <files>

# 4. Commit with descriptive message
git commit -m "type(scope): description"

# 5. Push to GitHub
git push origin main
```

### When Multiple Changes

**If changes are related:**
```bash
git add file1.md file2.md file3.md
git commit -m "feat: description of related changes"
git push origin main
```

**If changes are unrelated:**
```bash
git add file1.md
git commit -m "feat: change 1"
git add file2.md
git commit -m "fix: change 2"
git push origin main
```

### Checking Status

Before committing, always run:
```bash
git status    # See what changed
git diff      # See specific changes
```

---

## Error Handling

### If Git Push Fails

1. Check error message
2. Common issues:
   - Not committed yet: Run `git commit` first
   - No remote: Run `git remote add origin [url]`
   - Behind remote: Run `git pull origin main` first
3. Report issue to user if unclear

### If File Not Found

1. Verify path is correct
2. Check if file should exist (maybe needs to be created)
3. Use `ls` or `find` to locate
4. Report to user clearly

### If Markdown Invalid

1. Check for:
   - Unclosed code blocks
   - Broken tables
   - Invalid YAML frontmatter
2. Fix and test
3. Commit fix

---

## Best Practices

### DO

✅ Read context files at session start
✅ Keep TASKS.md updated in real-time
✅ Test changes before committing
✅ Write descriptive commit messages
✅ Push after every commit
✅ Ask for clarification when ambiguous
✅ Follow existing patterns and conventions
✅ Keep changes focused and minimal
✅ Update documentation when adding features
✅ Check cross-references when editing

### DON'T

❌ Commit without testing
❌ Push without committing
❌ Make unrelated changes in one commit
❌ Skip reading PROJECT.md and CLAUDE.md
❌ Leave placeholder text in skills
❌ Break existing functionality
❌ Change file structure without updating docs
❌ Forget to update TASKS.md
❌ Use vague commit messages
❌ Ignore git errors

---

## Workflow Checklist

Use this for every task:

```markdown
## Task: [Description]

- [ ] Read PROJECT.md and CLAUDE.md
- [ ] Read relevant SKILL.md files
- [ ] Update/create TASKS.md
- [ ] Make changes
- [ ] Test changes
- [ ] Update README.md (if user-facing)
- [ ] Update PROJECT.md (if structure changed)
- [ ] Commit with descriptive message
- [ ] Push to GitHub
- [ ] Update TASKS.md to mark complete
```

---

## Questions to Ask Before Starting

Before implementing any change, verify:

1. **Do I understand the full context?** (Read PROJECT.md, CLAUDE.md)
2. **What files will this affect?** (SKILL.md, guidelines, README?)
3. **Does this need a TASKS.md entry?** (Yes for non-trivial work)
4. **Will this change affect users?** (Update README.md)
5. **Is this change focused and minimal?** (Do one thing well)
6. **How will I test this?** (Simulation, validation)
7. **What's the commit message?** (Plan it upfront)

---

## Summary: The Golden Rule

**Always follow this sequence:**

```
Read → Plan → Implement → Test → Document → Commit → Push → Update TASKS.md
```

Every step matters. Skipping steps leads to incomplete work.

---

## When in Doubt

1. Read PROJECT.md again
2. Ask the user for clarification
3. Follow existing patterns
4. Make minimal changes
5. Test thoroughly
6. Document clearly

**Remember:** This project helps others plan their projects. Your work quality directly affects their success.
