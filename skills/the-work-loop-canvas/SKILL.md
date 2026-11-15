---
name: the-work-loop-canvas
description: Map, redesign and scale a business process for AI with the Work Loop Canvas, the Work Loop Map and the Scale Gates. Use when someone wants to put AI or agents into a core process, map a process for automation, sort which decisions an agent may take, decide where people must stay in the loop, prioritize which processes to tackle first, judge whether a pilot is ready to scale, or run a process-mapping workshop.
---

# The Work Loop Canvas

A one-page instrument for getting AI into the core of a firm. It maps one **work loop** (one outcome, owned end to end, with everything needed to produce it well) as twelve connected nodes. The **Work Loop Map** places every loop in the firm by value and readiness. Five **Scale Gates** say how far a loop may go today.

Source: *The Work Loop Canvas: How Work Is Redesigned When the Executor Decides*, The Business Engineer Library.

## Core ideas to carry into every answer

- **The executor changed.** A century of work design (Taylor, Ford, Sloan, Toyota, reengineering, ERP, the business model canvas, RPA) assumed an executor that follows instructions. Agents read context and decide. Ten of the twelve nodes are old; context and decisions are new.
- **Outside-in vs inside-out.** The web changed how a firm meets its market. AI has to enter the processes themselves, where firms are least documented.
- **Why pilots stall.** A documented process fuses the outcome, the steps it really needs and compensations (steps that only work around old constraints). Agents attached to the map automate the workaround. Decisions nobody owns, or never agreed, surface as incidents.
- **VTDF above, work loops below.** VTDF (Value, Technology, Distribution, Financial) says what the business is; work loops say how it runs. Outcome traces to Value; Context and Actions to Technology; Handoffs meet Distribution; Economics rolls into Financial.

## The method beneath: the business engineering loop

Business engineering runs a loop: understand the **distribution** of the domain you operate in → **abstract** (see the few kinds behind many cases) → **compress** (state the mechanism in the fewest words that still predict) → name it as a **mental model** → **test** it against real cases → build **intuition** through repetition → return to the distribution when it shifts. VTDF and this canvas are both products of the loop.

**Know the distribution first.** Normal (thin-tailed) domains: averages mean something; rules and thresholds handle almost every case. Power-law (fat-tailed) domains: a few cases carry most of the value; averages mislead. Design rule: agents run the body, junctions and closer grading sit in the tail. Report economics and acceptance for body and tail separately. Intuition is reliable where cases repeat and feedback is fast (Kahneman & Klein 2009), weakest in the tail. Note: "distribution" here is the statistical spread of cases, not VTDF's Distribution model.

## The twelve nodes (fill in this order)

| # | Node | Question | Signed when |
|---|---|---|---|
| 1 | Outcome | What does one accepted result look like, and who receives it? | Someone outside the team can tell accepted from rejected. |
| 2 | Compensations | Which steps exist only to work around a constraint that no longer applies? | Every remaining step is required by the outcome. |
| 3 | Rules | Where does each rule live today, and who owns it? | Every rule has an owner and a date; contradictions listed. |
| 4 | Context | What must the executor read to act well? | Each source has a keeper and is reachable with permissions. |
| 5 | Actions | What can the executor change, and in which systems? | Every write listed with system, permission, undo answer. |
| 6 | Decisions | Sort every decision: mechanical, bounded, consequential, contested. | Contested decisions are at zero. |
| 7 | Junctions | Where does a person decide, what do they see, how is an action reversed? | Every irreversible or high-cost action passes a named junction. |
| 8 | Exceptions | Where do cases the loop cannot handle go, and who works the queue? | Owner, time limit, weekly review. |
| 9 | Handoffs | What does the loop receive and pass on? | State defined both sides; mismatch owner named. |
| 10 | Standard | How is every outcome graded? | Every outcome graded against a written standard. |
| 11 | People | Who answers for the loop, and whose work changes? | Named people in place before production. |
| 12 | Economics | Cost per accepted outcome vs measured baseline? | Below baseline, measured not estimated. |

Status per node: **Blank** (nothing written), **Draft** (written), **Signed** (agreed and owned by a named person).

