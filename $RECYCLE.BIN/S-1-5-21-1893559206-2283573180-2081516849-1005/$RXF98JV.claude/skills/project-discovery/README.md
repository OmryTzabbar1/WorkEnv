# Project Discovery Skill

A Claude Code skill that transforms vague project ideas into structured, actionable Project Briefs through guided conversation.

## Purpose

This skill acts as the **front-end** to your documentation generation workflow. It solves the "garbage in, garbage out" problem by ensuring that when you pass a project idea to the Project Documentation Generator, it has all the information needed to create high-quality PRD, CLAUDE.md, PLANNING.md, and TASKS.md files.

## The Problem It Solves

When you tell Claude "I want to build a task manager" — that's not enough information to generate useful documentation. This skill asks the right questions to uncover:

- The real problem you're solving
- Who actually needs this
- What features matter vs. what's scope creep
- How data flows through the system
- What the MVP really is
- How users will interact with it
- What technology makes sense
- How complex the development process should be

## How It Works

### Interview Flow

The skill conducts a 9-phase interview:

1. **Vision & Purpose** — Why build this? For whom?
2. **Core Functionality** — What must users be able to do?
3. **Data Architecture** — What information exists and how does it relate?
4. **MVP Definition** — What's the absolute minimum?
5. **User Experience** — How do users flow through the system?
6. **Project Scope** — Days, weeks, or months? Solo or team?
7. **Platform & Delivery** — Web, mobile, CLI, extension?
8. **Technology Stack** — What tools fit the job?
9. **Development Process** — How will you build and deploy?

### Conversation Style

- Asks 2-4 questions at a time (not overwhelming)
- Digs deeper when answers are vague
- Challenges assumptions and scope creep
- Summarizes after each phase
- Adapts to project complexity

### Output

A comprehensive **Project Brief** document containing:
- Executive summary
- Detailed requirements by priority
- Data models and relationships
- MVP specification
- UX journey mapping
- Technology recommendations
- Development process guidelines
- Open questions and risks

## Installation

### For Claude Code

Place the `SKILL.md` file in your Claude Code skills directory:

```bash
# Create skills directory if it doesn't exist
mkdir -p ~/.claude/skills

# Copy the skill
cp SKILL.md ~/.claude/skills/project-discovery/SKILL.md
```

### For Claude.ai Projects

Add the SKILL.md content to your project's knowledge base or system prompt.

## Usage

### Starting a Discovery Session

Simply tell Claude you want to plan a project:

```
I want to build [brief idea]. Can you help me think through it?
```

Or explicitly invoke the skill:

```
Use the project discovery skill to help me plan a new project.
```

### During the Interview

- Answer questions conversationally — you don't need to be formal
- It's okay to say "I don't know yet" — that's valuable information
- Push back if questions don't apply to your project
- Take your time — clarity now saves time later

### After the Interview

The skill generates a Project Brief markdown document. You can:

1. **Review and edit** — Tweak anything before moving forward
2. **Pass to documentation generator** — Feed the brief to generate full docs
3. **Share with team** — The brief is a great alignment document

## Workflow Integration

```
┌─────────────────────┐
│   Your Project Idea │
│   (vague, unclear)  │
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│ Project Discovery   │ ◄── This skill
│      Agent          │
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│   Project Brief     │
│   (structured)      │
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│  Documentation      │
│  Generator Agent    │ ◄── Your existing skill
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│ PRD.md              │
│ CLAUDE.md           │
│ PLANNING.md         │
│ TASKS.md            │
└─────────────────────┘
```

## Example Session

**You**: I want to build something that helps me track my reading habits.

**Claude**: Great starting point! Let's dig into this. First, the fundamentals:

1. What frustration prompted this idea? Is it that you forget what you've read, lose track of where you are in books, or something else?

2. Is this just for you, or do you imagine others using it too?

3. What would make this more valuable than a simple spreadsheet or notes app?

**You**: I keep starting books and forgetting about them. I also want to remember key quotes and ideas. It's mainly for me but maybe I'd share it.

**Claude**: Good — so the core problems are: abandoning books mid-read, and losing insights you found valuable. Let me understand the "forgetting" part more...

*[Interview continues through all 9 phases]*

## Customization

### Adding Domain-Specific Questions

If you work in a specific domain (healthcare, fintech, gaming), you can extend the skill by adding domain-specific questions to relevant phases.

### Adjusting Interview Depth

For quick prototypes, you can tell Claude to "do a rapid discovery" and it will focus on phases 1-4 with lighter coverage of others.

### Output Format

The Project Brief format can be customized. If your documentation generator expects different sections, modify the output template in SKILL.md.

## Tips for Best Results

1. **Don't pre-optimize** — Let the interview reveal what matters
2. **Be honest about timeline** — Over/under-engineering both hurt
3. **Embrace "I don't know"** — Uncertainty is useful data
4. **Challenge the output** — If something in the brief feels wrong, say so
5. **Iterate** — You can re-run discovery if the project pivots

## Related Skills

- **Project Documentation Generator** — Consumes Project Briefs, outputs full documentation
- *(Future)* **Project Health Check** — Re-evaluate project scope mid-development

## License

MIT — Use and modify freely.
