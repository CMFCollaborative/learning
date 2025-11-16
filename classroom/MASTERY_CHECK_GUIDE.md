# Mastery Check Submission Guide
## Using Git for Assessment

---

## What is a Mastery Check?

A mastery check is your opportunity to show you've mastered a unit's concepts. Using Git to submit:
- Shows your teacher your work process (not just the final answer)
- Creates a permanent record of your assessment
- Allows for easy revision if needed
- Builds your learning portfolio

---

## Mastery Levels Explained

| Level | Score | Meaning | What's Next |
|-------|-------|---------|-------------|
| **Mastery** | 4 | You've got it! | Move to next unit |
| **Proficient** | 3 | Solid understanding | Move on or revise for 4 |
| **Developing** | 2 | Getting there | Revision required |
| **Beginning** | 1 | Need more practice | Review & resubmit |

---

## Before the Mastery Check

### Step 1: Signal You're Ready (2 minutes before deadline)

When you've completed all practice and feel ready:

```bash
# Make sure all your prep work is saved
git add .
git commit -m "Unit 3 Prep Complete: Ready for mastery check"

# Create a "ready" tag
git tag -a mastery-unit3-ready -m "Ready for Unit 3 assessment"

# Push everything
git push origin main --tags
```

**What this does:**
- Tells your teacher you're ready
- Bookmarks your preparation work
- Allows teacher to review your readiness

### Step 2: Teacher Reviews (Teacher's Part)

Your teacher will:
- See that you've tagged as ready
- Review your preparation work
- Confirm you can take the mastery check
- Give you the green light

### Step 3: Get the Assessment

Your teacher will provide:
- The mastery check problems (paper or digital)
- Time limit
- Resources you can use
- Any special instructions

---

## During the Mastery Check

### Step 1: Create Your Assessment File (1 minute)

```bash
# In your unit folder, create the assessment file
# Name format: UnitX-MasteryCheck.md

# Example for Unit 3:
cd students/your-name/Unit3
touch Unit3-MasteryCheck.md
```

**Open the file in your editor and add:**
```markdown
# Unit 3 Mastery Check
**Name:** Your Name
**Date:** 2025-11-16
**Time Started:** 1:30 PM

---

## Problem 1
[Your work here]

## Problem 2
[Your work here]

## Problem 3
[Your work here]

---
```

### Step 2: Save Your Progress (Every 10-15 minutes)

**As you work, save periodically:**

```bash
git add Unit3-MasteryCheck.md
git commit -m "Mastery Check Unit 3: Working on problems 1-3"
git push origin main
```

**Why save during the check?**
- Protects against computer crashes
- Shows your teacher your thinking process
- Proves when you did the work
- Allows teacher to see if you're stuck

### Step 3: Show Your Work

**Use markdown formatting to show your thinking:**

```markdown
## Problem 1: Prove triangle ABC is congruent to triangle DEF

**Given:**
- AB = DE
- BC = EF
- ∠B = ∠E

**Strategy:** I'll use SAS (Side-Angle-Side) theorem

**Proof:**
1. AB = DE (given)
2. ∠B = ∠E (given)
3. BC = EF (given)
4. Therefore, △ABC ≅ △DEF by SAS

**Reasoning:** Since two sides and the included angle are equal,
the triangles must be congruent.
```

**For calculations (Physics):**
```markdown
## Problem 2: Calculate velocity

**Given:**
- Distance: 150 meters
- Time: 30 seconds

**Work:**
v = d/t
v = 150m / 30s
v = 5 m/s

**Answer:** 5 m/s

**Check:** Does this make sense? 5 m/s = 18 km/h, which is
about jogging speed. That seems reasonable for this scenario.
```

---

## Submitting Your Mastery Check

### Final Submission (When you're done)

```bash
# Make absolutely sure all your work is saved
git add .

# Commit with clear submission message
git commit -m "Mastery Check Unit 3: COMPLETE - Ready for grading"

# Create submission tag with today's date
git tag -a mastery-unit3-submit-$(date +%Y%m%d) -m "Unit 3 Mastery Check Submission"

# Push everything including tags
git push origin main --tags

# Verify it worked
git status
```

**You should see:**
```
On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean
```

### Notify Your Teacher

**After pushing:**
1. Raise your hand or use class notification system
2. Say: "I've submitted Unit 3 mastery check via Git"
3. Your teacher will confirm they received it

