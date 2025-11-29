# Notion + Git Classroom Integration Guide
## Using Notion as Your Classroom Dashboard

---

## Overview

**Best Approach:** Use **both** Notion and Git together!

- **Git:** Handles student work, version control, backup, progress tracking
- **Notion:** User-friendly dashboard, organization, resources, announcements

**Why both?**
- Git gives you powerful tracking and backup
- Notion gives you beautiful, accessible interface
- Students see friendly Notion dashboard
- You see detailed Git data when needed
- Best of both worlds!

---

## Architecture

```
┌─────────────────────────────────────┐
│         NOTION WORKSPACE            │
│    (Student & Teacher Interface)    │
│                                     │
│  ├─ Class Home                      │
│  ├─ Lesson Pages (with Git links)  │
│  ├─ Progress Tracker Database      │
│  └─ Resources & Reference Charts   │
└──────────────┬──────────────────────┘
               │
               │ Links to & updates from
               │
┌──────────────▼──────────────────────┐
│         GIT REPOSITORIES            │
│    (Actual Student Work Storage)    │
│                                     │
│  ├─ Student work files (.md)       │
│  ├─ Commits (version history)      │
│  ├─ Tags (completion markers)      │
│  └─ Teacher feedback               │
└─────────────────────────────────────┘
```

**Students interact with:**
- Notion for navigation, instructions, resources
- Git for submitting actual work (via simple commands)

**You interact with:**
- Notion for planning, dashboards, overviews
- Git for grading, detailed progress, feedback

---

## Setup Overview

### Phase 1: Notion Workspace Structure
Create your Notion workspace with:
1. Class home page
2. Unit pages
3. Lesson pages
4. Student progress database
5. Resources

### Phase 2: Git Integration
Link Notion to Git:
1. Embed GitHub/GitLab links in Notion
2. Create Notion database that mirrors Git status
3. Set up automated updates (optional)

### Phase 3: Student Onboarding
Students learn to:
1. Check Notion for assignments and resources
2. Use Git to submit work
3. Update progress in Notion (or automatic)

---

## Detailed Setup Instructions

### Step 1: Create Notion Workspace (30 minutes)

#### A. Create Main Workspace

1. **Go to Notion** → Create new workspace
2. **Name it:** "Geometry Period 3 2025-26" (or your class)
3. **Set permissions:**
   - Students: Can view
   - You: Can edit
   - OR: Students can edit their own pages

#### B. Create Homepage

**Page title:** 🏠 Geometry - Period 3

**Page structure:**
```
# Welcome to Geometry!

## 📌 Important Links
- [Class GitHub Repository](link-to-your-repo)
- [Git Setup Guide](link-to-guide)
- [How to Submit Work](link-to-workflow-guide)

## 📅 Current Unit
**Unit:** Angles and Proof
**Lessons:**
- ✅ Lesson 1: One Hundred Eighty (Triangle Angle Sum)
- 🔄 Lesson 2: Transformations, Transversals (In Progress)
- ⏳ Mastery Check (Coming Soon)

## 🎯 This Week's Focus
[Brief description of what students should be working on]

## 📊 My Progress
[Link to student's personal progress page]

## 📚 Quick Access
- Reference Charts
- Formulas
- Past Lessons
- Extra Practice
```

**How to build it:**
- Add headings (type `/heading`)
- Add callout boxes for important info (type `/callout`)
- Add links using `[text](url)`
- Add emojis for visual appeal

---

### Step 2: Create Unit Page (15 minutes)

#### Create Database for Units

**In your homepage:**
1. Type `/database` → Choose "Board view"
2. **Name:** "Units"
3. **Columns:**
   - Unit Name (title)
   - Status (select: Not Started, In Progress, Complete)
   - Start Date (date)
   - Mastery Check Date (date)
   - Lessons (relation to Lessons database)

**Create your first unit:**
- **Name:** Angles and Proof
- **Status:** In Progress
- **Lessons:** (will link to lessons)

