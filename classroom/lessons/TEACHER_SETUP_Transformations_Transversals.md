# Teacher Setup: Transformations, Transversals and Proof
## Git Integration for Transversal Angle Relationships

---

## Quick Overview

**Lesson:** Transformations, Transversals and Proof
**Duration:** 50 minutes
**Prerequisites:** One Hundred Eighty lesson (Triangle Angle Sum Theorem)
**Git Integration:** Full - students commit work throughout lesson
**Mastery Check:** Students can tag readiness after this lesson

---

## Learning Goals

**Students will:**
- Use transformations to prove angle relationships with transversals
- Prove Alternate Interior Angles, Corresponding Angles, and Same-Side Interior Angles theorems
- Apply multiple theorems together in complex diagrams
- Combine Triangle Angle Sum Theorem with transversal theorems

**Git Skills:**
- Continue daily workflow
- Tag readiness for mastery check
- Use commits to show multi-step reasoning

---

## Before Class (10 minutes prep)

### Step 1: Set Up Repository (3 minutes)

```bash
cd ~/Documents/Teaching/Geometry-Class-2025

# Create lesson folder
mkdir -p Unit-Angles-Proof/Lesson-Transformations-Transversals

cd Unit-Angles-Proof/Lesson-Transformations-Transversals

# Copy template files
# (Templates from classroom/lessons/templates-transformations/)
```

**Folder should contain:**
- Warmup-Transformation-Review.md
- Activity1-Alternate-Interior-Angles.md
- Activity2-Angle-Relationships.md
- Activity3-Complex-Diagrams.md
- Cooldown-Proof-Challenge.md
- Reference-Chart.md (continuing from previous lesson)

### Step 2: Commit Templates (2 minutes)

```bash
git add Unit-Angles-Proof/Lesson-Transformations-Transversals/
git commit -m "Lesson setup: Transformations and Transversals templates ready"
git push origin main
```

### Step 3: Prepare Materials (5 minutes)

**Physical:**
- [ ] Transparencies or patty paper (for demonstrating transformations)
- [ ] Pre-drawn transversal diagrams
- [ ] Protractors (optional - for verification)
- [ ] Class reference chart display

**Digital:**
- [ ] GeoGebra or other geometry software (optional)
- [ ] Transformation applets (if available)

---

## Lesson Timeline (50 minutes)

### Opening (5 minutes)

**Student arrival - display on board:**
```
BEFORE WE START:
1. cd ~/Documents/ClassWork/geometry-class
2. git pull origin main
3. cd Unit-Angles-Proof/Lesson-Transformations-Transversals
4. Open Warmup-Transformation-Review.md
```

**Quick check:**
- Students synced
- Can access files
- Remember previous lesson (Triangle Angle Sum)

---

### Warm-up: Transformation Review (10 min)

**[0-2 min]** Introduce warm-up
- "Which transformations preserve angle measures?"
- Connect to angle proofs
- Open Warmup-Transformation-Review.md

**[2-8 min]** Students work
- Review translations, rotations, reflections
- Identify which preserve angles (all rigid transformations do!)
- Predict how transformations help with parallel lines

**Monitor:**
```bash
git fetch --all
git log --all --since="5 min ago" --oneline
```

**[8-10 min]** Brief discussion
- All rigid transformations preserve angles
- We'll use rotation to prove alternate interior angles
- Students commit

---

### Activity 1: Alternate Interior Angles (15 min)

**[10-11 min]** Introduce Activity 1
- Parallel lines cut by transversal
- Identify alternate interior angles
- Open Activity1-Alternate-Interior-Angles.md

**[11-23 min]** Students work (3 parts)

**Part 1 (5 min):** Identify alternate interior angles
- Interior angles vs. exterior
- Alternate = opposite sides of transversal
- "Z" pattern

**Part 2 (5 min):** Use transformation
- 180° rotation around midpoint
- Maps one angle onto the other
- Shows angles are congruent

**Mid-activity commit [~16 min]:**
```
"If you've identified the transformation, commit now!"
```

**Part 3 (5 min):** Write formal proof
- Given/Prove format
- Step-by-step with justifications
- Conclusion

**Access for diverse abilities:**
- Physical manipulatives (transparencies)
- Draw transformation
- Partner discussion allowed

