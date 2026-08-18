# Smart Home Organization HTML Presentation Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build a polished, offline, seven-slide HTML presentation for a four-person, approximately five-minute Smart Home Organization Robot pitch.

**Architecture:** A single self-contained presentation file contains semantic slide sections, embedded CSS, and minimal vanilla JavaScript navigation. A companion PowerShell verifier statically checks the agreed narrative, slide count, navigation hooks, and scope boundaries before browser visual review.

**Tech Stack:** HTML5, CSS3, vanilla JavaScript, PowerShell 7, local browser.

---

## File Structure

- Create: `Presentation/SmartHomeOrganizationRobotPresentation.html` — seven-slide offline presentation, styles, and navigation.
- Create: `Presentation/VerifyPresentation.ps1` — static verification of the presentation structure and required statements.
- Modify: `.gitignore` — already updated to exclude the local `.superpowers/` brainstorming session.

### Task 1: Create the failing static verifier

**Files:**
- Create: `Presentation/VerifyPresentation.ps1`
- Test: `Presentation/VerifyPresentation.ps1`

- [ ] **Step 1: Write the verifier before creating the presentation file**

```powershell
param(
  [string]$PresentationPath = (Join-Path $PSScriptRoot 'SmartHomeOrganizationRobotPresentation.html')
)

$ErrorActionPreference = 'Stop'

if (-not (Test-Path -LiteralPath $PresentationPath)) {
  throw "Presentation file not found: $PresentationPath"
}

$html = Get-Content -Raw -LiteralPath $PresentationPath
$requiredFragments = @(
  'class="slide"',
  'Where are my keys?',
  'Object locations constantly change',
  'How might we help people easily find and organize everyday objects at home?',
  'SEE', 'REMEMBER', 'FIND', 'ORGANIZE',
  'Students living in dormitories or shared apartments',
  'Hardware sale',
  'keydown',
  'showSlide'
)

foreach ($fragment in $requiredFragments) {
  if ($html -notmatch [regex]::Escape($fragment)) {
    throw "Required presentation fragment is missing: $fragment"
  }
}

$slideCount = ([regex]::Matches($html, 'class="slide(?:\s|\")')).Count
if ($slideCount -ne 7) {
  throw "Expected 7 slides, found $slideCount"
}

Write-Output "PASS: $slideCount slides and all required narrative/navigation fragments are present."
```

- [ ] **Step 2: Run it to confirm the pre-implementation failure**

Run:

```powershell
pwsh -NoProfile -File Presentation/VerifyPresentation.ps1
```

Expected: failure beginning with `Presentation file not found:`.

- [ ] **Step 3: Commit only after explicit user authorization**

```powershell
git add Presentation/VerifyPresentation.ps1 .gitignore
git commit -m "test: add presentation verifier"
```

Do not run this command unless the user explicitly asks to commit.

### Task 2: Implement the seven-slide document and visual system

**Files:**
- Create: `Presentation/SmartHomeOrganizationRobotPresentation.html`
- Test: `Presentation/VerifyPresentation.ps1`

- [ ] **Step 1: Create a semantic slide shell with the agreed copy**

Use the following seven `section` elements inside `<main id="deck">`; retain these exact class names and core claims so the verifier and the agreed narrative stay aligned.

```html
<section class="slide active" data-speaker="1" aria-label="Lost Keys">
  <p class="eyebrow">A familiar morning</p>
  <h1>“Where are my keys?”</h1>
  <p class="lead">A small problem can make a student late, stressed, and frustrated.</p>
</section>
<section class="slide" data-speaker="1" aria-label="The recurring problem">
  <p class="eyebrow">The recurring problem</p>
  <h2>Small things move.<br>Searching takes time.</h2>
  <p>Keys, earphones, charging cables — usually somewhere in the room, but not where we expect.</p>
</section>
<section class="slide" data-speaker="2" aria-label="Root Cause">
  <p class="eyebrow">Why it keeps happening</p>
  <h2>Object locations constantly change,<br>but they are not continuously tracked or managed.</h2>
  <p class="question">How might we help people easily find and organize everyday objects at home?</p>
</section>
<section class="slide" data-speaker="3" aria-label="Alternatives">
  <p class="eyebrow">We explored alternatives</p>
  <h2>Storage. Tags. Apps. Cameras. A robot.</h2>
  <p>Passive tools can store, record, or locate. A robot can also interact with the physical space.</p>
</section>
<section class="slide" data-speaker="3" aria-label="Robot Experience">
  <p class="eyebrow">Smart Home Organization Robot</p>
  <h2>SEE → REMEMBER → FIND → ORGANIZE</h2>
  <p>It observes selected objects, remembers recent locations, helps find them, and supports limited return-to-place actions.</p>
</section>
<section class="slide" data-speaker="4" aria-label="MVP">
  <p class="eyebrow">A believable first version</p>
  <h2>One dorm room.<br>A few everyday objects.</h2>
  <p>For Students living in dormitories or shared apartments: keys, earphones, and charging cables — not a general household robot.</p>
</section>
<section class="slide" data-speaker="4" aria-label="Value and Closing">
  <p class="eyebrow">The value</p>
  <h2>Save time.<br>Reduce stress.<br>Make everyday life easier.</h2>
  <p>Hardware sale for a focused home-organization companion.</p>
  <p class="closing">Next time you cannot find your keys, do not search the whole room. Just ask your robot.</p>
</section>
```

- [ ] **Step 2: Add the embedded warm editorial CSS**

Use this token system and ensure the deck has 16:9 dimensions, large projected type, visible active-slide state, and a non-distracting slide counter.

