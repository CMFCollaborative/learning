# Lesson: One Hundred Eighty (Triangle Angle Sum)

## Complete Git-Integrated Lesson Package

 

---

 

## Overview

 

**Lesson Topic:** Proving that the sum of measures of angles in a triangle is 180°

**Duration:** 50 minutes

**Grade Level:** High School Geometry

**Git Integration Level:** Full

 

This lesson package demonstrates how to integrate Git version control into a geometry lesson using the workflows described in the classroom guides.

 

---

 

## What's Included

 

### For Teachers

 

| File | Purpose | When to Use |

|------|---------|-------------|

| **[TEACHER_SETUP_One_Hundred_Eighty.md](TEACHER_SETUP_One_Hundred_Eighty.md)** | Complete lesson plan with Git integration | Before/during/after class |

 

### For Students

 

| File | Purpose | When to Use |

|------|---------|-------------|

| **[LESSON_STUDENT_WORKFLOW_One_Hundred_Eighty.md](LESSON_STUDENT_WORKFLOW_One_Hundred_Eighty.md)** | Student guide for the lesson | Reference during class |

 

### Student Work Templates

 

All templates are in the `templates/` folder:

 

| Template | Activity | Time | Git Commits Expected |

|----------|----------|------|---------------------|

| **Warmup-What-Went-Wrong.md** | Find errors in a proof | 10 min | 1 commit |

| **Activity1-Angle-Sum-Proof.md** | First proof method | 15 min | 2 commits |

| **Activity2-Another-Proof.md** | Second proof method | 10 min | 1 commit |

| **Activity2-Extension.md** | Extension problem | Optional | 1 commit (bonus) |

| **Cooldown-Third-Proof.md** | Exit ticket | 5 min | 1 commit + tag |

| **Reference-Chart.md** | Ongoing reference | 2 min | 1 commit |

 

**Total expected commits per student:** 5-7 (plus completion tag)

 

---

 

## Quick Start for Teachers

 

### Day Before Class

 

1. **Read the teacher guide:**

   - Open [TEACHER_SETUP_One_Hundred_Eighty.md](TEACHER_SETUP_One_Hundred_Eighty.md)

   - Review lesson timeline

   - Note monitoring points

 

2. **Set up repository:**

```bash

# Create lesson folder in your class repo

cd YourClassRepository

mkdir -p Unit-Angles-Proof/Lesson-One-Hundred-Eighty

 

# Copy templates to lesson folder

cp templates/*.md Unit-Angles-Proof/Lesson-One-Hundred-Eighty/

 

# Commit and push

git add Unit-Angles-Proof/

git commit -m "Lesson setup: One Hundred Eighty templates"

git push origin main

```

 

3. **Prepare physical materials:**

   - Triangles with 50°, 60°, 70° angles

   - Class reference chart display

   - Digital applets (optional)

 

### Day of Class

 

1. **Students pull templates:**

   - Display on board: `git pull origin main`

   - Students navigate to lesson folder

   - Verify everyone has files

 

2. **Monitor throughout lesson:**

   - Check commits every 10-15 minutes

   - Help students who haven't committed

   - Watch for questions in student files

 

3. **Check completion at end:**

   - Count completion tags

   - Note who needs follow-up

 

### After Class

 

1. **Review student work:**

   - Pull all student branches

   - Spot-check cool-downs (exit tickets)

   - Note patterns/misconceptions

 

2. **Provide feedback:**

   - Create feedback files

   - Or use inline comments (GitHub/GitLab)

   - Push feedback to student branches

 

---

 

## Quick Start for Students

 

### Before Lesson

 

```bash

# Sync your work

cd ~/Documents/ClassWork/geometry-class

git pull origin main

 

# Navigate to lesson

cd Unit-Angles-Proof/Lesson-One-Hundred-Eighty

 

# Verify files are there

ls

```

 

### During Lesson

 

**Follow this pattern for each activity:**

1. Open the activity file

2. Complete the work

3. Commit with clear message

4. Push to backup

 

**Example:**

```bash

# After completing warm-up

git add Warmup-What-Went-Wrong.md

git commit -m "Warm-up: Found proof errors"

git push origin main

```

 

### End of Lesson

 

