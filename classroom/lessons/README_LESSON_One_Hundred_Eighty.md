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