```css
:root { --paper:#f8f3ea; --ink:#30261f; --terracotta:#b7684f; --olive:#647052; --line:#d9cdbd; }
* { box-sizing:border-box; }
body { margin:0; overflow:hidden; background:var(--paper); color:var(--ink); font-family:Arial, Helvetica, sans-serif; }
#deck { width:100vw; height:100vh; position:relative; }
.slide { display:none; min-height:100%; padding:8vh 10vw; position:absolute; inset:0; }
.slide.active { display:flex; flex-direction:column; justify-content:center; animation:appear .35s ease both; }
.eyebrow { color:var(--terracotta); font-size:clamp(.9rem,1.6vw,1.35rem); font-weight:700; letter-spacing:.12em; text-transform:uppercase; }
h1,h2 { max-width:1000px; margin:.25em 0; font-family:Georgia, 'Times New Roman', serif; font-size:clamp(3.1rem,7vw,7rem); line-height:.98; letter-spacing:-.045em; }
.lead,.slide > p:not(.eyebrow) { max-width:850px; font-size:clamp(1.25rem,2.4vw,2.2rem); line-height:1.35; }
.question,.closing { color:var(--olive); font-weight:700; }
#counter { position:fixed; right:3vw; bottom:3vh; color:var(--terracotta); font-weight:700; }
@keyframes appear { from { opacity:0; transform:translateY(18px); } to { opacity:1; transform:translateY(0); } }
```

- [ ] **Step 3: Add only locally drawn concept visuals**

Add inline SVG or CSS line illustrations for keys, earphones, a charging cable, room zones, and a small generic robot silhouette. Do not embed a photo, remote font, CDN, online image, market statistic, price, technical-performance claim, or an implication that the robot is an existing prototype.

- [ ] **Step 4: Run the static verifier**

Run:

```powershell
pwsh -NoProfile -File Presentation/VerifyPresentation.ps1
```

Expected: `PASS: 7 slides and all required narrative/navigation fragments are present.`

### Task 3: Add offline navigation and accessibility basics

**Files:**
- Modify: `Presentation/SmartHomeOrganizationRobotPresentation.html`
- Test: `Presentation/VerifyPresentation.ps1`

- [ ] **Step 1: Add navigation controls and page state**

Place this before `</body>` after the deck markup. It provides Left/Right, Space, Home, End, and click navigation without any external dependency.

```html
<div id="counter" aria-live="polite">1 / 7</div>
<script>
  const slides = [...document.querySelectorAll('.slide')];
  const counter = document.querySelector('#counter');
  let current = 0;
  function showSlide(index) {
    current = Math.max(0, Math.min(index, slides.length - 1));
    slides.forEach((slide, slideIndex) => slide.classList.toggle('active', slideIndex === current));
    counter.textContent = `${current + 1} / ${slides.length}`;
  }
  document.addEventListener('keydown', (event) => {
    if (['ArrowRight', ' ', 'PageDown'].includes(event.key)) { event.preventDefault(); showSlide(current + 1); }
    if (['ArrowLeft', 'PageUp'].includes(event.key)) { event.preventDefault(); showSlide(current - 1); }
    if (event.key === 'Home') showSlide(0);
    if (event.key === 'End') showSlide(slides.length - 1);
  });
  document.addEventListener('click', () => showSlide(current + 1));
  showSlide(0);
</script>
```

- [ ] **Step 2: Run the verifier again**

Run:

```powershell
pwsh -NoProfile -File Presentation/VerifyPresentation.ps1
```

Expected: `PASS: 7 slides and all required narrative/navigation fragments are present.`

- [ ] **Step 3: Manually verify the browser interaction**

Open `Presentation/SmartHomeOrganizationRobotPresentation.html` in a browser. Confirm that each of Right Arrow, Left Arrow, Space, Home, End, and mouse click changes or restores the expected page, and that the counter changes from `1 / 7` to `7 / 7`.

### Task 4: Perform final content and projection QA

**Files:**
- Modify if needed: `Presentation/SmartHomeOrganizationRobotPresentation.html`
- Test: `Presentation/VerifyPresentation.ps1`

- [ ] **Step 1: Re-run structural verification**

```powershell
pwsh -NoProfile -File Presentation/VerifyPresentation.ps1
```

Expected: `PASS: 7 slides and all required narrative/navigation fragments are present.`

- [ ] **Step 2: Check rendered slides at 16:9**

Use a desktop browser in full-screen mode. At every page, check that no element is clipped, body text is readable at a distance, line illustrations remain secondary to the message, and the style remains warm and mature rather than playful or corporate.

- [ ] **Step 3: Check claim boundaries**

Search the final file and confirm it does not contain market sizes, prices, user-survey claims, technical metrics, a general-home-organization promise, or an assertion that a prototype exists:

```powershell
rg -n -i 'market|€|\$|prototype|accuracy|percent|survey|general household' Presentation/SmartHomeOrganizationRobotPresentation.html
```

Expected: no output, except an intentional scope statement that explicitly says `not a general household robot`.

- [ ] **Step 4: Rehearse the four speaker blocks**

Time the team against the 0:20 / 0:45 / 0:45 / 0:40 / 0:50 / 0:40 / 0:35 target split. The spoken content should finish near 4:35; reserve the remaining time for transitions, live reaction, and small pauses.

- [ ] **Step 5: Commit only after explicit user authorization**

```powershell
git add .gitignore Docs/Superpowers/Specs/2026-08-18-smart-home-organization-presentation-design.md Docs/Superpowers/Plans/2026-08-18-smart-home-organization-presentation.md Presentation/SmartHomeOrganizationRobotPresentation.html Presentation/VerifyPresentation.ps1
git commit -m "feat: add smart home organization pitch presentation"
```

Do not run this command unless the user explicitly asks to commit.