```bash

# Submit exit ticket

git add Cooldown-Third-Proof.md

git commit -m "Cool-down complete (EXIT TICKET)"

git tag -a lesson-one-eighty-complete-$(date +%Y%m%d) -m "Complete"

git push origin main --tags

```

 

---

 

## Learning Goals

 

### Students will be able to:

- Prove that the sum of the measures of angles in a triangle is 180°

- Use multiple methods to prove the Triangle Angle Sum Theorem

- Justify each step in a geometric proof

- Compare different proof strategies

- Apply the theorem to find missing angles

 

### Git Skills Students Practice:

- Pull updates at start of class

- Commit work incrementally

- Write descriptive commit messages

- Tag important submissions

- Push work to remote repository

- Navigate directory structures

 

---

 

## Lesson Structure with Git Integration

 

### Timeline

 

| Time | Activity | Student Action | Git Action |

|------|----------|----------------|------------|

| 0-5 min | Arrival & setup | Pull updates, open files | `git pull` |

| 5-10 min | Warm-up | Find proof errors | Commit warm-up |

| 10-15 min | Warm-up discussion | Share findings | - |

| 15-25 min | Activity 1 | First proof method | Commit 2x during activity |

| 25-30 min | Activity 1 discussion | Compare with peers | Optional peer branch |

| 30-40 min | Activity 2 | Second proof method | Commit activity |

| 40-45 min | Synthesis | Update reference chart | Commit reference chart |

| 45-50 min | Cool-down | Third proof (exit ticket) | Commit + tag |

 

---

 

## Assessment

 

### Formative (Process)

 

**Via Git logs:**

- Participation (commits throughout lesson)

- Work completion (all files committed)

- Time management (timestamp spread)

- Effort (quality of commit messages)

 

**How to check:**

```bash

# Count student commits

git log student-name/main --since="today" --oneline | wc -l

 

# Review commit quality

git log student-name/main --since="today" --oneline

```

 

### Summative (Product)

 

**Cool-down (Exit Ticket):**

- Valid third proof method: ___/4 points

- Clear justification: ___/3 points

- Correct conclusion: ___/3 points

**Total: ___/10 points**

 

**How to grade:**

```bash

# View student's cool-down

git show student-name/main:Unit-Angles-Proof/Lesson-One-Hundred-Eighty/Cooldown-Third-Proof.md

```

 

---

 

## Differentiation

 

### For Struggling Students

 

**In templates:**

- Step-by-step scaffolding provided

- Visual aids and diagrams

- Sentence starters

- Multiple attempts encouraged (can commit revisions)

 

**Teacher support:**

- Monitor commits - see who's stuck

- Provide just-in-time feedback

- Can add hints to student's file directly (via Git)

 

### For Advanced Students

 

**Extension provided:**

- Activity2-Extension.md (polygon angle sums)

- Generalization patterns

- Formula development

- Extra credit via Git commits

 

**Track via:**

```bash

git log --all --grep="extension"

```

 

---

 

## Multilingual Learner Support (MLR7)

 

**Compare and Connect:** Built into Activity 1

- Students compare proof methods

- Use mathematical language

- Identify similarities/differences

- Document in writing (Git tracked)

 

**Language scaffolds in templates:**

- Sentence frames provided

- Key vocabulary highlighted

- Multiple representations (diagrams + words)

 

---

 

## Access for Diverse Abilities

 

**Representation (Activity 1):**

- Visual diagrams in templates

- Digital applet option

- Physical triangle models

- Multiple proof methods shown

 

**Action and Expression (Activity 2):**

- Choice of proof method

- Can draw instead of write formal proof

- Voice-to-text option for dictation

- Extended time (visible in Git timestamps)

 

---

 

## Common Issues and Solutions

 

### Technical

 

| Issue | Solution |

|-------|----------|

| Can't find files | `git pull origin main` then navigate |

| Forgot to commit | Commit at end with all work |

| Made a mistake | Edit file and commit again (revision) |

| Computer crashed | Work saved at last commit |

 

### Pedagogical

 

| Issue | Solution |

|-------|----------|

| Student stuck on proof | Check their commits - see where they stopped |

| Misconception evident | Add feedback to their file, push to their branch |

| Absent student | All materials in Git - can make up easily |

| Needs scaffolding | Create branch with extra hints |

 