**[23-25 min]** Share proofs
- How did you use transformations?
- Alternative: Triangle Angle Sum method
- Final commit

---

### Activity 2: Other Angle Relationships (15 min)

**[25-26 min]** Transition
- "Now prove corresponding angles and same-side interior angles"
- Open Activity2-Angle-Relationships.md

**[26-38 min]** Students prove both relationships

**Corresponding Angles (7 min):**
- Identify the pattern ("F" shape)
- Conjecture: congruent
- Prove using alternate interior + linear pair

**Same-Side Interior Angles (7 min):**
- Identify the pattern ("C" shape)
- Conjecture: supplementary
- Prove using alternate interior OR Triangle Angle Sum!

**Key teaching point:**
"Can you use last lesson's Triangle Angle Sum Theorem here?"

**[38-40 min]** Quick discussion
- How are theorems connected?
- Which depends on which?
- Summary table

**[40 min]** Commit Activity 2

---

### Activity 3: Complex Diagrams (10 min) *[Optional/Flexible]*

**Note:** Depending on pacing, this might be abbreviated or homework.

**[40-41 min]** Introduce
- "Now use ALL the theorems together"
- Open Activity3-Complex-Diagrams.md

**[41-48 min]** Students work
- Multi-step angle finding
- Triangle in transversal diagram
- Proof with multiple theorems

**Differentiation:**
- Struggling: Do Problem 1 only (guided)
- On-pace: Problems 1-2
- Advanced: All problems + create own

**[48 min]** Commit Activity 3

---

### Lesson Synthesis (3 min)

**[48-50 min]** Update Reference Chart
- Add all three transversal theorems
- Connection to Triangle Angle Sum
- Summary table of angle relationships

**[50 min]** Commit reference chart

---

### Cool-down (5 min) *[Overlaps with synthesis if needed]*

**[50-54 min]** Individual exit ticket
- Complex diagram
- Find all angles using multiple theorems
- Check work

**[54-55 min]** Submit with tag
```bash
git commit -m "Cool-down complete (EXIT TICKET)"
git tag -a lesson-transformations-complete-$(date +%Y%m%d) -m "Complete"
git push origin main --tags
```

**Optional mastery readiness tag:**
```bash
git tag -a mastery-angles-proof-ready -m "Ready for mastery check"
```

---

## After Class (15 minutes)

### Review Student Work

```bash
# Pull all student work
git fetch --all

# Check completion
git tag -l "lesson-transformations-complete-*" | wc -l

# Check mastery readiness tags
git tag -l "mastery-angles-proof-ready"

# Spot-check cool-downs
git show student-name/main:Unit-Angles-Proof/Lesson-Transformations-Transversals/Cooldown-Proof-Challenge.md
```

### Assess Mastery Readiness

**For students who tagged as ready:**

1. **Check both lessons:**
   - One Hundred Eighty cool-down
   - Transformations cool-down
   - Reference chart completeness

2. **Review commit history:**
   - Consistent work?
   - Good engagement?
   - Understanding evident?

3. **Decision:**
   - **Ready:** Grant access to mastery check
   - **Review needed:** Provide feedback, suggest areas to review

**Feedback template:**
```bash
cat > Unit-Angles-Proof/Mastery-Check-Readiness-Feedback.md <<EOF
# Mastery Check Readiness - [Student Name]

## Lessons Reviewed:
✓ One Hundred Eighty (Triangle Angle Sum)
✓ Transformations, Transversals

## Readiness Assessment:
- Triangle Angle Sum understanding: [Strong/Good/Needs review]
- Transversal angle relationships: [Strong/Good/Needs review]
- Multi-step problem solving: [Strong/Good/Needs review]
- Proof writing: [Strong/Good/Needs review]

## Decision:
[✓] READY for mastery check! Access granted to Mastery-Check-Angles-Proof.md
[ ] REVIEW suggested - see below

## Areas to Review (if any):

## When ready:
Pull the latest from main to access the mastery check.
EOF

git add Unit-Angles-Proof/Mastery-Check-Readiness-Feedback.md
git commit -m "Mastery readiness feedback for [Student Name]"
git push origin student-name/main
```

---

## Grading This Lesson

### Process (Participation - 40%)

**Check commits:**
```bash
git log student-name/main --since="lesson-date" --oneline | wc -l
# Expected: 5-7 commits
```