**Alternative notification (if your teacher uses this):**
```bash
# Add a submission file
echo "SUBMITTED: $(date)" > Unit3-SUBMITTED.txt
git add Unit3-SUBMITTED.txt
git commit -m "SUBMISSION FLAG: Unit 3 complete"
git push origin main
```

---

## After Submission

### Checking for Feedback (Next Day)

```bash
# Pull any updates from teacher
git pull origin main

# Look for feedback file
ls Unit3-Feedback.md

# If it exists, read it
cat Unit3-Feedback.md
```

**Feedback file will look like:**
```markdown
# Unit 3 Mastery Check Feedback
**Student:** Your Name
**Score:** 3/4 (Proficient)
**Date Graded:** 2025-11-17

## Strengths
✓ Problem 1: Perfect! Clear SAS proof
✓ Problem 3: Excellent work showing all steps
✓ Good use of diagrams

## Growth Areas
⚠ Problem 2: Small calculation error in step 3
⚠ Problem 4: Missed one case in your proof

## Next Steps
- [ ] Review angle relationships (section 3.4)
- [ ] Option to revise for Mastery (4) - see below
- [ ] OR move to Unit 4 (Proficient is acceptable!)

## Revision Opportunity
If you want to improve to Mastery (4):
- Fix problems 2 and 4
- Submit revision by Friday
- Use revision workflow
```

---

## Revision Workflow (If Needed)

### Step 1: Create Revision Branch

```bash
# Create a branch for your revision
git checkout -b unit3-revision

# Copy your original work
cp Unit3-MasteryCheck.md Unit3-MasteryCheck-REVISED.md
```

### Step 2: Make Corrections

**Open Unit3-MasteryCheck-REVISED.md and:**
1. Read teacher feedback carefully
2. Review the concepts mentioned
3. Fix the specific problems noted
4. Show what you learned

**Add a revision section:**
```markdown
---
# REVISION SECTION
**Date:** 2025-11-18
**Problems Revised:** 2 and 4

## Problem 2 - REVISED
**What I learned:** I made a calculation error in step 3.
The correct calculation is...

[Show corrected work]

**Why I made the mistake:** I confused the formula for...
**How I fixed it:** I reviewed section 3.2 and...

## Problem 4 - REVISED
[Corrected work with explanation]
```

### Step 3: Submit Revision

```bash
# Save your revision
git add Unit3-MasteryCheck-REVISED.md
git commit -m "Unit 3 Revision: Fixed problems 2 and 4"

# Tag the revision
git tag -a mastery-unit3-revision1 -m "Unit 3 Mastery Revision #1"

# Push the revision branch
git push origin unit3-revision --tags

# Notify teacher
```

### Step 4: Teacher Regrades

Your teacher will:
- Review your revisions
- Check that you understand your mistakes
- Update your score
- Provide final feedback

**Possible outcomes:**
- Score improves to 4 (Mastery) ✓
- Score stays at 3 (you tried!)
- Option for second revision (rare)

---

## Special Scenarios

### Taking Mastery Check at Home

**If allowed by teacher:**

```bash
# Same process, just make sure to:
1. Start at the agreed-upon time
2. Commit timestamps show honest timing
3. Submit by deadline
```

**First commit should show:**
```bash
git commit -m "Mastery Check Unit 3: Started at 3:00 PM - Home"
```

### Extended Time Accommodation

**If you have extended time:**

```bash
# Your teacher will give you extra time
# Just note it in your file:

# Unit 3 Mastery Check
**Extended Time:** 1.5x (45 minutes instead of 30)
**Time Started:** 1:30 PM
**Time Ended:** 2:15 PM
```

### Technical Issues During Check

**If Git/computer crashes:**

1. **Don't panic!** Raise your hand immediately
2. Teacher can see your last commit
3. Worst case: You continue from last save
4. This is why we commit every 10-15 minutes!

**If you can't access computer:**
```bash
# Paper backup option
# Complete on paper
# Teacher will scan and add to your repo
# OR you transcribe it afterward (within same day)
```

### Late Submission

**If you miss the deadline:**

```bash
# Still submit via Git
git commit -m "Mastery Check Unit 3: LATE SUBMISSION"
git tag -a mastery-unit3-late -m "Late submission - see teacher"
git push origin main --tags

# Your teacher's late policy applies
# But at least it's submitted with timestamp!
```

---

## Viewing Your Mastery History

### See All Your Mastery Checks

```bash
# List all mastery tags
git tag -l "mastery-*"

# Output:
mastery-unit1-submit-20250901
mastery-unit2-submit-20250915
mastery-unit2-revision1
mastery-unit3-ready
mastery-unit3-submit-20251116
```

