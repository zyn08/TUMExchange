# Smart Home Organization Robot HTML Presentation Design

## Purpose

Create an offline 16:9 HTML presentation for a four-person team, designed for an approximately five-minute TUM course business-idea pitch. The presentation must make a coherent, human-centered case before introducing the robot.

## Confirmed Foundations

- **Problem:** People often waste time looking for small everyday items at home.
- **Root Cause:** Object locations constantly change, but they are not continuously tracked or managed.
- **How Might We:** How might we help people easily find and organize everyday objects at home?
- **Solution direction:** Smart Home Organization Robot.
- **Core interaction:** SEE → REMEMBER → FIND → ORGANIZE.
- **User value:** Save time. Reduce stress. Make everyday life easier.
- **Primary target user:** Students living in dormitories or shared apartments.
- **MVP:** One dorm room; selected small objects such as keys, earphones, and charging cables; location memory and finding support; only limited return-to-place actions when appropriate.
- **Business model:** Hardware sale. Subscription is only a possible future option and is not part of the core pitch.
- **Language:** Simple spoken English on every presentation page.

## Narrative Structure

The main approach is a relatable story. A 10–20 second live opening has one presenter preparing to leave and asking, “Where are my keys?” The narrative then moves from this recurring problem through root cause and alternatives to a credible, constrained robot concept. A compact alternative-comparison section makes the team’s co-creation visible without interrupting the story.

| Page | Purpose | Suggested speaker | Target time |
|---|---|---:|---:|
| 1. Lost Keys | Live hook and opening problem | 1 | 0:20 |
| 2. The recurring problem | Show the student/dorm context and cost | 1 | 0:45 |
| 3. Why it keeps happening | Root Cause and HMW | 2 | 0:45 |
| 4. We explored alternatives | Co-creation and choice rationale | 3 | 0:40 |
| 5. The robot experience | SEE → REMEMBER → FIND → ORGANIZE | 3 | 0:50 |
| 6. A believable MVP | Scope, boundaries, and user interaction | 4 | 0:40 |
| 7. Value and closing | Value, hardware sale, callback to keys | 4 | 0:35 |

The designed content totals approximately 4 minutes 35 seconds, leaving a buffer for live pauses and transitions.

## Visual System

Use a warm, mature daily-life style: an off-white background, dark-brown primary text, muted terracotta and olive-green accents, generous whitespace, editorial-style headings, and consistent thin-line illustrations. The robot is shown only as a refined concept illustration; no real robot photo or performance-implying render is used. Keys, earphones, and charging cables provide recognizable human-scale context.

The presentation avoids dense text, academic layouts, unsupported metrics, invented market sizes, prices, performance figures, and unverified user claims.

## Technical Design

- One self-contained HTML file that runs offline by opening it in a browser.
- 16:9 full-screen slides with seven distinct pages.
- Navigation through keyboard Left/Right, Space, and mouse click.
- Lightweight transitions only; no network dependencies and no required external assets.
- Each page contains a concise English visual message, not the presenters’ full script.

## Acceptance Criteria

1. All seven pages preserve the confirmed problem-to-business narrative.
2. The four speaker handoffs are obvious in the page sequence.
3. The MVP boundary stays credible and does not promise general household organization.
4. The rendering remains readable on a 16:9 classroom projection with no clipped content.
5. Keyboard and click navigation work in an offline browser.
6. The full team can rehearse the displayed material within approximately five minutes.

## Explicit Non-Goals

- No technical prototype claim.
- No invented market validation, price, user statistic, or performance result.
- No generic household-robot promise.
- No requirement for an internet connection or online service.