**Rubric:**
- 6+ commits with good messages: Full credit
- 4-5 commits: Proficient
- 2-3 commits: Developing
- 0-1 commits: Incomplete

### Product (Understanding - 60%)

**Cool-down (Exit Ticket):**
- Correct angle calculations: ___/5 points
- Correct theorem application: ___/3 points
- Work shown clearly: ___/2 points
**Total: ___/10 points**

**Review via:**
```bash
git show student-name:path/to/Cooldown-Proof-Challenge.md
```

---

## Differentiation

### Struggling Students

**Scaffolding provided in templates:**
- Step-by-step sections
- Sentence frames
- Visual prompts

**Additional support:**
```bash
# Add hints to their file
git checkout student-name/main
# Edit Activity1 to add guiding questions
git commit -m "Added scaffolding for [name]"
git push origin student-name/main
```

### Advanced Students

**Extensions:**
- Activity 3 Problem 4: Create own problem
- Prove ALL five angle relationships
- Peer teaching (extra credit)

**Track:**
```bash
git log --all --grep="peer\|create\|extension"
```

---

## Common Issues

### "I don't understand alternate vs. corresponding"

**Solution:**
- Use physical models (transparencies)
- Draw multiple examples
- Focus on patterns: Z, F, C shapes
- Reference chart has table

### "I can't remember Triangle Angle Sum"

**Solution:**
```bash
# Student reviews previous lesson
git show HEAD~1:../Lesson-One-Hundred-Eighty/Cooldown-Third-Proof.md
# Or reference chart
```

### "Too many theorems - I'm confused"

**Solution:**
- Focus on alternate interior first
- Show how others derive from it
- Build systematically
- Use summary table in Activity 2

---

## Connection to Mastery Check

**Mastery check will assess:**
1. **Triangle Angle Sum (Lesson 1)**
   - Prove it
   - Apply it

2. **Transversal Theorems (Lesson 2)**
   - Identify angle pairs
   - Apply correct theorem
   - Find missing angles

3. **Combined Application**
   - Multi-step problems
   - Proof writing
   - Justification

**Students are ready when:**
- Both cool-downs show understanding
- Reference chart is complete
- Can apply theorems independently
- Proof writing is clear

---

## Mastery Check Access Protocol

### When Student Tags Readiness

1. **Review their work** (both lessons)
2. **Provide feedback** (template above)
3. **If ready:**
   ```bash
   # Add mastery check to their folder
   cp Mastery-Check-Angles-Proof.md Unit-Angles-Proof/
   git add Unit-Angles-Proof/Mastery-Check-Angles-Proof.md
   git commit -m "Mastery check: Access granted for [Student Name]"
   git push origin student-name/main
   ```

4. **Notify student:** "Pull from main - your mastery check is ready!"

### Managing Different Paces

**Fast students:**
- Take mastery check as early as tomorrow
- Work ahead on next unit while others catch up
- Peer teaching opportunities

**On-pace students:**
- Review day between lessons and mastery check
- Take check in 2-3 days

**Slower students:**
- Extra practice problems
- Review sessions
- Take check when ready (no rush)

---

## Next Lesson Options

**If most students are ready:**
- Review day (optional)
- Begin mastery checks
- Students who pass: Start next unit

**If students need more time:**
- Extra practice day
- Small group instruction
- More complex problems

**Self-paced advantage:**
- Students work at own pace
- Git shows who's where
- Differentiation is natural

---

## Quick Reference: Commands

```bash
# SETUP
git add Unit-Angles-Proof/Lesson-Transformations-Transversals/
git commit -m "Lesson setup"
git push origin main

# MONITOR
git fetch --all
git log --all --since="10 min ago" --oneline

# CHECK COMPLETION
git tag -l "lesson-transformations-complete-*"
git tag -l "mastery-angles-proof-ready"

# REVIEW WORK
git show student-name:path/to/Cooldown-Proof-Challenge.md

# GRANT MASTERY ACCESS
cp Mastery-Check-Angles-Proof.md Unit-Angles-Proof/
git add Unit-Angles-Proof/Mastery-Check-Angles-Proof.md
git commit -m "Mastery check access for [Student]"
git push origin student-name/main
```

---

**You're ready to teach! This lesson builds perfectly on the previous one.**

**Last Updated:** 2025-11-16
