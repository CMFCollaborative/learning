# Student Workflow: Transformations, Transversals and Proof
## Lesson with Git Integration

---

## Before Class Starts

### Step 1: Sync Your Work (2 minutes)

```bash
# Navigate to your class folder
cd ~/Documents/ClassWork/geometry-class

# Get latest updates
git pull origin main

# Verify you're in the right place
git status
```

---

## Lesson Overview (50 minutes)

Today you'll use what you learned about the Triangle Angle Sum Theorem to prove angle relationships created by transversals cutting parallel lines. You'll:
- Use transformations to understand angle relationships
- Prove theorems about transversals and parallel lines
- Apply multiple theorems together
- Track all your work using Git

**Git commits today: Minimum 5 (one after each activity)**

**Building on:** Last lesson (One Hundred Eighty) - you'll USE the Triangle Angle Sum Theorem today!

---

## Warm-up: Transformation Review (10 minutes)

### Step 1: Open Your Warm-up File (1 minute)

```bash
# Navigate to today's lesson folder
cd Unit-Angles-Proof/Lesson-Transformations-Transversals

# Open the warm-up file
# File: Warmup-Transformation-Review.md
```

**Your task:**
- Review transformations (translations, rotations, reflections)
- Identify which transformations preserve angle measures
- Connect to angle relationships

### Step 2: Complete the Warm-up (7 minutes)

In your file, you'll explore:
```markdown
## Transformation Properties

### Translation (Slide)
**Does it preserve angle measures?** (Yes/No)
**Example:**

### Rotation (Turn)
**Does it preserve angle measures?** (Yes/No)
**Example:**

### Reflection (Flip)
**Does it preserve angle measures?** (Yes/No)
**Example:**

## Connection to Angles
**How can transformations help us prove angle relationships?**
```

Fill in your analysis!

### Step 3: Commit Your Warm-up (2 minutes)

```bash
# Check what you changed
git status

# Add your work
git add Warmup-Transformation-Review.md

# Commit with clear message
git commit -m "Lesson Transformations: Completed warm-up on transformation properties"

# Push to backup
git push origin main
```

---

## Activity 1: Alternate Interior Angles (15 minutes)

### Step 1: Open Activity 1 File (1 minute)

```bash
# File: Activity1-Alternate-Interior-Angles.md
```

### Step 2: Explore the Relationship (10 minutes)

**What you'll do:**
1. Look at parallel lines cut by a transversal
2. Identify alternate interior angles
3. Use a transformation to show they're congruent
4. Write a formal proof

**In your file:**
```markdown
## The Diagram
[You'll see parallel lines cut by a transversal]

## Identifying Angles
**Line 1 (parallel):**
**Line 2 (parallel):**
**Transversal:**
**Alternate interior angles:** ∠___ and ∠___

## Using Transformations
**What transformation maps one angle onto the other?**

**Step-by-step description:**

## My Proof
**Given:** Lines l and m are parallel, cut by transversal t
**Prove:** Alternate interior angles are congruent

**Proof:**
[Your proof using transformations and Triangle Angle Sum]
```

### Step 3: Save Progress During Activity (twice)

```bash
# After identifying angles and transformation
git add Activity1-Alternate-Interior-Angles.md
git commit -m "Activity 1: Identified alternate interior angles and transformation"
git push origin main

# After completing proof
git add Activity1-Alternate-Interior-Angles.md
git commit -m "Activity 1: Completed alternate interior angles proof"
git push origin main
```

### Step 4: Check Your Understanding (4 minutes)

**Practice problem in your file:**
- Apply the theorem to find missing angles
- Justify using the theorem you just proved

---

## Activity 2: Other Angle Relationships (15 minutes)

### Step 1: Open Activity 2 File (1 minute)

```bash
# File: Activity2-Angle-Relationships.md
```

### Step 2: Prove More Relationships (12 minutes)

**This time you'll prove:**
- Corresponding angles are congruent
- Same-side interior angles are supplementary
- OR explore your choice of relationship

