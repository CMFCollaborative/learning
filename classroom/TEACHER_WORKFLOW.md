# Git-Integrated Classroom Workflow
## For Self-Paced, Mastery-Based Learning

---

## Overview

This guide integrates Git version control into your blended, self-paced classroom for **Geometry and Physics** using mastery grading.

**Benefits:**
- Track individual student progress in real-time
- See effort and process, not just final products
- Enable safe collaboration between students at different paces
- Build student portfolios automatically
- Reduce "I lost my work" issues to zero
- Teach real-world professional skills

---

## Repository Structure Options

### Option A: Individual Student Repositories (Recommended)

```
ClassGeometry2025/
├── student-john-doe/
│   ├── Unit1-Foundations/
│   │   ├── Lesson1.1-notes.md
│   │   ├── Lesson1.2-practice.md
│   │   └── Unit1-MasteryCheck.md
│   ├── Unit2-Triangles/
│   └── Unit3-Quadrilaterals/
├── student-jane-smith/
│   └── [same structure]
```

**Pros:**
- Complete privacy for each student
- Clear ownership
- Easy to grade individually

**Cons:**
- More repositories to manage
- Harder to see class-wide progress

### Option B: Single Class Repository with Folders

```
Geometry-Period3-2025/
├── students/
│   ├── john-doe/
│   │   ├── Unit1/
│   │   └── Unit2/
│   ├── jane-smith/
│   │   ├── Unit1/
│   │   └── Unit2/
└── class-resources/
    ├── lesson-templates/
    └── rubrics/
```

**Pros:**
- Single repo to manage
- Easy to see whole class
- Students can see peers' progress (motivation)

**Cons:**
- Less privacy
- Students might accidentally edit others' work

**Recommendation:** Start with Option B, move to Option A if privacy concerns arise.

---

## Daily Classroom Flow with Git

### Student Arrival (5 minutes)
```
1. Phone check-in
2. Daily learner check-in (paper/digital)
3. Git sync:
   - Student opens terminal/Git client
   - Runs: git pull origin main
   - Checks git status
```

**Teacher Action:**
```bash
# Quick morning check - see who's synced
# (Use GitHub/GitLab web interface or run:)
git fetch --all
git log --all --oneline --since="1 day ago"
```

### Student-Teacher Check-in (5-10 minutes)

**Student prepares:**
```bash
# Student shows teacher their recent progress
git log --oneline -5
git diff HEAD~1  # Shows changes since last commit
```

