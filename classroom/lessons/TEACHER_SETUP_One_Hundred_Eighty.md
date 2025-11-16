# Teacher Setup: One Hundred Eighty Lesson
## Git Integration for Triangle Angle Sum Theorem

---

## Quick Overview

**Lesson:** One Hundred Eighty (Triangle Angle Sum Theorem)
**Duration:** 50 minutes
**Git Integration:** Full - students commit work throughout lesson
**Materials Needed:** Student templates (provided), physical triangles (50°, 60°, 70°)

---

## Before Class (15 minutes prep)

### Step 1: Set Up Lesson Repository Structure (5 minutes)

```bash
# Navigate to your class repository
cd ~/Documents/Teaching/Geometry-Class-2025

# Create lesson folder structure
mkdir -p Unit-Angles-Proof/Lesson-One-Hundred-Eighty

cd Unit-Angles-Proof/Lesson-One-Hundred-Eighty

# Copy template files to the lesson folder
# (Templates are in classroom/lessons/templates/)
```

**Folder structure should be:**
```
Geometry-Class-2025/
└── Unit-Angles-Proof/
    └── Lesson-One-Hundred-Eighty/
        ├── Warmup-What-Went-Wrong.md
        ├── Activity1-Angle-Sum-Proof.md
        ├── Activity2-Another-Proof.md
        ├── Activity2-Extension.md
        ├── Cooldown-Third-Proof.md
        └── Reference-Chart.md
```

### Step 2: Commit Templates to Repository (2 minutes)

```bash
# Add all template files
git add Unit-Angles-Proof/Lesson-One-Hundred-Eighty/

# Commit
git commit -m "Lesson setup: One Hundred Eighty templates ready for students"

# Push to remote
git push origin main
```

### Step 3: Prepare Physical Materials (5 minutes)

- [ ] Physical triangles with angles 50°, 60°, 70° (one per student or pair)
- [ ] Class reference chart display ready
- [ ] Digital applets loaded (if using)
- [ ] Whiteboard/projector for whole-class discussion

### Step 4: Prepare Monitoring Dashboard (3 minutes)

**Open your monitoring setup:**
```bash
# Option 1: GitHub/GitLab web interface
# Open: https://github.com/your-name/Geometry-Class-2025
# View: Network graph or commit history

# Option 2: Command line monitoring
# Create a monitoring script
```

**Simple monitoring script (optional):**
```bash
#!/bin/bash
# save as: monitor-lesson.sh

echo "=== Lesson One-Eighty Progress ==="
echo "Students who have committed in last 10 minutes:"
git log --all --since="10 minutes ago" --pretty=format:"%an - %s" | sort -u

echo ""
echo "=== Students who have tagged completion ==="
git tag -l "lesson-one-eighty-complete-*"
```

---

## Class Period Timeline (50 minutes)

### Opening (5 minutes before lesson)

**As students arrive:**

```bash
# Remind students to pull
# Display on board:
"BEFORE WE START:
1. Open terminal/Git Bash
2. cd ~/Documents/ClassWork/geometry-class
3. git pull origin main
4. Navigate to: Unit-Angles-Proof/Lesson-One-Hundred-Eighty
5. Open Warmup-What-Went-Wrong.md"
```

**Quick check:**
- Students have files open
- Students are synced
- Any Git issues resolved

---

### Warm-up: What Went Wrong? (10 minutes)

**[0-2 min]** Introduce the warm-up
- Show the triangle (50°, 60°, 70°)
- Point students to Warmup-What-Went-Wrong.md
- Explain: Find errors in the "proof"

**[2-7 min]** Students work individually
- Circulate and monitor
- Check: Are students typing into the file?
- Help: Git questions, finding the file

**Quick monitor check:**
```bash
# See who's working
git fetch --all
watch -n 30 'git log --all --since="5 minutes ago" --oneline'
```

**[7-9 min]** Brief share-out
- "What errors did you find?"
- Key point: One example ≠ proof for all cases
- Transition: "Today we'll prove it properly"