Decision classes: **mechanical** (rule, runs alone) · **bounded** (judgment within a written threshold, runs alone inside it) · **consequential** (a person always decides) · **contested** (never agreed; leadership settles it before the loop acts alone; no engineering resolves it).

## Scale Gates

| Gate | Loop may | Requires signed |
|---|---|---|
| G0 Mapped | nothing yet | all twelve at Draft+ |
| G1 Shadow | run beside today's process, no writes, grade every outcome | Outcome, Compensations, Rules, Context, Standard |
| G2 Bounded | act alone on mechanical + bounded decisions; junctions and exceptions live | + Actions, Decisions, Junctions, Exceptions |
| G3 Owned | production, named owner, below measured baseline | + People, Economics |
| G4 Core | write to systems of record, hand off to other loops | all twelve incl. Handoffs |

A loop moves up only when its gate's nodes are signed. Scale follows signatures, not confidence.

## Work Loop Map

Plot each loop: x = value to the core (1–5), y = readiness (share of nodes signed, Blank 0 / Draft 1 / Signed 2, out of 24). Top right: start here. Bottom right: map before you build. Top left: practice loops. Bottom left: wait. Draw handoffs between loops; dependent loops scale together.

## Modes

0. **Map the distribution.** Before filling, chart the loop's cases by size, type and value; show where volume sits and where money sits; classify the domain as normal or power-law and state what that means for decisions, junctions, grading and economics.
1. **Fill a canvas.** Ask for the process; walk the nodes in order; one question at a time when the user is present; produce the twelve-node canvas with statuses and the gate reached, plus what holds it there.
2. **Strip compensations.** For each step of a described process, name the constraint that created it and whether it still binds; strike or keep with a reason.
3. **Sort decisions.** List every decision in the process; classify into the four classes; flag contested ones and name who could settle each.
4. **Place junctions.** From consequential decisions and irreversible or high-cost actions, define who decides, what evidence they see, how to reverse; name who can pause the loop. Reject junctions placed for comfort.
5. **Gate check.** Given a canvas or pilot description, state the gate honestly and the exact nodes blocking the next one. A pilot claiming G2 with a contested decision open is G1.
6. **Build the Work Loop Map.** Score value and readiness per loop, place quadrants, draw handoffs, recommend sequence.
7. **Run a session.** Produce a 90-minute agenda: outcome 15 · compensations 20 · rules + context 20 · decisions 20 · junctions, people, economics, score 15. Roles: process owner, experienced operator, system owner, facilitator. Bring three cases: routine, difficult, one that went wrong; at least one from the tail of the distribution.
8. **Connect to VTDF.** Trace each loop's outcome to a value proposition (no proposition = remove, don't automate), check Technology covers context/actions, flag customer-facing handoffs, roll loop economics into the cost structure.

## Meters

Report: share of steps struck; rules owned and open contradictions; decisions per class (contested to zero); junction count and share of cases reaching one; exception queue size and age; acceptance rate; cost per accepted outcome vs baseline; loops per gate. Never report: tasks automated, agents deployed, % steps covered.

## Rules for output

- Write in plain business language. The canvas must be signable by someone who cannot name an AI model; leave model, vendor and architecture out unless asked.
- Never invent a client's numbers. Mark illustrative figures as illustrative.
- Compression: *Strip the workarounds. Sort the decisions. Sign the loop.*

## Worked example (composite insurer, illustrative)

Claims assessment: ~4,000 claims/month; ~80% under $5,000 carry ~25% of money paid, the largest 3% carry ~40%; assessment 6 of 11 days. Struck: overnight re-score, second review under $2,000, paper file transfer. 38 rules (21 manual, 9 engine, 8 in heads), 7 contradictions. Decisions: 4 mechanical, 4 bounded, 2 consequential, 1 contested (goodwill on borderline cover). Junctions: decline (senior adjuster, reopen 30 days), >$15,000 (team lead), fraud (investigations). Standard: rules engine + model grader + 2% human audit. Baseline $3.60/claim, 6 days, 88% right first time; target <$1.60, 1 day, 93%. Gate: G1 Shadow, held by the contested decision; settled by committee as a bounded rule with a team-lead junction, then G2.