**Inside the unit page:**
```
# Unit: Angles and Proof

## Overview
In this unit, you'll prove fundamental theorems about angles in triangles and with parallel lines.

## Learning Goals
By the end of this unit, you will:
- Prove the Triangle Angle Sum Theorem
- Use transformations to prove angle relationships
- Apply multiple theorems to solve complex problems

## Lessons
1. [Lesson 1: One Hundred Eighty](link-to-lesson-1-page)
2. [Lesson 2: Transformations, Transversals](link-to-lesson-2-page)

## Mastery Check
[Mastery Check Page](link) - Available after completing both lessons

## Resources
- [Unit Reference Chart](link-to-reference-chart)
- [Practice Problems](link)
- [Video Explanations](link)
```

---

### Step 3: Create Lesson Pages (20 minutes each)

#### Template for Each Lesson

**Page title:** 📐 Lesson: One Hundred Eighty

**Page structure:**
```
# Lesson: One Hundred Eighty (Triangle Angle Sum)

## 🎯 Learning Goal
Prove that the sum of the measures of the angles in a triangle is 180°.

## ⏱️ Time
50 minutes

## 📋 Before You Start

### Git Setup
```bash
cd ~/Documents/ClassWork/geometry-class
git pull origin main
cd Unit-Angles-Proof/Lesson-One-Hundred-Eighty
```

### Check You Have These Files
- [ ] Warmup-What-Went-Wrong.md
- [ ] Activity1-Angle-Sum-Proof.md
- [ ] Activity2-Another-Proof.md
- [ ] Cooldown-Third-Proof.md

## 📚 Lesson Activities

### Warm-up (10 min)
**File:** `Warmup-What-Went-Wrong.md`
**Task:** Find the errors in a flawed proof
**Commit:** When complete

### Activity 1 (15 min)
**File:** `Activity1-Angle-Sum-Proof.md`
**Task:** Prove Triangle Angle Sum using auxiliary line method
**Commit:** Twice during activity

### Activity 2 (10 min)
**File:** `Activity2-Another-Proof.md`
**Task:** Prove using a different method
**Commit:** When complete

### Cool-down (5 min)
**File:** `Cooldown-Third-Proof.md`
**Task:** Prove using a THIRD method (exit ticket)
**Commit:** With completion tag

## ✅ How to Submit

```bash
# After each activity
git add [filename]
git commit -m "Activity X: what I did"
git push origin main

# At end of lesson
git add Cooldown-Third-Proof.md
git commit -m "Cool-down complete"
git tag -a lesson-one-eighty-complete-$(date +%Y%m%d) -m "Complete"
git push origin main --tags
```

## 📖 Resources

### Key Concepts
- Triangle Angle Sum Theorem
- Auxiliary lines
- Formal proof structure

### Videos (if you have them)
- [Introduction Video](link)
- [Example Proof](link)

### Reference
- [Student Git Guide](link)
- [Troubleshooting](link)

## 🆘 Need Help?

**Git Issues:**
- [Troubleshooting Guide](link)
- Ask a classmate
- Raise your hand

**Content Questions:**
- Check your Reference Chart
- Review the activity instructions
- Ask your teacher

## ✨ Finished?

Mark your progress:
- Update your [Progress Tracker](link)
- Check if you're ready for Lesson 2
- Help a classmate (peer teaching = extra credit!)

```

**How to build:**
1. Create new page under Unit page
2. Add toggle blocks for sections (type `/toggle`)
3. Add code blocks for Git commands (type `/code`)
4. Add checkbox lists (type `/todo`)

---

### Step 4: Student Progress Database (25 minutes)

This is where Notion shines!

#### Create Progress Tracker Database

1. **Create database** (type `/database` → Table view)
2. **Name:** "Student Progress Tracker"

#### Database Properties (Columns):