**In your file:**
```markdown
## Relationship 1: Corresponding Angles

**What are corresponding angles?**

**My conjecture:**

**My proof:**
[Use what you learned from Activity 1]

## Relationship 2: Same-Side Interior Angles

**What are same-side interior angles?**

**My conjecture:**

**My proof:**
[Hint: Use Triangle Angle Sum Theorem from last lesson!]

## Comparing Relationships
**How are these relationships connected?**
**Which theorem depends on which?**
```

### Step 3: Commit Activity 2 (2 minutes)

```bash
git add Activity2-Angle-Relationships.md
git commit -m "Activity 2: Proved angle relationships with transversals"
git push origin main
```

---

## Activity 3: Applying Multiple Theorems (10 minutes)

### Step 1: Open Activity 3 File (1 minute)

```bash
# File: Activity3-Complex-Diagrams.md
```

### Step 2: Solve Complex Problems (7 minutes)

**Challenge:**
- Diagrams with multiple parallel lines and transversals
- Multiple triangles
- Use BOTH Triangle Angle Sum AND transversal theorems

**In your file:**
```markdown
## Problem 1: Multi-step Angle Finding

[Diagram provided]

**What I know:**

**What I need to find:**

**Step 1:** [Use which theorem?]

**Step 2:** [Use which theorem?]

**Step 3:** [Combine information]

**Solution:**

## Problem 2: Proof with Multiple Theorems

**Given:**

**Prove:**

**My proof:**
[Use both lessons' theorems!]
```

### Step 3: Commit Activity 3 (2 minutes)

```bash
git add Activity3-Complex-Diagrams.md
git commit -m "Activity 3: Applied multiple theorems to complex diagrams"
git push origin main
```

---

## Lesson Synthesis (5 minutes)

### Class Discussion (3 minutes)
**No Git work during discussion** - listen and take notes!

### Update Your Reference Chart (2 minutes)

```bash
# File: Reference-Chart.md
# Add today's theorems

## Theorems About Transversals and Parallel Lines

**Alternate Interior Angles Theorem:**
When parallel lines are cut by a transversal, alternate interior angles are congruent.

**Corresponding Angles Theorem:**
[Your notes]

**Same-Side Interior Angles Theorem:**
[Your notes]

**How to use:**
- Identify parallel lines
- Identify transversal
- Classify angle pairs
- Apply appropriate theorem

**Connection to Triangle Angle Sum:**
[How did you use last lesson's theorem today?]
```

```bash
git add Reference-Chart.md
git commit -m "Reference chart: Added transversal angle theorems"
git push origin main
```

---

## Cool-down: Proof Challenge (5 minutes)

### Step 1: Final Proof (4 minutes)

```bash
# File: Cooldown-Proof-Challenge.md
```

**Your task:**
- Complex diagram with parallel lines, transversal, and triangle
- Find missing angles using ALL theorems from both lessons
- This is your exit ticket!

**In your file:**
```markdown
# Cool-down: Proof Challenge
**Name:** Your Name
**Date:** [Today's date]

## The Problem
[Complex diagram provided]

**Given:**

**Find:** All missing angle measures

## My Solution

**Step 1:** [Which theorem? Why?]

**Step 2:** [Which theorem? Why?]

**Step 3:** [Which theorem? Why?]

**Final answers:**
∠A = ___°
∠B = ___°
∠C = ___°
[etc.]

## Reflection
**Theorems I used today:**
- [ ] Triangle Angle Sum Theorem
- [ ] Alternate Interior Angles Theorem
- [ ] Corresponding Angles Theorem
- [ ] Same-Side Interior Angles Theorem
- [ ] Other: _________

**Which step was hardest?**

**Do I feel ready for the mastery check?** (Yes/Somewhat/Not yet)
```

### Step 2: Submit Cool-down (1 minute)

```bash
# This is graded as your exit ticket!
git add Cooldown-Proof-Challenge.md
git commit -m "Cool-down: Completed proof challenge (EXIT TICKET)"

# Tag it so teacher knows it's complete
git tag -a lesson-transformations-complete-$(date +%Y%m%d) -m "Transformations and Transversals lesson complete"

# Push everything
git push origin main --tags
```

**Important:** The tag tells your teacher you've finished the lesson!

---

## After Class