---

 

## Connection to Other Lessons

 

### Previous Lesson: Evidence, Angles and Proof

Students learned:

- Angle relationships

- Parallel lines and transversals

- Beginning proof structure

 

### This Lesson: One Hundred Eighty

Students prove:

- Triangle Angle Sum Theorem

- Multiple proof methods

- Formal justification

 

### Next Lesson: Transformations, Transversals and Proof

Students will use:

- Triangle Angle Sum Theorem

- Apply with transversals

- More complex proofs

 

**Git connection:** Reference chart builds across lessons

 

---

 

## Standards Alignment

 

**Common Core:**

- HSG-CO.C.10: Prove theorems about triangles

- MP3: Construct viable arguments and critique reasoning

- MP7: Look for and make use of structure

 

**Git integration supports:**

- MP3: Written arguments visible in commits

- MP7: Comparing structures across proof methods

- MP6: Precision in communication (commit messages)

 

---

 

## Materials Needed

 

### Physical

- [ ] Triangles with angles 50°, 60°, 70° (one per student or pair)

- [ ] Class reference chart display

- [ ] Whiteboard/projector

- [ ] Optional: Patty paper for folding method

 

### Digital

- [ ] Computer/device per student

- [ ] Git installed and configured

- [ ] Access to class repository

- [ ] Optional: Digital applets for Activities 1-2

 

### Files

- [ ] All templates committed to repository

- [ ] Student workflow guide available

- [ ] Teacher setup guide printed/accessible

 

---

 

## Extension Opportunities

 

### During Lesson

- Activity2-Extension.md (polygon angle sums)

- Third proof method variations

- Peer teaching (create collaboration branch)

 

### After Lesson

- Apply theorem to complex diagrams

- Multi-triangle problems

- Proof writing practice

 

**Track extensions:**

```bash

git log --all --grep="extension\|peer-teaching"

```

 

---

 

## Parent Communication

 

**Example update:**

```

This week in Geometry, students proved the Triangle Angle Sum

Theorem using three different methods. [Student Name] demonstrated

strong understanding and completed all activities, including the

extension problem on polygon angle sums.

 

You can view their work at: [GitHub link to student repo]

 

Next week: Transformations and Transversals

```

 

---

 

## Reflection Questions (For You)

 

After teaching this lesson:

 

**What worked well?**

 

 

**What would you change?**

 

 

**How did Git enhance the lesson?**

 

 

**Student misconceptions noticed:**

 

 

**Notes for next year:**

 

 

---

 

## Files Checklist

 

Before class, verify you have:

- [ ] TEACHER_SETUP_One_Hundred_Eighty.md (this guide)

- [ ] LESSON_STUDENT_WORKFLOW_One_Hundred_Eighty.md (student reference)

- [ ] Warmup-What-Went-Wrong.md (template)

- [ ] Activity1-Angle-Sum-Proof.md (template)

- [ ] Activity2-Another-Proof.md (template)

- [ ] Activity2-Extension.md (template)

- [ ] Cooldown-Third-Proof.md (template)

- [ ] Reference-Chart.md (template)

 

All templates committed to repository:

- [ ] Templates in correct folder structure

- [ ] Committed to main branch

- [ ] Pushed to remote

- [ ] Students can access via `git pull`

 

---

 

## Resources
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
 

**Related guides:**

- [Main Teacher Workflow](../TEACHER_WORKFLOW.md) - Full classroom integration

- [Student Git Guide](../STUDENT_GIT_GUIDE.md) - General student reference

- [Mastery Check Guide](../MASTERY_CHECK_GUIDE.md) - Assessment submission

 

**External resources:**

- Curriculum materials for this lesson

- Digital applets (if using)

- Video explanations (optional)

 

---

 

## Version History

 

- **v1.0** (2025-11-16): Initial creation

  - Complete lesson package

  - All templates created

  - Ready for classroom use

 

---

 

## Feedback

 

After using this lesson, please note:

- What worked

- What needs improvement

- Suggestions for templates

- Git workflow adjustments

 

This will help refine the materials for future use!

 

---

 

**Ready to teach! See TEACHER_SETUP_One_Hundred_Eighty.md for detailed timeline.**

 

**Last Updated:** 2025-11-16