| Property | Type | Options |
|----------|------|---------|
| **Student Name** | Title | |
| **Unit** | Relation | → Links to Units database |
| **Lesson 1 Status** | Select | Not Started, In Progress, Complete |
| **Lesson 1 Date** | Date | Auto-filled |
| **Lesson 2 Status** | Select | Not Started, In Progress, Complete |
| **Lesson 2 Date** | Date | |
| **Mastery Ready** | Checkbox | Checked when student tags ready |
| **Mastery Status** | Select | Not Taken, In Progress, Submitted, Graded |
| **Mastery Score** | Number | 0-85 |
| **Mastery Level** | Formula | Based on score |
| **GitHub Link** | URL | Link to student's repo/branch |
| **Last Commit** | Date | Updated manually or via automation |
| **Notes** | Text | Teacher notes |

#### Formula for Mastery Level:

```
if(prop("Mastery Score") >= 75, "4 - Mastery",
  if(prop("Mastery Score") >= 65, "3 - Proficient",
    if(prop("Mastery Score") >= 55, "2 - Developing",
      if(prop("Mastery Score") > 0, "1 - Beginning", "Not Graded"))))
```

#### Views to Create:

**View 1: Board by Lesson Status**
- Group by: Lesson 1 Status
- Shows who's where visually

**View 2: Mastery Check View**
- Filter: Mastery Ready = Checked
- Shows students ready for mastery check

**View 3: Grade Overview**
- Sort by: Mastery Score (descending)
- Shows class performance

---

### Step 5: Reference Charts in Notion (15 minutes)

#### Create Collaborative Reference Chart

**Option A: Single Class Chart**
- Create page "Class Reference Chart"
- Students can view, you edit
- Updated after each lesson

**Option B: Student Individual Charts**
- Each student has their own page
- They update as they learn (practice!)
- You can view all

#### Reference Chart Template:

```
# Geometry Reference Chart

## Unit: Angles and Proof

### Triangle Angle Sum Theorem

**Statement:** The sum of the measures of the angles in a triangle is 180°.

**Formula:** m∠A + m∠B + m∠C = 180°

**Proof Methods:**
- Auxiliary line method
- Paper folding
- Rotation

**When to use:**
- Finding missing angle in triangle
- Verifying if three angles can form a triangle

**Example:**
Given: ∠A = 50°, ∠B = 60°
Find: ∠C
Solution: 50° + 60° + ∠C = 180°
∠C = 70°

### Transversal Angle Relationships

[Create table with all angle relationships]

```

**Use Notion's:**
- Toggle lists for expandable sections
- Tables for organized data
- Callouts for important notes
- Linked databases for examples

---

### Step 6: Create Student Personal Dashboard (20 minutes)

#### For Each Student, Create:

**Page title:** [Student Name]'s Geometry Journey

```
# Welcome, [Student Name]!

## 📊 My Progress

**Current Unit:** Angles and Proof
**Lessons Complete:** 1/2
**Mastery Status:** Ready to take check! ✨

## ✅ Completed Work

### Lesson 1: One Hundred Eighty
- ✅ Warm-up
- ✅ Activity 1
- ✅ Activity 2
- ✅ Cool-down
- 📅 Completed: Nov 16, 2025
- [View my work on GitHub](link-to-their-commits)

### Lesson 2: Transformations
- 🔄 In Progress
- Current: Activity 2

## 🎯 Next Steps

1. Finish Activity 2 in Transformations lesson
2. Complete cool-down
3. Tag as ready for mastery check
4. Wait for teacher approval
5. Take mastery check!

## 📚 My Resources

- [My Reference Chart](link)
- [My Git Repository](link)
- [Class Resources](link)

## 💬 Notes from Teacher

[Teacher can add feedback here]

## 📈 My Goals

- [ ] Master all angle relationships
- [ ] Score 80+ on mastery check
- [ ] Help 2 classmates (peer teaching)

```

---

