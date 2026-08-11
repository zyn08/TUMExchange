# AGENTS.md

## 1. Project Overview

This repository is for an international summer-school / exchange-course project at the Technical University of Munich (TUM).

The broader academic context is related to:

- Embodied Intelligence
- Robotics
- Engineering
- Human-centered technology
- Innovation and entrepreneurship

However, this is NOT intended to be a purely academic robotics research project.

The course emphasizes starting from a real-world problem, understanding the root cause, developing a creative solution, and finally turning the solution into a reasonable business idea.

When working in this repository, always prioritize:

1. Clear problem definition
2. Human/user needs
3. Logical reasoning
4. Simplicity of communication
5. Creativity
6. Feasibility
7. Business value

Technical complexity is NOT the primary goal.

---

# 2. Course Objective

The course requires the team to go through the following complete process:

Real-world observation

→ Problem identification

→ Problem validation

→ 5 Whys

→ Root Cause

→ How Might We

→ Brainstorming / Co-Creation

→ Solution selection

→ Product concept

→ Business Model

→ Final Business Idea Presentation

The final result should tell a coherent story from:

**Problem → Root Cause → Solution → User Value → Business**

Do NOT jump directly from a daily-life observation to a robot solution.

---

# 3. Course Methodology

## 3.1 Identify a Real-World Problem

Problems may come from:

- Society
- University life
- Work
- Daily life
- Experiences in Germany
- International exchange experiences
- Engineering-related situations

A problem does NOT have to be highly technical.

Prefer problems that are:

- Easy to understand
- Common enough to matter
- Relevant to real users
- Easy to explain using simple English
- Open enough to allow multiple possible solutions

---

## 3.2 Validate the Problem

For every proposed problem, ask:

### Who feels this problem?

Identify the actual users.

### How often does it happen?

Determine whether it is frequent enough to matter.

### What does it cost users?

Possible costs include:

- Time
- Money
- Stress
- Effort
- Convenience
- Efficiency

### Is this the root cause or only a symptom?

Do not assume that the first complaint is the real problem.

---

# 4. Root Cause Analysis — 5 Whys

Use the **5 Whys** method to move from an observable complaint toward a deeper and actionable root cause.

The exact number of "Why" questions does not need to be exactly five.

The purpose is to continue asking "Why?" until reaching something meaningful that can actually be addressed.

The expected reasoning structure is:

Observed symptom

→ Why?

→ Deeper reason

→ Why?

→ Deeper reason

→ ...

→ Root Cause

IMPORTANT:

The Root Cause must describe the problem.

It must NOT secretly contain the desired solution.

For example, avoid root causes such as:

> "There is no intelligent robot to solve the problem."

That is already a solution assumption.

---

# 5. How Might We

After identifying the root cause, transform the problem into an open-ended:

## How Might We...?

question.

The HMW question should:

- Focus on user needs
- Target the root problem
- Be open-ended
- Allow multiple possible solutions
- Avoid specifying a technology too early

Prefer:

> How might we help people easily find and organize everyday objects at home?

Avoid:

> How might we build a robot to organize people's rooms?

The first opens the solution space.

The second assumes the answer before brainstorming.

---

# 6. Co-Creation and Brainstorming

After defining the HMW question, brainstorm freely.

Do NOT immediately select the most technically impressive solution.

Generate multiple alternatives.

For each alternative, consider:

- Does it solve the root problem?
- What are its advantages?
- What are its limitations?
- Does it depend heavily on changing human habits?
- Is it technically feasible?
- Can it create meaningful user value?

The selected solution should emerge from comparison between alternatives.

---

# 7. Current Project Topic

## Daily-Life Problem

People frequently waste time looking for small everyday objects in dormitories, bedrooms, apartments, and homes.

Examples include:

- Keys
- Earphones
- Chargers
- Power banks
- Remote controls
- Stationery
- Other small frequently moved objects

A useful way to describe the situation is:

> The object is not actually lost. It is somewhere in the room, but the user does not know where.

---

# 8. Current Problem Statement

A simple English problem statement is:

> People often waste time looking for small everyday items at home.

The problem should remain understandable to a general international audience.

Avoid unnecessary technical vocabulary when explaining the problem.

---

# 9. Current User Groups

Potential users include:

- Students
- People living in dormitories
- Young people living alone
- People living in shared apartments
- Busy families
- General smart-home users

Possible future user groups may include:

- Elderly users
- Assisted-living environments
- Hotels
- Other indoor environments