### Check Your Work (Optional but recommended)

```bash
# See everything you did today
git log --oneline --since="today"

# Should show approximately:
# - Warm-up commit
# - Activity 1 commits (2)
# - Activity 2 commit
# - Activity 3 commit
# - Reference chart commit
# - Cool-down commit
# - Tag for completion
```

### Prepare for Mastery Check

**If you feel ready:**
```bash
# Signal readiness for mastery check
git tag -a mastery-angles-proof-ready -m "Ready for Angles and Proof mastery check"
git push origin --tags
```

**Your teacher will review your work from BOTH lessons and confirm you're ready!**

---

## Git Checklist for This Lesson

By the end of class, you should have:
- [ ] Pulled at start of class
- [ ] Committed warm-up work
- [ ] Committed Activity 1 (at least twice)
- [ ] Committed Activity 2
- [ ] Committed Activity 3
- [ ] Updated reference chart
- [ ] Committed cool-down
- [ ] Tagged lesson as complete
- [ ] Pushed all work to origin

**Optional:**
- [ ] Tagged as ready for mastery check (if you feel prepared)

---

## Connection to Previous Lesson

**Last lesson (One Hundred Eighty):**
- Proved Triangle Angle Sum Theorem
- Used multiple proof methods
- Built proof-writing skills

**Today (Transformations, Transversals):**
- USED Triangle Angle Sum Theorem
- Added transversal theorems
- Combined multiple theorems
- More complex applications

**Tomorrow:**
- Review both lessons
- Mastery check preparation
- OR begin mastery check (if ready!)

---

## Mastery Check Preview

**The mastery check will assess:**
- Triangle Angle Sum Theorem (understanding and application)
- Transversal angle relationships
- Writing formal proofs
- Applying multiple theorems together
- Finding missing angles in complex diagrams

**To prepare:**
- Review your Reference-Chart.md
- Look at your work from both lessons
- Practice the cool-down problems
- Make sure you can explain WHY each theorem works

**Mastery check file:** `Mastery-Check-Angles-Proof.md`
(Available when you tag as ready!)

---

## Troubleshooting

### "I don't see today's folder"
```bash
cd ~/Documents/ClassWork/geometry-class
git pull origin main
ls Unit-Angles-Proof/
cd Unit-Angles-Proof/Lesson-Transformations-Transversals
```

### "I'm confused about which theorem to use"
Check your Reference-Chart.md from both lessons:
- **Triangle in diagram?** → Triangle Angle Sum
- **Parallel lines and transversal?** → Transversal theorems
- **Both?** → Use both!

### "I forgot what we did last lesson"
```bash
# Review your previous work
git show HEAD:../Lesson-One-Hundred-Eighty/Cooldown-Third-Proof.md

# Or just read your reference chart
cat Reference-Chart.md
```

---

## What Your Teacher Will See

Your teacher can see:
- ✓ When you started working
- ✓ Your thought process through both activities
- ✓ Which problems challenged you
- ✓ How you combined theorems
- ✓ Your readiness for mastery check
- ✓ Your complete learning progression

---

## Learning Goals Check

At the end of this lesson, can you:
- [ ] Identify angle pairs created by transversals?
- [ ] Prove alternate interior angles are congruent?
- [ ] Use transformations to justify angle relationships?
- [ ] Apply Triangle Angle Sum and transversal theorems together?
- [ ] Find missing angles in complex diagrams?

If you answered "yes" to all five - you might be ready for the mastery check!
If "no" to any - review those areas before the mastery check.

---

## Extension Opportunities

**If you finish early:**

1. **Prove all the relationships:**
   - Alternate interior angles (done in Activity 1)
   - Corresponding angles
   - Same-side interior angles
   - Alternate exterior angles
   - Same-side exterior angles

2. **Create your own problem:**
   - Draw complex diagram
   - Mark some angles
   - Challenge a classmate to find the rest
   - Submit via peer collaboration branch!

3. **Prepare for mastery check:**
   - Review both lessons
   - Practice complex problems
   - Update reference chart with examples

---

**Ready to connect theorems and transformations? Let's go!**

**Last Updated:** 2025-11-16