### Step 7: Teacher Dashboard (30 minutes)

#### Create Your Command Center

**Page title:** 👨‍🏫 Teacher Dashboard

```
# Teacher Dashboard - Geometry Period 3

## 📊 Class Overview

**Today's Date:** [Auto-update with Notion's date]

### Quick Stats (Linked from database)
- Total Students: 28
- Lesson 1 Complete: 25
- Lesson 2 Complete: 18
- Ready for Mastery: 12
- Mastery Submitted: 5
- Need Follow-up: 3

## 🎯 Today's Focus

**Lesson:** Transformations, Transversals (Day 2)

**Students to check on:**
- [ ] Student A - hasn't committed in 20 min
- [ ] Student B - tagged ready (review work)
- [ ] Student C - submitted mastery check (grade)

## 📋 Progress Tracker

[Embed Student Progress Database]
- View: Board by Lesson Status

## 🏷️ Mastery Check Queue

[Filtered view: Mastery Ready = Checked, Status ≠ Graded]

**To Review:**
1. Student X - [View commits](GitHub link)
2. Student Y - [View commits](GitHub link)

## 📝 Grading Queue

[Filtered view: Mastery Status = Submitted]

**To Grade:**
1. Student A - Submitted Nov 15
2. Student B - Submitted Nov 16

## 🔧 Git Commands

### Check Recent Activity
```bash
git fetch --all
git log --all --since="today" --oneline
```

### Check Completions
```bash
git tag -l "lesson-one-eighty-complete-*" | wc -l
git tag -l "mastery-angles-proof-ready"
```

### Grant Mastery Access
```bash
cp Mastery-Check-Angles-Proof.md path/to/student/
git push origin student-name/main
```

## 📅 This Week's Plan

- [x] Monday: Lesson 1
- [x] Tuesday: Lesson 2
- [ ] Wednesday: Review / Mastery checks begin
- [ ] Thursday: Mastery checks continue
- [ ] Friday: Mastery checks / Start next unit

## 💡 Ideas & Notes

- Consider extra practice problems for alternate interior angles
- Student X created great challenge problem - share with class
- Need more scaffolding for same-side interior angles

```

---

## Integration Workflows

### Workflow 1: Student Completes Lesson

**What happens:**

1. **Student in Git:**
   ```bash
   git tag -a lesson-one-eighty-complete-$(date +%Y%m%d) -m "Done"
   git push origin --tags
   ```

2. **You check GitHub** (once or twice per day)
   - See new completion tags

3. **You update Notion:**
   - Open Progress Tracker
   - Find student's row
   - Change "Lesson 1 Status" to "Complete"
   - Add completion date

4. **Optional: Automate** (see automation section below)

---

### Workflow 2: Student Tags Mastery Readiness

**What happens:**

1. **Student in Git:**
   ```bash
   git tag -a mastery-angles-proof-ready -m "Ready!"
   git push origin --tags
   ```

2. **You see in GitHub:**
   - Check tag list

3. **You review their work** (in Git)

4. **You update Notion:**
   - Progress Tracker: Check "Mastery Ready" box
   - Add to Mastery Check Queue view

5. **If ready, you grant access** (in Git)

6. **You update Notion:**
   - Change "Mastery Status" to "Available"
   - Add note in student's dashboard

---

### Workflow 3: Grading Mastery Check

**What happens:**

1. **Student submits** (in Git with tag)

2. **You grade** (review Git file)

3. **You update Notion:**
   - Mastery Score: [points]
   - Mastery Level: [auto-calculated]
   - Mastery Status: "Graded"
   - Add feedback notes

4. **You provide feedback** (in Git)

5. **Notion shows:**
   - Student can see their score in dashboard
   - You can see class statistics

---

## Optional: Automation

### Using Zapier, Make, or GitHub Actions

**Goal:** Auto-update Notion when Git events happen

**Example automations:**

1. **When student pushes commit** → Update "Last Commit" date in Notion