**[9-10 min]** Students commit
- Display on board: `git add Warmup-What-Went-Wrong.md && git commit -m "Warm-up complete" && git push origin main`
- Check: Who hasn't committed yet

---

### Activity 1: Triangle Angle Sum One Way (15 minutes)

**[10-11 min]** Introduce Activity 1
- "Open Activity1-Angle-Sum-Proof.md"
- Show the auxiliary line method (on board)
- "Follow along and justify EACH step"

**[11-21 min]** Students work
- Can work in pairs (MLR7: Compare and Connect)
- Digital applet available (if using)
- Remind: Commit partway through!

**Mid-activity commit reminder [~16 min]:**
- "If you've completed steps 1-3, commit now!"
- Helps students who are behind (you can see progress)

**Access for diverse abilities:**
- Visual aids on board
- Step-by-step template (already in file)
- Allow drawing/sketching
- Verbal explanation option

**Monitor in real-time:**
```bash
# See who's stuck (no commits in last 10 min)
git log --all --since="10 minutes ago" --author=".*" --oneline | cut -d' ' -f2 | sort -u
```

**[21-25 min]** Compare and Connect (MLR7)
- Pairs share their proofs
- "What did your partner do that helped?"
- Opportunity for peer-review branch (optional)

**[25 min]** Final commit for Activity 1
- Everyone commits completed work

---

### Activity 2: Triangle Angle Sum Another Way (10 minutes)

**[25-26 min]** Transition to Activity 2
- "Open Activity2-Another-Proof.md"
- Introduce Method 2 (paper folding, rotation, etc.)
- "Different method, same conclusion"

**[26-34 min]** Students work on second proof
- More independent than Activity 1
- Digital applet available
- Compare to Method 1 as they go

**Access for diverse abilities:**
- Can use physical triangles
- Can draw/sketch instead of formal proof
- "Are You Ready for More?" for advanced students

**[34-35 min]** Quick share
- "Which method do you prefer?"
- "Does it work for ANY triangle?"

**[35 min]** Commit Activity 2

**Check for extension work:**
```bash
# See who did extension
git log --all --grep="extension"
```

---

### Lesson Synthesis (10 minutes)

**[35-43 min]** Class discussion (NO Git during this)

**Discussion prompts:**
- "We saw three methods. What's the same about all of them?"
- "Why does this work for ANY triangle?"
- "How is this different from Grade 8?"

**Key points to emphasize:**
- One example ≠ proof
- Formal justification required
- Auxiliary elements are tools
- Structure shows why it's always 180°

**[43-45 min]** Update Reference Chart
- Add Triangle Angle Sum Theorem to class display
- Students add to their Reference-Chart.md
- Commit reference chart update

**Whole-class commit:**
- Display: `git add Reference-Chart.md && git commit -m "Added Triangle Angle Sum Theorem" && git push origin main`

---

### Cool-down: Third Proof (5 minutes)

**[45 min]** Introduce cool-down
- "Open Cooldown-Third-Proof.md"
- "THIRD way to prove it - on your own"
- "This is your exit ticket - shows YOUR understanding"

**[45-50 min]** Students work independently
- Silent work time
- This assesses individual understanding
- Circulate but minimal help

**[50 min]** Submit cool-down
- Display:
```bash
git add Cooldown-Third-Proof.md
git commit -m "Cool-down complete (EXIT TICKET)"
git tag -a lesson-one-eighty-complete-$(date +%Y%m%d) -m "Complete"
git push origin main --tags
```

**End of class check:**
```bash
# Who has tagged completion?
git tag -l "lesson-one-eighty-complete-*"
```

---

## After Class (10 minutes)

### Step 1: Pull All Student Work (2 minutes)

```bash
cd ~/Documents/Teaching/Geometry-Class-2025
git fetch --all

# Or if using individual repos, pull each one
```

### Step 2: Quick Review (5 minutes)

