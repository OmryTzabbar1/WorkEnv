---
name: project-discovery
description: Guides users through a 9-phase interview to clarify project ideas and produce a structured Project Brief. Use when starting a new project, when requirements are unclear, or when the user says they have a project idea but needs help defining it.
---

# Project Discovery Agent

Transforms vague project ideas into well-defined, actionable Project Briefs through guided conversation.

## When to Use This Skill

- User says "I want to build..." but details are vague
- User needs help clarifying requirements before coding
- User wants to plan a project properly
- User mentions needing a PRD or project documentation

## Interview Flow

Conduct interviews in **9 phases**. Ask 2-4 questions per response, wait for answers, then continue.

---

## Phase 1: Project Purpose & Vision

**Goal**: Understand the fundamental "why" behind the project.

Ask:
1. **Why are you making this project?** What problem or frustration sparked this idea?
2. **Who is this project for?** Describe your ideal user and their current pain point.
3. **What makes this valuable?** Why would someone choose this over alternatives?

**Dig deeper if**: Answers are generic ("to help people"), audience is "everyone", or value sounds like features not benefits.

---

## Phase 2: Core Functionality & Features

**Goal**: Define what users must be able to do.

Ask:
1. Walk me through a typical user session from start to finish
2. If you could only ship 3 features, which would they be?
3. What should users NOT be able to do? (guardrails)
4. What happens when something goes wrong?

**Important**: Do NOT discuss tech stack yet. Focus purely on user actions.

---

## Phase 3: Data & Information Architecture

**Goal**: Understand what data exists and how it relates.

Ask:
1. What information does your project need to work with?
2. What are the main "things" (entities) in your project?
3. How do these things relate to each other?
4. What data is sensitive or requires special handling?

**Exercise**: Ask user to describe data as boxes and arrows on a whiteboard.

---

## Phase 4: MVP Definition

**Goal**: Strip the project down to its absolute minimum viable version.

Ask:
1. Looking at everything we discussed, what's the ONE core workflow?
2. What can you remove and still have something useful?
3. What's the quickest way to validate the core assumption?
4. What single metric would tell you the MVP works?

---

## Phase 5: User Experience & Wireframing

**Goal**: Think through the user journey (UX over UI).

Ask:
1. Describe the user's first 60 seconds with your project
2. What are the key screens or states?
3. Where might users get confused or stuck?
4. What feedback does the user need at each step?

**Encourage**: "Even rough sketches help - describe what you're imagining"

---

## Phase 6: Project Scope & Timeline

**Goal**: Understand project lifespan and engineering investment.

Ask:
1. What's the intended lifespan? (days, weeks, months)
2. Do you plan to add more features after MVP?
3. Will other people work on this codebase?
4. What's your maintenance expectation?

**Categorize**:
- Quick Script (days): Minimal structure
- Small Project (1-2 weeks): Basic organization
- Medium Project (weeks-months): Proper architecture
- Long-term Product (months+): Extensive documentation, CI/CD

---

## Phase 7: Delivery Platform

**Goal**: Determine how users will access the project.

Ask:
1. How will users access this? (web, mobile, CLI, extension, API)
2. What devices and contexts will users be in?
3. Are there integration requirements with other tools?
4. What are the performance expectations?

---

## Phase 8: Technology Stack

**Goal**: Choose appropriate technologies based on all previous decisions.

Ask:
1. Do you have existing tech preferences or constraints?
2. What are your deployment constraints? Where will this be hosted?
3. Are there integration requirements that dictate technology?
4. Have you deployed this stack before?

**Principle**: Best tool for the project, not the other way around.

---

## Phase 9: Development Process

**Goal**: Establish the development workflow.

Ask:
1. How will you organize the codebase? (folder structure, naming)
2. What's your development environment?
3. How will you handle version control?
4. What's your testing approach?
5. What about CI/CD?

---

## Handling Unclear Responses

Use these techniques:
- **Restate**: "So if I understand correctly, you're saying [X]. Is that right?"
- **Ask for examples**: "Can you give me a specific example?"
- **Offer options**: "Do you mean A, B, or something else?"
- **Challenge**: "You mentioned [X] - have you considered [alternative]?"

---

## Output: Project Brief

After completing all phases, generate a Project Brief. See [PROJECT-BRIEF-TEMPLATE.md](PROJECT-BRIEF-TEMPLATE.md) for the full template.

The brief includes:
1. Executive Summary
2. Vision & Purpose
3. Core Functionality (P0/P1/P2 features)
4. Data Architecture
5. MVP Specification
6. User Experience
7. Project Scope
8. Platform & Delivery
9. Technology Recommendations
10. Development Process
11. Open Questions & Risks

---

## Handoff

After generating the Project Brief, inform the user:

"Your Project Brief is ready! You can now use the **project-docs-generator** skill to create your full documentation set (PRD.md, CLAUDE.md, PLANNING.md, TASKS.md)."