Do not claim all of these as validated customers unless evidence is available.

Distinguish between:

- Current target users
- Potential future markets

---

# 10. Current 5 Whys

The current working version is:

### Why 1

Why can't people find their items?

Because they do not remember where they put them.

### Why 2

Why don't they remember?

Because small objects are frequently moved and do not always have a fixed location.

### Why 3

Why aren't objects always returned to the same place?

Because organizing everything manually takes time and effort.

### Why 4

Why is manual organization difficult to maintain?

Because it has to be repeated continuously in everyday life, and people do not always remember or want to do it.

### Why 5

Why does the problem keep coming back?

Because object locations keep changing, but there is no continuous mechanism to track and manage their locations and organization.

---

# 11. Current Root Cause

Current working root cause:

> Object locations are constantly changing, but they are not continuously tracked or managed.

Alternative formulation:

> The location and organization of everyday objects are not continuously tracked or managed.

This is a WORKING root cause and may be improved if better reasoning emerges.

Do not change it casually.

Any proposed change should explain why the new formulation better represents the underlying user problem.

---

# 12. Current How Might We Question

The primary HMW question is:

> **How might we help people easily find and organize everyday objects at home?**

This is currently the central project question.

Do not rewrite it into a robot-specific question unless explicitly requested.

---

# 13. Existing / Alternative Solutions

Before selecting the final solution, consider alternatives such as:

### Traditional storage

Examples:

- Storage boxes
- Labels
- Fixed storage locations

Advantages:

- Cheap
- Simple

Limitations:

- Depend on human habits
- Require users to continuously put objects back

### Tracking tags

Advantages:

- Useful for locating specific objects

Limitations:

- Require tags on individual objects
- Mainly solve "finding"
- Do not physically organize the environment

### Camera-based systems

Advantages:

- Can observe the environment
- May track object locations

Limitations:

- Cannot normally manipulate or organize objects

### Apps / software

Advantages:

- Low hardware requirements
- Easy interface

Limitations:

- Cannot directly change the physical environment

### Smart furniture / smart storage

Advantages:

- Useful for specific storage locations

Limitations:

- Limited to predefined physical spaces
- May still require human organization

### Embodied robot

Potential advantage:

A robot may combine:

- Perception
- Memory
- Mobility
- Decision-making
- Physical interaction

This makes it possible to move from merely identifying an object's location toward actively interacting with and organizing the environment.

---

# 14. Current Selected Solution Direction

Current working solution:

## Smart Home Organization Robot

The robot is intended to help users find and organize frequently used everyday objects.

The solution should be explained using four simple actions:

# SEE → REMEMBER → FIND → ORGANIZE

## SEE

Recognize relevant everyday objects and perceive the environment.

Possible technical components may include:

- Computer vision
- Object recognition
- Environmental sensing

## REMEMBER

Maintain information about where relevant objects are located.

Possible technical components may include:

- Indoor mapping
- Object-location records
- Dynamic environment representation

## FIND

When the user needs an object, locate it and help the user retrieve it.

Possible components include:

- Voice interaction
- Object search
- Navigation
- Path planning

## ORGANIZE

Physically interact with selected misplaced objects and return them to appropriate locations.

Possible components include:

- Manipulation
- Grasping
- Mobile robotics
- Object placement

---

# 15. Why Embodied Intelligence?

Do NOT describe embodied intelligence merely as "using AI in a robot."

The important distinction is physical interaction.

A useful explanation is:

> Unlike an app or a passive camera system, an embodied robot can perceive the environment, move through it, and physically interact with objects.

Another useful contrast:

> Existing tools may tell users where an object is. An embodied system may eventually be able to find it, bring it to the user, or put it back.

Technical terminology should support the user story rather than replace it.

---

# 16. Important Product Principle

Do NOT present the first version as a magical general-purpose household robot capable of cleaning and organizing everything.

Keep the concept believable.

Prefer a scoped initial product concept such as:

> A lightweight indoor robot that tracks selected everyday objects, helps users find them, and organizes a limited set of supported items.

Clearly distinguish between:

- MVP / first product
- Future vision

Avoid unsupported claims about technical capability.

---

# 17. User Value Proposition

Technology is NOT the primary value proposition.

The user is not buying:

- SLAM
- Computer vision
- AI
- Navigation
- Manipulation algorithms

The user is buying outcomes.

Primary user value:

> **Save time. Reduce stress. Make everyday life easier.**