**Check completion:**
```bash
# Who finished?
git tag -l "lesson-one-eighty-complete-*" | wc -l

# Who didn't finish?
# (Students without the tag need follow-up)
```

**Spot-check understanding:**
```bash
# Review a few cool-downs
git show student-name/main:Unit-Angles-Proof/Lesson-One-Hundred-Eighty/Cooldown-Third-Proof.md
```

**Look for:**
- Did they complete all sections?
- Is the third proof valid?
- Do they show understanding?
- Any misconceptions to address tomorrow?

### Step 3: Note for Tomorrow (3 minutes)

**Students who need follow-up:**
- Didn't finish (no tag)
- Struggled with proofs (visible in commits)
- Asked questions (in their files)
- Need extension (finished early, did extension)

**Create follow-up list:**
```markdown
## Follow-up for Tomorrow:
- **Didn't finish:** [Names] - need to complete cool-down
- **Struggled:** [Names] - check in during next lesson
- **Questions:** [Names] - answer these questions
- **Advanced:** [Names] - consider pre-teaching next concept
```

---

## Grading This Lesson

### What to Grade

**Process (Participation/Effort):**
- [ ] Pulled at start of class
- [ ] Committed warm-up
- [ ] Committed Activity 1
- [ ] Committed Activity 2
- [ ] Updated reference chart
- [ ] Submitted cool-down with tag

**Check with:**
```bash
# Count commits for the lesson
git log student-name/main --since="today" --oneline | wc -l
# Should be 5-7 commits
```

**Product (Understanding):**
- Cool-down proof (exit ticket)
- Quality of reasoning in activities
- Justification of steps

**Mastery-based rubric:**
- **4 (Mastery):** Valid third proof, clear justification, all activities complete
- **3 (Proficient):** Valid proof with minor gaps, most justification clear
- **2 (Developing):** Proof attempted but incomplete/flawed
- **1 (Beginning):** Minimal understanding shown

### Quick Grading Workflow

```bash
# For each student:

# 1. Check completion (tag exists?)
git tag -l "lesson-one-eighty-complete-*" | grep student-name

# 2. Review cool-down (exit ticket)
git show student-name/main:Unit-Angles-Proof/Lesson-One-Hundred-Eighty/Cooldown-Third-Proof.md

# 3. Check process (number of commits)
git log student-name/main --since="today" --oneline

# 4. Assign grade
# 5. Provide feedback (next section)
```

---

## Providing Feedback

### Option 1: Create Feedback File

```bash
# Checkout student's branch
git checkout student-name/main

# Create feedback file
cat > Unit-Angles-Proof/Lesson-One-Hundred-Eighty/Teacher-Feedback.md <<EOF
# Feedback: One Hundred Eighty Lesson
**Student:** Student Name
**Date Graded:** $(date +%Y-%m-%d)
**Grade:** 3/4 (Proficient)

## Strengths
✓ Excellent work on Activity 1 - clear auxiliary line reasoning
✓ Good comparison between methods
✓ Completed all activities

## Growth Areas
⚠ Cool-down proof: Step 2 needs more justification
⚠ Consider: Why does your method work for all triangles?

## Questions to Think About
- Can you explain WHY the auxiliary line method always works?
- What happens with an obtuse triangle?

## Next Steps
- Review parallel line theorems (helpful for next lesson)
- Consider the extension problem if you have time

Great effort today!
EOF

# Commit and push feedback
git add Unit-Angles-Proof/Lesson-One-Hundred-Eighty/Teacher-Feedback.md
git commit -m "Teacher feedback: One Hundred Eighty lesson"
git push origin student-name/main

# Return to main
git checkout main
```

### Option 2: Inline Comments (GitHub/GitLab)

- View student's cool-down in web interface
- Add line-by-line comments
- Student sees feedback next time they pull

### Option 3: Quick Tags (for process tracking)