2. **When student creates tag** → Check "Lesson Complete" in Notion

3. **Daily summary** → Count tags, update stats in Notion

**Setup (high-level):**
1. GitHub webhook triggers on push/tag
2. Zapier/Make receives webhook
3. Updates Notion via Notion API
4. Requires: Notion API key, integration setup

**Note:** This is advanced! Start manual, automate later if needed.

---

## Student Experience

### What Students See:

**In Notion:**
- Clean, organized lesson pages
- Clear instructions
- Visual progress tracking
- Resources and help

**In Git/Terminal:**
- Simple, memorized commands
- Quick commits
- Tag completions

### Example Student Workflow:

**Monday morning:**
1. Open Notion on phone/computer
2. See: "Today: Lesson 1 - One Hundred Eighty"
3. Click lesson page
4. Read overview and goals
5. Open laptop, follow Git commands from Notion
6. Do work in markdown files
7. Commit as instructed (commands in Notion)
8. Check off progress in Notion (optional)
9. Done!

**Simple for students:**
- Notion = What to do, how to do it
- Git = Where to do it, how to submit

---

## Teacher Experience

### Your Typical Day:

**Morning (5 min):**
- Open Notion teacher dashboard
- Check who's ready for mastery
- Note who might need help

**During Class (ongoing):**
- Monitor via Git: `git log --since="10 min ago"`
- Help students as needed
- Update Notion progress (or do after class)

**After Class (10-15 min):**
- Review completion tags in Git
- Update Notion Progress Tracker
- Grade any mastery checks
- Update student dashboards with feedback

**Weekly (30 min):**
- Review Notion analytics
- Plan next week
- Generate progress reports (from Notion database)

---

## Notion Templates to Create

### 1. Lesson Page Template

Create once, duplicate for each lesson:
- Learning goals section
- Git setup instructions
- Activity checklist
- Submission instructions
- Resources
- Help section

**Duplicate and customize** for each new lesson!

---

### 2. Student Dashboard Template

Create once, duplicate for each student:
- Progress overview
- Completed work list
- Next steps
- Resources
- Teacher notes section

---

### 3. Unit Page Template

Create once, duplicate for each unit:
- Overview
- Learning goals
- Lesson list (linked database)
- Mastery check info
- Resources

---

## Benefits of Notion + Git

### For Students:
✅ Beautiful, easy-to-use interface (Notion)
✅ Powerful backup and tracking (Git)
✅ Can work offline (Git)
✅ Clear expectations and progress (Notion)
✅ Portfolio of work (Git)

### For You:
✅ Visual dashboard for planning (Notion)
✅ Detailed tracking data (Git)
✅ Flexible organization (Notion databases)
✅ Automated grading workflows (Git timestamps)
✅ Evidence of learning (Git commits)
✅ Beautiful presentations for parents/admin (Notion)

---

## Next Steps

### This Week:
1. **Set up Notion workspace** (1 hour)
   - Create homepage
   - Create Unit page
   - Create first lesson pages

2. **Set up Progress Tracker** (30 min)
   - Create database
   - Add student rows
   - Create views

3. **Share with students** (in class)
   - Show Notion workspace
   - Demonstrate workflow
   - Give them access

### Next Week:
1. Refine based on student feedback
2. Add more resources
3. Create templates for future lessons

### Later:
1. Consider automation
2. Build out full year of units
3. Share with other teachers!

---

## Troubleshooting

### "Students can't see Notion pages"
- Check sharing permissions
- Share workspace with student emails
- Or create shareable link

### "Too much to update manually"
- Start with key metrics only
- Update once per day, not real-time
- Consider automation for repetitive tasks

### "Students confused about Notion vs. Git"
- Make it clear: Notion = read instructions, Git = do work
- Create simple flowchart
- Practice workflow first week

---

**Ready to build your Notion workspace!**

**Last Updated:** 2025-11-16