A fuller value proposition:

> Save time and reduce everyday frustration by helping users find and organize frequently used objects.

Always explain user value before technical features.

---

# 18. Business Model Canvas

The course includes Business Model Canvas thinking.

The project should be able to address all nine areas.

## Customer Segments

Initial candidates:

- Students
- Young people living alone
- Shared apartments
- Busy families

## Value Proposition

Primary:

> Save time and reduce everyday frustration by helping users find and organize frequently used objects.

## Channels

Possible channels:

- Online sales
- Electronics retailers
- Smart-home platforms
- University communities

## Customer Relationships

Possible approaches:

- Mobile application
- Voice interaction
- Software updates
- Customer support
- Personalized settings

## Revenue Streams

Possible model:

- Hardware sales

Possible future model:

- Optional premium smart-home services
- Optional subscription services

Do not assume a subscription is necessary.

## Key Resources

Examples:

- Robot hardware
- Software
- Perception models
- Navigation technology
- Manipulation technology
- Manufacturing capability

## Key Activities

Examples:

- Product development
- Robotics development
- Software development
- Manufacturing
- Testing
- Maintenance
- Customer support

## Key Partners

Possible partners:

- Component suppliers
- Robot manufacturers
- Smart-home companies
- Electronics retailers

## Cost Structure

Possible major costs:

- Hardware development
- Manufacturing
- Software / AI development
- Testing
- Maintenance
- Distribution
- Marketing

The Business Model Canvas is primarily an analysis tool.

Do NOT simply read all nine boxes during the final presentation.

---

# 19. Final Course Deliverable

The team must present the business idea during the closing session.

## Presentation Duration

Approximately:

# 5 minutes per team

The presentation must therefore be highly focused.

---

# 20. Final Presentation Requirements

Before presenting, the team should:

- Know the audience
- Decide roles within the team
- Decide what the team wants to say
- Decide how the idea should be presented
- Rehearse the timing

Possible presentation formats include:

- Slides
- Paper
- Physical demonstration
- Prototype
- Role-play
- No slides, if appropriate

The presentation medium is secondary to communication quality.

---

# 21. Grading Criteria

The course highlights three major grading dimensions.

## 21.1 Delivery

Consider:

- Clear speaking
- Confidence
- Timing
- Audience engagement
- Smooth transitions
- Team coordination
- Understandable English

## 21.2 Content

The story should clearly connect:

Problem

→ Root Cause

→ HMW

→ Solution

→ User Value

→ Business

Avoid disconnected sections.

## 21.3 Collective Creativity

The presentation should demonstrate that the idea was developed through team collaboration.

Avoid making the final result appear to be the work of only one technical member.

Show creativity in:

- Problem framing
- Brainstorming
- Solution design
- Presentation format
- Business concept

---

# 22. Attention Grabber

The instructor explicitly emphasized the importance of an:

# Attention Grabber

Do not begin the final pitch with a generic opening such as:

> Hello everyone. Today we are going to introduce our project.

Prefer an immediate relatable situation.

Current suggested opening:

> **Have you ever been late because you couldn't find your keys?**

An optional short role-play could involve one team member preparing to leave and suddenly asking:

> Where are my keys?

Keep the opening short.

Approximately 10–20 seconds is enough.

---

# 23. Recommended 5-Minute Pitch Structure

Use approximately:

## 0:00–0:30 — Attention Grabber + Problem

Introduce the relatable situation.

Example:

> Have you ever been late because you couldn't find your keys?

Then establish the broader problem.

## 0:30–1:20 — Problem Analysis + Root Cause

Briefly explain:

- Who experiences it
- Why it matters
- 5 Whys
- Root cause

Do NOT spend excessive time showing every individual Why if time is limited.

## 1:20–1:40 — How Might We

Present:

> How might we help people easily find and organize everyday objects at home?

## 1:40–2:20 — Co-Creation / Alternatives

Briefly show that multiple alternatives were considered.

Examples:

- Storage
- Tags
- Cameras
- Apps
- Robot

Explain the key limitation:

Passive solutions can help store, record, or locate objects, but they cannot fully interact with the physical environment.

## 2:20–3:30 — Solution

Introduce:

> Smart Home Organization Robot

Explain:

> SEE → REMEMBER → FIND → ORGANIZE

Keep technical explanations visual and simple.

## 3:30–4:30 — User Value + Business

Explain:

- Target customer
- User value
- Basic revenue model
- Why users may pay