### Review a Past Mastery Check

```bash
# See the commit for a specific tag
git show mastery-unit2-submit-20250915

# See all commits during that mastery check
git log --since="2025-09-15" --until="2025-09-15" --oneline
```

### Track Your Progress

```bash
# See all mastery checks in order
git tag -l "mastery-*-submit*" | sort

# Count how many units you've mastered
git tag -l "mastery-*-submit*" | wc -l
```

---

## Best Practices

### Do:
✓ Commit every 10-15 minutes during the check
✓ Write clear, descriptive commit messages
✓ Show ALL your work and thinking
✓ Ask questions if Git breaks (not about the problems!)
✓ Double-check your submission before notifying teacher

### Don't:
✗ Wait until the end to save everything
✗ Copy from another student's repository
✗ Edit your work after submission (it's timestamped!)
✗ Delete your work if you think it's wrong (show your process!)
✗ Stress if you make a Git mistake (teacher can fix it!)

---

## Academic Honesty with Git

**Git creates a permanent record. This means:**

**Good things:**
- Your hard work is documented
- Your growth is visible
- You can prove you did your own work
- Revision process is transparent

**Things to avoid:**
- Don't copy another student's repository
- Don't edit commits after submission (teacher can see!)
- Don't share your solutions during the assessment
- Don't claim work you didn't do

**Remember:** Git timestamps everything. Your teacher can see:
- When you committed
- What you changed
- If work matches another student's exactly
- If you edited after the deadline

**Play fair!** Mastery grading gives you chances to revise honestly.

---

## Mastery Check Checklist

### Before Assessment:
- [ ] Completed all practice problems
- [ ] Reviewed lesson notes
- [ ] Tagged as "ready"
- [ ] Teacher approved you to take check

### During Assessment:
- [ ] Created assessment file
- [ ] Showing all work clearly
- [ ] Committing every 10-15 minutes
- [ ] Using proper formatting
- [ ] Checking my work as I go

### At Submission:
- [ ] All work is complete
- [ ] Final commit with "COMPLETE" message
- [ ] Submission tag created
- [ ] Pushed to origin with --tags
- [ ] Verified with git status
- [ ] Notified teacher

### After Grading:
- [ ] Pulled feedback from teacher
- [ ] Read all feedback carefully
- [ ] Decided: Move on OR revise for higher score
- [ ] If revising: Created revision branch
- [ ] Documented what I learned

---

## Sample Timeline

**Unit 3 Mastery Check Example:**

| Time | Action | Git Command |
|------|--------|-------------|
| Monday | Finish practice | `git commit -m "Unit 3 practice complete"` |
| Monday | Tag ready | `git tag -a mastery-unit3-ready` |
| Tuesday 1:30 | Start check | `git commit -m "Started Unit 3 check"` |
| Tuesday 1:45 | Progress save | `git commit -m "Completed problems 1-2"` |
| Tuesday 2:00 | Progress save | `git commit -m "Working on problem 4"` |
| Tuesday 2:15 | Submit | `git tag -a mastery-unit3-submit-...` |
| Wednesday | Receive feedback | `git pull origin main` |
| Thursday | Revise (if needed) | `git commit -m "Revision: Fixed problem 2"` |
| Friday | Final score | Teacher updates gradebook |

---

## FAQ

**Q: What if I finish early?**
A: Submit! Then you can work ahead or help peers (if allowed).

**Q: Can I undo a submission?**
A: No - but you can do a revision. Talk to your teacher.

**Q: What if I forget the submission tag?**
A: Your teacher can still see your work, but add the tag ASAP.

**Q: Do spelling mistakes in commit messages matter?**
A: Not for your grade, but try to be clear!

**Q: Can I use the internet during the check?**
A: Ask your teacher - it depends on what they allow.

**Q: What if Git gives me an error?**
A: Raise your hand immediately. Git errors don't count against you.

**Q: How many times can I revise?**
A: Ask your teacher - usually 1-2 times per mastery check.

**Q: Does the time I commit matter?**
A: Yes! Timestamps show you did work during the allowed time.

---

## Need Help?

**During setup/submission:** Use this guide or STUDENT_GIT_GUIDE.md
**During the actual problems:** Ask your teacher (not about Git, about content!)
**Technical issues:** Raise your hand immediately

---

**Good luck on your mastery checks! Show what you've learned!**

**Last Updated:** 2025-11-16
