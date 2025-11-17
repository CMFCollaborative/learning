# Lesson: Transformations, Transversals and Proof
## Complete Git-Integrated Lesson Package

---

## Overview

**Lesson Topic:** Using transformations to prove angle relationships with transversals and parallel lines
**Duration:** 50 minutes
**Grade Level:** High School Geometry
**Prerequisites:** One Hundred Eighty (Triangle Angle Sum Theorem)
**Git Integration Level:** Full
**Mastery Check:** Available after this lesson

This lesson builds directly on the Triangle Angle Sum Theorem to prove and apply angle relationships created by transversals cutting parallel lines.

---

## What's Included

### For Teachers

| File | Purpose |
|------|---------|
| **[TEACHER_SETUP_Transformations_Transversals.md](TEACHER_SETUP_Transformations_Transversals.md)** | Complete lesson plan, timeline, mastery check access protocol |

### For Students

| File | Purpose |
|------|---------|
| **[LESSON_STUDENT_WORKFLOW_Transformations_Transversals.md](LESSON_STUDENT_WORKFLOW_Transformations_Transversals.md)** | Student guide with Git workflow for the lesson |

### Student Work Templates

In `templates-transformations/`:

| Template | Activity | Time | Commits |
|----------|----------|------|---------|
| **Warmup-Transformation-Review.md** | Review rigid transformations | 10 min | 1 |
| **Activity1-Alternate-Interior-Angles.md** | Prove alternate interior angles theorem | 15 min | 2 |
| **Activity2-Angle-Relationships.md** | Prove corresponding and same-side interior angles | 15 min | 1 |
| **Activity3-Complex-Diagrams.md** | Apply multiple theorems together | 10 min | 1 |
| **Cooldown-Proof-Challenge.md** | Exit ticket with complex problem | 5 min | 1 + tag |

**Expected commits:** 5-7 plus completion tag and optional mastery readiness tag

---

## Connection to Previous Lesson

**Lesson 1: One Hundred Eighty**
- Students proved Triangle Angle Sum Theorem
- Three different proof methods
- Foundation for this lesson

**Lesson 2: Transformations, Transversals (This Lesson)**
- USES Triangle Angle Sum Theorem
- Adds transversal angle theorems
- Combines multiple theorems

**Result:** Students ready for comprehensive mastery check

---

## Quick Start for Teachers

### Before Class

```bash
# 1. Create lesson folder
cd YourClassRepository/Unit-Angles-Proof
mkdir Lesson-Transformations-Transversals

# 2. Copy templates
cp templates-transformations/*.md Lesson-Transformations-Transversals/

# 3. Commit
git add Lesson-Transformations-Transversals/
git commit -m "Lesson setup: Transformations and Transversals"
git push origin main
```

### During Class

- Follow timeline in TEACHER_SETUP guide
- Monitor commits: `git log --all --since="10 min ago"`
- Watch for mastery readiness tags

### After Class

```bash
# Check who's ready for mastery check
git tag -l "mastery-angles-proof-ready"

# Review student work
git show student-name:path/to/Cooldown-Proof-Challenge.md

# Grant mastery check access (if ready)
cp templates-mastery/Mastery-Check-Angles-Proof.md Unit-Angles-Proof/
git push origin student-name/main
```

---

## Learning Goals

### Content Goals
- Use transformations to prove angle relationships
- Prove: Alternate Interior Angles Theorem
- Prove: Corresponding Angles Theorem
- Prove: Same-Side Interior Angles Theorem
- Apply multiple theorems in complex diagrams

### Process Goals
- Connect transformations to formal proof
- Build on previous knowledge (Triangle Angle Sum)
- Develop multi-step problem-solving
- Write clear, justified proofs

### Git Skills
- Continue daily workflow (now automatic)
- Tag readiness for assessments
- Self-assess preparation

---

## Lesson Structure

### Flow

```
Warm-up (10 min)
  ↓
Review transformations → Which preserve angles?
  ↓
Activity 1 (15 min)
  ↓
Prove alternate interior angles using 180° rotation
  ↓
Activity 2 (15 min)
  ↓
Prove corresponding and same-side interior angles
  ↓
Activity 3 (10 min) [Optional/Flexible]
  ↓
Apply ALL theorems together
  ↓
Cool-down (5 min)
  ↓
Complex problem + mastery readiness check
```

### Key Teaching Moments

1. **Transformation as proof tool:** Rotation preserves angles, so rotated angles are congruent
2. **Building theorems:** Corresponding angles proved FROM alternate interior
3. **Triangle connection:** Same-side interior uses Triangle Angle Sum!
4. **Pattern recognition:** Z, F, and C patterns for angle pairs

---

## Differentiation Built-In

### For All Students
- Step-by-step templates
- Visual prompts
- Multiple representations
- Practice problems embedded

### Struggling Students
- Physical manipulatives option (transparencies)
- Can focus on alternate interior only (Activity 1)
- Partner work allowed
- Teacher can add scaffolding via Git