Do not mechanically present all nine Business Model Canvas blocks.

## 4:30–5:00 — Closing

Return to the opening scenario.

Possible closing line:

> Next time you can't find your keys, don't search the whole room. Just ask your robot.

Then:

> Thank you.

---

# 24. Communication Style

The final audience is international.

English should therefore be:

- Simple
- Natural
- Easy to pronounce
- Easy to understand
- Easy for team members to memorize

Prefer:

> The robot remembers where your things are.

over:

> The autonomous embodied agent maintains a continuously updated semantic representation of object-level spatial states.

Technical vocabulary may be used where necessary, but never at the expense of clarity.

---

# 25. Language Policy for Repository Work

Internal planning documents may primarily use Chinese.

Important presentation terminology should preserve English versions.

Final presentation materials should normally be in English unless explicitly requested otherwise.

When generating English scripts:

- Use short sentences
- Avoid rare vocabulary
- Avoid long subordinate clauses
- Optimize for spoken English
- Prefer words the presenters can pronounce confidently

---

# 26. Design Principles for Slides and HTML Presentations

When generating presentation materials:

- Prefer visual storytelling over dense text
- Use one main idea per section/slide
- Keep text short
- Use large typography
- Maintain consistent visual hierarchy
- Use diagrams where they clarify reasoning
- Make the Problem → Solution transition visually obvious
- Make SEE → REMEMBER → FIND → ORGANIZE a major visual element
- Make the final product concept understandable without technical background

Avoid:

- Academic-paper-style slides
- Walls of text
- Excessive technical diagrams
- Unnecessary animations
- Generic AI-generated corporate language

If generating an HTML presentation, optimize for:

- 16:9 presentation display
- Full-screen projection
- Keyboard navigation
- Clear slide boundaries
- Reliable offline use
- Readable typography from the back of a classroom

---

# 27. Evidence and Assumptions

Do not invent:

- Market size
- User statistics
- Prices
- Technical performance
- Customer demand
- Competitor capabilities
- Survey results

If evidence is unavailable, label something as:

- Assumption
- Hypothesis
- Proposed direction
- Future validation

If external research is later performed, preserve sources.

---

# 28. Working Status

The following are currently considered relatively stable:

- Daily-life object-finding problem
- Root-cause direction
- HMW question
- Embodied home organization robot as the selected solution direction
- SEE → REMEMBER → FIND → ORGANIZE
- 5-minute pitch requirement

The following remain open for iteration:

- Exact robot form
- MVP scope
- Interaction design
- Technical architecture
- Product name
- Pricing
- Business model details
- Target customer's exact priority
- Market validation
- Presentation design
- Team speaking roles

Do not silently treat open questions as finalized decisions.

---

# 29. Agent Working Rules

When an AI coding or design agent works on this repository:

1. Read this file first.
2. Preserve the Problem → Root Cause → HMW → Solution → Business logic.
3. Do not change the core project direction without explaining the reason.
4. Do not turn the project into a pure robotics research presentation.
5. Do not introduce technical complexity merely to sound advanced.
6. Optimize final materials for a 5-minute international classroom pitch.
7. Prefer simple spoken English.
8. Separate verified facts from assumptions.
9. Keep the user problem visible throughout the project.
10. When uncertain, preserve existing decisions and mark alternatives instead of silently replacing them.
11. Prefer editable, maintainable project files.
12. Keep presentation content and underlying research/documentation separated.
13. Before generating a final artifact, check it against the grading criteria:
    - Delivery
    - Content
    - Collective Creativity
14. Ensure the final presentation contains an effective Attention Grabber.
15. Ensure the solution is explained as user value first and technology second.

---

# 30. Core Project Summary

If context is limited, preserve at least this summary:

**Problem**

People frequently waste time looking for small everyday objects at home.

**Root Cause**

Object locations constantly change but are not continuously tracked or managed.

**How Might We**

> How might we help people easily find and organize everyday objects at home?

**Selected Direction**

Smart Home Organization Robot

**Core Interaction**

> SEE → REMEMBER → FIND → ORGANIZE

**User Value**

> Save time. Reduce stress. Make everyday life easier.

**Course Story**

> Problem → 5 Whys → Root Cause → HMW → Co-Creation → Solution → Business Model → Final Pitch

**Final Deliverable**

A concise 5-minute team Business Idea Presentation with strong:

- Delivery
- Content
- Collective Creativity
- Attention Grabber