**Teacher reviews:**
- Recent commits (what they've been working on)
- Quality of notes/work
- Mastery check readiness
- Can see WHEN work was done (effort tracking)

### Work Time (30-40 minutes)

#### Students on New Lesson:
```bash
# Create new lesson folder/file
# Watch videos, take notes
# At checkpoints (every 10-15 min or after each concept):
git add .
git commit -m "Lesson 3.2: Completed triangle congruence theorems"
git push origin main
```

**Teacher can:**
- Monitor commits in real-time (GitHub web interface)
- See who's stuck (no commits in 20+ minutes)
- Review notes quality while students work

#### Students on Skills Practice:
```bash
# Working on practice problems
# After each problem set:
git add .
git commit -m "Completed practice problems 1-10 for Lesson 3.2"
git push origin main
```

#### Students Doing Peer Teaching:
```bash
# Advanced student creates collaboration branch
git checkout -b helping-john-lesson3

# They work together, commit explanations/work
git add .
git commit -m "Peer teaching: Explained triangle congruence to John"
git push origin helping-john-lesson3

# Teacher can review collaboration quality for extra credit
```

### End of Class (5 minutes)

**Student checklist:**
```bash
git add .
git commit -m "End of class: [what they accomplished]"
git push origin main
git status  # Should show "nothing to commit"
```

**Teacher checklist:**
```bash
# Pull all updates
git fetch --all

# Quick review of day's commits
git log --all --since="today" --oneline

# Note students who didn't commit (follow up next class)
```

---

## Mastery Check Workflow

### Before Mastery Check

**Student signals readiness:**
```bash
git add .
git commit -m "Mastery Check Unit 3: Ready for assessment"
git tag -a mastery-unit3-ready -m "Ready for Unit 3 mastery check"
git push origin main --tags
```

**Teacher reviews readiness:**
```bash
# See all students who tagged as ready
git tag -l "mastery-*-ready"

# Review their prep work
git log student-name/main --oneline
```

### During Mastery Check

**Student procedure:**
1. Teacher provides mastery check problems
2. Student creates file: `Unit3-MasteryCheck.md`
3. Works on problems
4. Saves periodically:
```bash
git add Unit3-MasteryCheck.md
git commit -m "Mastery Check Unit 3: In progress"
```

5. When complete:
```bash
git add .
git commit -m "Mastery Check Unit 3: COMPLETE - Ready to grade"
git tag -a mastery-unit3-submit-$(date +%Y%m%d) -m "Unit 3 Mastery Submission"
git push origin main --tags
```

### Grading Mastery Check

**Teacher workflow:**
```bash
# Pull student's submission
git fetch origin
git checkout student-name/main

# Review their mastery check file
# Can see their work process (all commits during the check)
git log --since="today" --oneline

# Provide feedback directly in Git
# Option 1: Create a feedback file
echo "# Feedback for Unit 3 Mastery Check
Score: 3/4 (Approaching Mastery)
Strengths: ...
Growth areas: ...
Next steps: ..." > Unit3-Feedback.md

git add Unit3-Feedback.md
git commit -m "Feedback: Unit 3 Mastery Check"
git push origin student-name/main

# Option 2: Use GitHub/GitLab comments on their commit
```

### After Grading

**Student views feedback:**
```bash
git pull origin main
# Sees new Unit3-Feedback.md file
```

**If revision needed:**
```bash
# Student creates revision branch
git checkout -b unit3-revision

# Makes corrections
git add .
git commit -m "Unit 3 Revision: Fixed triangle proof errors"

# Resubmits
git tag -a mastery-unit3-revision -m "Unit 3 Revision Submission"
git push origin unit3-revision --tags
```

---

## Tracking Class-Wide Progress

### Dashboard Commands

```bash
# See all students' most recent commits
git log --all --oneline --graph --decorate -20

# See who worked in the last 24 hours
git log --all --since="24 hours ago" --author=".*" --oneline

# See who's on which unit (check their directories)
# (Best done through GitHub/GitLab web interface)

# See all mastery check submissions
git tag -l "mastery-*-submit*"

# See students working ahead
git branch -a | grep -v main
```

### Weekly Progress Review

**Friday afternoon routine:**
```bash
# Generate weekly report (manual or scripted)
# For each student:
git log student-name/main --since="1 week ago" --oneline > weekly-reports/student-name-week$(date +%W).txt

# Review:
# - Number of commits (engagement)
# - Quality of commit messages (metacognition)
# - Lessons completed
# - Mastery checks submitted
```

---

## Special Scenarios

### Student Working from Home

**Student:**
```bash
# At home
git pull origin main  # Get latest
# Do work
git commit -m "Homework: Completed Unit 2 practice"
git push origin main

# At school next day
git pull origin main  # Syncs automatically
```

**Teacher:** No extra work needed! Work is already synced.

### Group Project/Lab (Physics)

**Setup:**
```bash
# Create group branch
git checkout -b group-velocity-lab-team1

# All team members work on this branch
```

**During collaboration:**
```bash
# Each student commits their contributions
git add lab-data.csv
git commit -m "Added trial 3 velocity measurements - John"
git push origin group-velocity-lab-team1

# Partner pulls updates
git pull origin group-velocity-lab-team1
```

**Teacher grading:**
```bash
# Can see each student's individual contributions
git log group-velocity-lab-team1 --oneline
# Each commit shows who did what
```

### Student Catches Up After Absence

**Student returns:**
```bash
git pull origin main  # Gets any class materials added
# Reviews commit history to see what they missed
git log --since="3 days ago" --oneline
```

**Teacher can provide:**
```bash
# Add catch-up materials to their folder
git add students/student-name/makeup-work/
git commit -m "Added makeup materials for Student Name"
git push origin main
```

---

## Grading Integration

### Effort Tracking (Process Points)

```bash
# Check commit frequency
git log student-name/main --since="1 month ago" --oneline | wc -l

# Quality of commits (review messages)
git log student-name/main --since="1 month ago"

# Consistency (commits spread over time vs. cramming)
git log student-name/main --since="1 month ago" --format="%ad" --date=short
```

**Rubric example:**
- 10+ commits per week = Full credit
- 5-9 commits = Partial credit
- <5 commits = Needs improvement
- Quality of commit messages (descriptive vs. "stuff")

### Mastery Level Tracking

```bash
# See all mastery attempts
git tag -l "mastery-unit3-*"

# Track revision history
git log --grep="Revision" student-name/main
```

**Gradebook integration:**
- Tag format: `mastery-unit3-score4` (Unit 3, score of 4)
- Script to parse tags and update gradebook
- Or manual review of tags weekly

### Portfolio Building

```bash
# End of semester: Create student portfolio
git log student-name/main --oneline > student-portfolio.txt

# Better: Use GitLab/GitHub "Insights" to generate:
# - Contribution graph
# - Commit history
# - Code frequency
# - Shows growth over time visually
```

---

## Setup & Maintenance

### Beginning of Year Setup

**Week before school:**
```bash
# Create class repository
git init Geometry-Period3-2025
cd Geometry-Period3-2025

# Create structure
mkdir -p class-resources/lesson-templates
mkdir -p class-resources/rubrics
mkdir students

# Add template files
# (lesson templates, rubric documents, etc.)

git add .
git commit -m "Initial class setup"

# Push to GitHub/GitLab
git remote add origin <url>
git push -u origin main
```

**First week of school:**
- Day 1: Intro to Git (what and why)
- Day 2: Setup git on student devices
- Day 3: Practice workflow with dummy assignment
- Day 4: First real assignment using Git
- Day 5: Troubleshooting day

### Ongoing Maintenance

**Daily:**
- Quick commit scan (5 min)
- Respond to student questions

**Weekly:**
- Review mastery check submissions
- Generate progress reports
- Clean up old branches

**Monthly:**
- Back up entire repository
- Review and update lesson templates
- Student progress conferences (show them their git history)

### Backup Strategy

```bash
# Weekly backup
git clone --mirror <repository-url> backup-$(date +%Y%m%d)

# Or use GitHub/GitLab's built-in backup features
```

---

## Tools & Resources

### Essential Tools

**For Teacher:**
- **GitHub Desktop** or **GitKraken** (GUI for easier visualization)
- **VS Code** with Git extension (for reviewing student work)
- **GitHub/GitLab web interface** (best for class overview)

**For Students:**
- **GitHub Desktop** (easiest for beginners)
- OR **Command line** (for students who want to go deeper)
- **VS Code** (for editing markdown notes)

### Recommended Platforms

**GitHub:**
- Free for education (GitHub Education)
- Great web interface
- Student Developer Pack (bonus resources)

**GitLab:**
- Free private repositories
- Built-in CI/CD (advanced projects)
- Self-hosted option

### Scripts to Create

```bash
# daily-summary.sh - Shows today's class activity
#!/bin/bash
echo "Today's Commits:"
git log --all --since="today" --oneline

# weekly-report.sh - Generates weekly summary
#!/bin/bash
for student in students/*; do
    echo "=== $student ==="
    git log $student/main --since="1 week ago" --oneline | wc -l
    echo "commits this week"
done

# mastery-checks.sh - Lists pending mastery checks
#!/bin/bash
git tag -l "mastery-*-ready"
```

---

## Student Differentiation with Git

### For Struggling Students

**Extra support:**
```bash
# More frequent check-ins via commits
# Require commits every 10 minutes during class

# Provide more scaffolding in their folder
# Teacher adds templates/examples directly to their branch
```

### For Advanced Students

**Enrichment:**
```bash
# Work ahead on branches
git checkout -b unit5-advanced

# Deeper exploration projects
git checkout -b physics-project-advanced-kinematics

# Peer teaching branches (extra credit)
git checkout -b peer-teaching-week12
```

### For Students Needing Accommodations

**Flexibility:**
- Extended deadlines tracked via tags
- Alternative formats (voice notes converted to text, diagrams)
- Commit frequency adjusted to their needs
- Can submit evidence of understanding in multiple formats

---

## Parent Communication

### Sharing Progress

**Weekly parent email:**
```
Dear Parent,

This week [Student Name]:
- Completed Lessons 3.1-3.3 (Triangle Properties)
- Made 12 commits (showed consistent effort)
- Submitted Mastery Check for Unit 3 (score: 3/4)
- Helped peer with triangle proofs (extra credit)

View their work portfolio: [GitHub link]

Next week: Unit 4 - Quadrilaterals
```

**Portfolio sharing:**
- Give parents read-only access to student's repository
- They can see real-time progress
- Shows effort, not just grades

---

## Troubleshooting Common Issues

### "Student forgot to commit before deadline"

**Solution:**
```bash
# Check git history for evidence of work
git log student-name/main --all --full-history

# If work exists but wasn't committed, discuss time management
# If no evidence, follow your late work policy
```

### "Two students worked on same file (conflict)"

**Teacher resolution:**
```bash
# Pull both versions
git fetch --all

# Manual merge or ask students to redo individually
# Use as teaching moment about collaboration workflow
```

### "Student deleted important work"

**Recovery:**
```bash
# Find the commit with the work
git log --all --full-history -- path/to/file

# Restore it
git checkout <commit-hash> -- path/to/file

# Commit the recovery
git commit -m "Recovered deleted work for student"
```

### "Student copied another student's work"

**Detection:**
```bash
# Compare commit histories
git log student1/main --oneline
git log student2/main --oneline

# Check timestamps - if identical work at identical times, red flag
# Compare actual work:
git diff student1/main:file.md student2/main:file.md
```

---

## Assessment Examples

### Formative Assessment via Git

**Daily engagement:**
- Did they commit today? (participation)
- Quality of commit messages (metacognition)
- Frequency of commits (work ethic)

**Process tracking:**
- How many attempts on practice problems?
- Do they revise work after feedback?
- Do they ask questions (via commit messages or notes)?

### Summative Assessment via Git

**Mastery checks:**
- Tagged submissions
- Work quality in committed files
- Can see their thinking process (commits during the check)

**Projects:**
- Final product quality
- Process evident in commit history
- Collaboration visible in shared branches

### Bonus/Extra Credit

**Peer teaching:**
- Count of peer collaboration branches
- Quality of explanations in commits

**Consistency:**
- Streak of daily commits
- Working ahead branches

---

## Sample Grading Rubric

### Process Grade (40% of course grade)

| Criteria | Mastery (4) | Proficient (3) | Developing (2) | Beginning (1) |
|----------|-------------|----------------|----------------|---------------|
| **Commit Frequency** | 12+ commits/week | 8-11 commits/week | 4-7 commits/week | <4 commits/week |
| **Commit Quality** | Descriptive messages | Adequate messages | Vague messages | Missing messages |
| **Work Consistency** | Daily work pattern | 3-4 days/week | 1-2 days/week | Sporadic |
| **Revision Practice** | Revises after feedback | Sometimes revises | Rarely revises | Never revises |

### Product Grade (60% of course grade)

- Mastery checks (traditional grading)
- Projects/labs
- Participation

---

## Year-End Portfolio

### Student Reflection

**Final assignment:**
```bash
# Students review their entire year
git log --oneline --all

# Create reflection document:
# - What lesson was hardest (find the commits with most revisions)
# - What they're most proud of
# - How they've grown (compare early vs. late commits)
# - Evidence of mastery
```

### Portfolio Presentation

Students can show:
- Contribution graph (visual of their year)
- Selected best work
- Growth examples (early work vs. final work)
- Peer teaching contributions

**Export options:**
```bash
# Generate PDF of commits
git log --oneline > my-learning-journey.txt

# Create visualization (use GitLab/GitHub insights)
# - Commit graph
# - Heat map of activity
```

---

## Next Steps

### This Week:
1. Decide on repository structure
2. Create GitHub/GitLab account
3. Set up class repository
4. Create student setup instructions

### Next Week:
1. Introduce Git to students (use STUDENT_GIT_GUIDE.md)
2. Help students set up
3. Practice workflow with dummy assignment

### First Month:
1. Establish daily routines
2. Troubleshoot common issues
3. Refine workflow based on student feedback

### First Semester:
1. Implement mastery check workflow
2. Try peer teaching branches
3. Generate first portfolios

---

## Resources for Teachers

- [GitHub Education](https://education.github.com/) - Free tools
- [GitLab for Education](https://about.gitlab.com/solutions/education/) - Free private repos
- [GitHub Classroom](https://classroom.github.com/) - Automated setup for students
- [Learn Git Branching](https://learngitbranching.js.org/) - Visual tutorial for students

---

**Remember:** Start simple! You don't need to use every feature right away. Master the daily workflow first, then add complexity as you and students get comfortable.

**Last Updated:** 2025-11-16