```bash
# Tag students who showed mastery
git tag -a student-name-mastery-lesson-one-eighty -m "Mastery demonstrated"

# Tag students who need revision
git tag -a student-name-revision-needed-lesson-one-eighty -m "Needs revision"
```

---

## Common Issues and Solutions

### "Student can't find the files"

**Solution:**
```bash
# Check they pulled
# Have them run:
git pull origin main
ls Unit-Angles-Proof/Lesson-One-Hundred-Eighty/
```

### "Student made a mistake and wants to start over"

**Solution:**
```bash
# Restore original template
git checkout HEAD -- Warmup-What-Went-Wrong.md
```

### "Student didn't commit during the lesson"

**Solution:**
- That's okay for first few lessons
- Remind them to commit at the end
- Discuss value of incremental commits

### "I can't see a student's work"

**Solution:**
```bash
# Make sure they pushed
# Check: did they commit to the right branch?
git branch -a | grep student-name

# Have student run:
git push origin main
```

---

## Differentiation Using Git

### For Struggling Students

**Provide scaffolding:**
```bash
# Add extra hints to their template
# Create a branch with more detailed steps

git checkout -b student-name-scaffolded
# Edit their Activity1 file with more hints
git commit -m "Added scaffolding for Student Name"
git push origin student-name-scaffolded
```

### For Advanced Students

**Challenge them:**
```bash
# Point them to extension
# OR create additional challenge

echo "## Additional Challenge
Can you prove this using transformations?
" >> Activity2-Extension.md
```

**Track extension work:**
```bash
# See who did extension
git log --all --grep="extension" --oneline
```

### For Absent Students

**They can make it up easily:**
```bash
# All materials are in Git
# Student pulls and works through at their own pace
# You can see when they complete it (tag timestamp)
```

---

## Next Lesson Prep

**This lesson builds to:**
- Transformations, Transversals and Proof
- Using Triangle Angle Sum Theorem with transversals
- More complex proofs

**Reference for next time:**
```bash
# Students will need their reference chart
# Make sure everyone has Triangle Angle Sum Theorem noted
```

---

## Assessment Data to Collect

**From Git logs:**

| Metric | How to Check | What It Means |
|--------|--------------|---------------|
| Completion rate | Count tags | Engagement |
| Commit frequency | Commits per student | Work ethic |
| Time on task | Timestamp range | Pacing |
| Extension work | Grep for "extension" | Advanced thinking |
| Peer collaboration | Branches with "peer" | Collaboration |
| Questions asked | Read student files | Confusion points |

**Export for records:**
```bash
# Generate completion report
echo "Lesson: One Hundred Eighty Completion Report" > lesson-report.txt
echo "Date: $(date)" >> lesson-report.txt
echo "" >> lesson-report.txt
echo "Completed:" >> lesson-report.txt
git tag -l "lesson-one-eighty-complete-*" >> lesson-report.txt
echo "" >> lesson-report.txt
echo "Total: $(git tag -l 'lesson-one-eighty-complete-*' | wc -l) students" >> lesson-report.txt
```

---

## Reflection Questions for You

After teaching this lesson:

**What worked well with Git integration?**


**What would you change for next time?**


**How did Git help you see student thinking?**


**What surprised you?**


**Notes for next year:**


---

## Quick Reference: Commands You'll Use

```bash
# BEFORE CLASS
git add Unit-Angles-Proof/Lesson-One-Hundred-Eighty/
git commit -m "Lesson templates ready"
git push origin main

# DURING CLASS
git fetch --all                          # Check student progress
git log --all --since="10 min ago"      # See recent work
watch -n 30 'git log --oneline'         # Auto-refresh

# AFTER CLASS
git tag -l "lesson-one-eighty-*"        # Check completion
git show student:path/to/cooldown.md    # Review work

# GRADING
git checkout student-name/main           # Enter student's work
# Review files
git checkout main                        # Return to main
```

---

**You're ready to teach this lesson with Git! Good luck tomorrow!**

**Last Updated:** 2025-11-16