### Advanced Students
- All five angle relationships (Activity 2)
- Create own problems (Activity 3)
- Peer teaching opportunities
- Early mastery check access

---

## Mastery Check Protocol

### Student Tags Readiness

```bash
git tag -a mastery-angles-proof-ready -m "Ready for mastery check"
git push origin --tags
```

### Teacher Reviews

**Check both lessons:**
1. One Hundred Eighty cool-down
2. Transformations cool-down
3. Reference chart completeness
4. Commit history (engagement)

**Decision:**
- **Ready:** Add Mastery-Check-Angles-Proof.md to student's folder
- **Review:** Provide specific feedback on what to review

### Mastery Check

**File:** `Mastery-Check-Angles-Proof.md` (in templates-mastery/)
**Time:** 40 minutes
**Sections:**
1. Triangle Angle Sum (20 pts)
2. Transversal Theorems (30 pts)
3. Combined Application (30 pts)
4. Reflection (5 pts)

**Scoring:**
- 75-85: Mastery (4)
- 65-74: Proficient (3)
- 55-64: Developing (2)
- <55: Beginning (1)

---

## Assessment

### Formative (Process)
- Daily commits
- Activity completion
- Questions asked (in files)
- Peer collaboration

**Via Git:**
```bash
git log student-name/main --since="lesson-date" --oneline
```

### Summative (Product)
- Cool-down (exit ticket): 10 points
- Mastery check (when ready): 85 points

**Grading workflow in TEACHER_SETUP guide**

---

## Materials Needed

### Physical
- Transparencies or patty paper (for showing transformations)
- Pre-drawn transversal diagrams
- Protractors (optional)
- Class reference chart

### Digital
- Computer/device per student
- Git configured
- Access to class repository
- Optional: GeoGebra or geometry software

---

## Standards Alignment

**Common Core:**
- HSG-CO.C.9: Prove theorems about lines and angles
- HSG-CO.A.5: Use transformations to define congruence
- MP3: Construct viable arguments
- MP7: Look for and make use of structure

**Git supports:**
- MP3: Documented reasoning in commits
- MP6: Precision in mathematical communication
- MP8: Repeated reasoning (patterns across angle types)

---

## Self-Paced Classroom Integration

### Students at Different Paces

**Fast pace:**
- Complete both lessons quickly
- Tag ready for mastery check
- Take check early
- Move to next unit OR peer teach

**On pace:**
- Lesson 1: Day 1
- Lesson 2: Day 2
- Review: Day 3 (optional)
- Mastery check: Day 4-5

**Slower pace:**
- Lesson 1: Days 1-2
- Lesson 2: Days 3-4
- Review: Day 5
- Mastery check: When ready

**Git makes this easy:**
- Everyone's progress visible
- No one held back
- No one rushed
- Natural differentiation

---

## Extension to Next Unit

**After mastery check:**

**Passed with Mastery (4) or Proficient (3):**
- Move to next unit
- Can still help peers

**Developing (2) or Beginning (1):**
- Review specific areas (in feedback)
- Revise for higher score
- Take revision mastery check

**Next Unit Preview:**
- Will use triangle and transversal theorems
- Building complexity
- More proofs

---

## Files Checklist

Before class:
- [ ] TEACHER_SETUP guide read
- [ ] All templates copied to repository
- [ ] Templates committed and pushed
- [ ] Physical materials ready
- [ ] Mastery-Check template ready (for later)

After class:
- [ ] Student work pulled
- [ ] Completion tags checked
- [ ] Cool-downs reviewed
- [ ] Mastery readiness assessed
- [ ] Mastery check access granted (if ready)

---

## Relationship to General Guides

**This lesson uses:**
- [TEACHER_WORKFLOW.md](../TEACHER_WORKFLOW.md) - Daily classroom procedures
- [STUDENT_GIT_GUIDE.md](../STUDENT_GIT_GUIDE.md) - Student reference
- [MASTERY_CHECK_GUIDE.md](../MASTERY_CHECK_GUIDE.md) - Assessment submission process

**This lesson demonstrates:**
- How lessons build on each other
- How Git tracks cumulative learning
- How self-paced mastery works
- How to manage different student paces

---

## Success Indicators

**During lesson:**
- Students commit regularly
- Questions in files show engagement
- Proofs show understanding
- Reference charts complete

**After lesson:**
- Most students complete cool-down
- Some tag mastery readiness
- Commit messages show thinking
- Work quality evident in Git

**Mastery check:**
- Students show combined understanding
- Can apply both lessons' concepts
- Write clear proofs
- Solve complex problems

---

## Teacher Reflection Questions

After teaching:

**Pacing:**
- Did timing work?
- Need more/less time for any activity?

**Understanding:**
- Common misconceptions?
- What clicked? What didn't?

**Git Integration:**
- How did commits help you monitor?
- Issues with tagging/workflow?

**Mastery Readiness:**
- How many students ready immediately?
- What review is needed?

---

**Ready to teach! See TEACHER_SETUP for detailed lesson plan.**

**Last Updated:** 2025-11-16
