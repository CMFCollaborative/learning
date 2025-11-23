# Peer Collaboration Guide
## Working Together Using Git

---

## Why Collaborate with Git?

When you help a classmate or work on a group project:
- Your teacher can see who contributed what
- You get extra credit for helping others
- Your explanations show your mastery
- Work is saved and shared safely
- No more "who did what?" confusion

**Teacher's Perspective:** Git lets them see:
- How advanced students practice mastery by teaching
- Quality of peer explanations
- Group dynamics in projects
- Individual contributions

---

## Types of Collaboration

### 1. Peer Teaching (Advanced Student Helps Struggling Student)
**Scenario:** You've mastered Unit 3, and a classmate is struggling with triangle proofs.

### 2. Study Groups (Students at Same Pace)
**Scenario:** Three students working together on practice problems for Lesson 4.2.

### 3. Group Projects (Team Assignment)
**Scenario:** Lab group collecting and analyzing data together in Physics.

### 4. Peer Review (Checking Each Other's Work)
**Scenario:** Two students reviewing each other's notes before a mastery check.

---

## 1. Peer Teaching Workflow

### When You're the Helper (Advanced Student)

**Step 1: Create a Teaching Branch**

```bash
# Format: helping-[student-name]-[topic]
git checkout -b helping-sarah-unit3

# Verify you're on the new branch
git branch
```

**Step 2: Create Teaching Materials**

Create a file to help your peer:
```bash
# In your folder, create a teaching file
touch Peer-Teaching-Unit3-Triangles.md
```

**Example content:**
```markdown
# Helping Sarah with Unit 3: Triangle Congruence
**Teacher:** Your Name
**Student:** Sarah
**Date:** 2025-11-16
**Topic:** Triangle congruence proofs

---

## What Sarah Was Struggling With
Sarah was confused about when to use SSS vs SAS vs ASA.

## My Explanation
[Your teaching here - use simple language, examples, diagrams]

### SSS (Side-Side-Side)
When all three sides of one triangle equal all three sides of another:
- Think: "Same size sticks = same triangle"
- Example: ...

### SAS (Side-Angle-Side)
When two sides and the INCLUDED angle are equal:
- Think: "Two sticks with the angle between them"
- Example: ...

## Practice Problems We Did Together
1. [Problem you made up for Sarah]
2. [How Sarah solved it]
3. [Where she got stuck and how we fixed it]

## What Sarah Learned
- Now understands the difference between theorems
- Can identify which theorem to use
- Feeling more confident!

---
**Time spent:** 20 minutes
**Sarah's confidence before:** 3/10
**Sarah's confidence after:** 7/10
```

**Step 3: Commit Your Teaching**

```bash
git add Peer-Teaching-Unit3-Triangles.md
git commit -m "Peer teaching: Helped Sarah with triangle congruence"
git push origin helping-sarah-unit3
```

**Step 4: Tag for Extra Credit**

```bash
git tag -a peer-teaching-$(date +%Y%m%d)-sarah -m "Peer teaching session with Sarah"
git push origin --tags
```

**Step 5: Return to Your Work**

```bash
git checkout main
git pull origin main
```

### When You're Being Helped (Student Receiving Help)

**Step 1: Note the Help Session in Your Work**

```bash
# In your Unit 3 folder
echo "# Peer Help Session
**Date:** 2025-11-16
**Helper:** [Name]
**Topic:** Triangle congruence
**What I learned:** [Your notes from the session]
" > Unit3-Peer-Help-Notes.md
```

**Step 2: Save It**

```bash
git add Unit3-Peer-Help-Notes.md
git commit -m "Unit 3: Got help from [Name] on triangle proofs"
git push origin main
```

**This shows your teacher:**
- You sought help (good!)
- Who helped you
- What you learned
- Your progress after help

---

## 2. Study Group Workflow

**Scenario:** You and two classmates are all working on Lesson 4.2 together.

### Step 1: Decide on a Collaboration Model

**Option A: Everyone Stays on Their Own Branch**
- Each person works in their own repo
- Share ideas verbally
- Each commits their own notes

**Option B: Create a Shared Study Group Branch**
- One person creates a study group file
- Everyone contributes to it
- Better for group problem-solving

### Option B Process:

**Organizer creates the group file:**
```bash
git checkout -b study-group-lesson4.2

# Create shared file
touch Study-Group-Lesson4.2.md

# Initial content
echo "# Lesson 4.2 Study Group
**Date:** 2025-11-16
**Members:** Alex, Jordan, Sam

---

## Problems We're Working On
1. [Problem description]

## Alex's Approach:
[Alex's solution method]

## Jordan's Approach:
[Jordan's solution method]

## Sam's Approach:
[Sam's solution method]

## What We Figured Out Together:
[Group conclusions]
" > Study-Group-Lesson4.2.md

git add Study-Group-Lesson4.2.md
git commit -m "Study group: Started Lesson 4.2 collaboration"
git push origin study-group-lesson4.2
```

**Each member adds their contributions:**

Each person takes turns:
```bash
# Pull latest version
git pull origin study-group-lesson4.2

# Add your part
# Edit Study-Group-Lesson4.2.md

# Commit YOUR contribution
git add Study-Group-Lesson4.2.md
git commit -m "Study group: Added my solution to problem 3 - Jordan"
git push origin study-group-lesson4.2
```

**Important:** Take turns! Don't all edit at once (causes conflicts).

### Step 3: Move Learning Back to Individual Repos

After the study session:
```bash
# Copy what you learned to YOUR notes
cp Study-Group-Lesson4.2.md ~/Unit4/Lesson4.2-Group-Notes.md

# Go back to your main work
git checkout main

# Add the notes to YOUR repo
git add Unit4/Lesson4.2-Group-Notes.md
git commit -m "Lesson 4.2: Notes from study group session"
git push origin main
```

**Now:**
- Study group work is documented
- Your individual learning is tracked
- Teacher sees collaboration AND individual understanding

---

## 3. Group Project Workflow (Physics Lab Example)

**Scenario:** Four students doing a velocity lab together.

### Step 1: Create Project Branch

**Team leader:**
```bash
git checkout -b physics-lab-velocity-team1

# Create project structure
mkdir Physics-Lab-Velocity
cd Physics-Lab-Velocity

# Create files for different parts
touch Lab-Setup.md
touch Data-Collection.md
touch Data-Analysis.md
touch Conclusions.md
touch Team-Roles.md

git add .
git commit -m "Lab setup: Created velocity lab structure"
git push origin physics-lab-velocity-team1
```

### Step 2: Assign Roles (Document This!)

**Team-Roles.md:**
```markdown
# Velocity Lab Team 1 Roles

**Team Members:** Alex, Jordan, Sam, Taylor

## Role Assignments
- **Data Collection:** Alex, Sam
- **Calculations:** Jordan
- **Analysis:** Taylor
- **Write-Up:** All (Alex leads)

## Contribution Tracking
Each member will commit their own work with their name in the commit message.
```

```bash
git add Team-Roles.md
git commit -m "Lab: Assigned team roles - Alex"
git push origin physics-lab-velocity-team1
```

### Step 3: Work and Commit Individually

**Alex (collecting data):**
```bash
git pull origin physics-lab-velocity-team1

# Edit Data-Collection.md with trial data
git add Data-Collection.md
git commit -m "Lab: Added trials 1-3 velocity data - Alex"
git push origin physics-lab-velocity-team1
```

**Jordan (doing calculations):**
```bash
git pull origin physics-lab-velocity-team1

# Edit Data-Analysis.md with calculations
git add Data-Analysis.md
git commit -m "Lab: Calculated average velocities - Jordan"
git push origin physics-lab-velocity-team1
```

**Taylor (analyzing results):**
```bash
git pull origin physics-lab-velocity-team1

# Edit Conclusions.md
git add Conclusions.md
git commit -m "Lab: Wrote conclusions section - Taylor"
git push origin physics-lab-velocity-team1
```

### Step 4: Final Submission

**Team leader:**
```bash
# Make sure everyone's work is pulled
git pull origin physics-lab-velocity-team1

# Create final submission tag
git tag -a lab-velocity-team1-final -m "Velocity Lab Final Submission - Team 1"
git push origin physics-lab-velocity-team1 --tags

# Merge to main if teacher requires
git checkout main
git merge physics-lab-velocity-team1
git push origin main
```

### Step 5: Individual Reflection

Each team member adds reflection to THEIR main branch:

```bash
git checkout main

# Create reflection file
echo "# Velocity Lab Reflection
**My Role:** Data collection
**What I contributed:** Collected all trial data, helped with setup
**What I learned:** How to use motion sensors, calculate velocity
**Team collaboration:** Great! Everyone did their part.
**What I'd do differently:** Start earlier, check calculations more carefully
" > Physics-Lab-Velocity-Reflection.md

git add Physics-Lab-Velocity-Reflection.md
git commit -m "Reflection: Velocity lab experience"
git push origin main
```

**Teacher can now see:**
- Group's combined work (the lab branch)
- Individual contributions (commit messages with names)
- Individual reflections (in each student's main branch)
- Who did what and when

---

## 4. Peer Review Workflow

**Scenario:** Two students reviewing each other's notes before mastery check.

### Step 1: Create Review Branch

```bash
git checkout -b peer-review-unit3-with-jordan
```

### Step 2: Review Partner's Work

**Option A: Partner gives you access to their repo**
```bash
# Clone or pull partner's work (if allowed)
git clone <partner-repo-url> partner-review

cd partner-review
# Review their Unit 3 notes
```

**Option B: Partner copies their notes to your repo**
```bash
# Your partner sends you their notes file
# You add it to your review branch

git add Jordan-Unit3-Notes.md
git commit -m "Peer review: Added Jordan's notes for review"
```

### Step 3: Provide Feedback

Create a review file:
```markdown
# Peer Review: Jordan's Unit 3 Notes
**Reviewer:** Your Name
**Date:** 2025-11-16

## Strengths
- ✓ Clear explanations of SSS theorem
- ✓ Good diagrams
- ✓ Organized by lesson

## Suggestions
- ⚠ Section on ASA could use more examples
- ⚠ Missing notes from Lesson 3.4
- 💡 Try adding color-coding for different theorems

## Questions to Discuss
1. Do you understand the difference between ASA and AAS?
2. Want to practice some proofs together?

## Overall
Good prep! You'll do great on the mastery check!
```

```bash
git add Peer-Review-Jordan.md
git commit -m "Peer review: Feedback for Jordan on Unit 3 notes"
git push origin peer-review-unit3-with-jordan
```

### Step 4: Receive Feedback on Your Own Notes

When Jordan reviews YOUR notes:
```bash
git pull origin main
# Check for Jordan's review of your work
cat Jordan-Review-Of-My-Notes.md
```

### Step 5: Improve Based on Feedback

```bash
# Go back to main
git checkout main

# Update your notes based on feedback
git add Unit3-Notes.md
git commit -m "Updated Unit 3 notes based on peer review from Jordan"
git push origin main
```

---

## Collaboration Best Practices

### Do's:
✓ **Always commit with your name:** "Helped Sarah with... - Alex"
✓ **Take turns editing:** Avoids conflicts
✓ **Pull before you push:** Get latest changes first
✓ **Document who did what:** Clear role assignments
✓ **Give credit:** "Thanks to Jordan for explaining..."
✓ **Be respectful:** Kind feedback, no put-downs
✓ **Communicate:** "I'm about to push changes"

### Don'ts:
✗ Do someone else's mastery check for them
✗ Copy-paste solutions without understanding
✗ Edit someone else's personal notes without permission
✗ Take credit for others' work
✗ Share mastery check answers during assessment
✗ Force push (overwrites others' work)

---

## Handling Merge Conflicts

**What's a conflict?**
When two people edit the same part of a file at the same time.

**Example:**
Alex and Jordan both edit line 5 of the lab report.

**How to fix:**

```bash
# When you pull and get a conflict:
git pull origin project-branch

# You'll see:
CONFLICT (content): Merge conflict in Lab-Report.md
Automatic merge failed; fix conflicts and then commit the result.

# Open the file, you'll see:
<<<<<<< HEAD
Alex's version of the text
=======
Jordan's version of the text
>>>>>>> origin/project-branch

# Decide what to keep (or combine both)
# Delete the conflict markers (<<<, ===, >>>)
# Save the file

# Then:
git add Lab-Report.md
git commit -m "Fixed merge conflict - kept both contributions"
git push origin project-branch
```

**Pro tip:** Talk to your partner to decide together!

---

## Extra Credit Opportunities

### Document Your Teaching
Every time you help a peer:
```bash
git tag -a peer-teaching-YYYYMMDD -m "Description"
```

**Teacher can:**
- Count teaching sessions
- Review quality of explanations
- Award extra credit based on helping others

### Study Group Leadership
Organize and document study groups:
```bash
# Create recurring study groups
git checkout -b study-group-unit4
# Document multiple sessions
git commit -m "Study group session 3: Unit 4"
```

**Teacher sees:**
- Leadership initiative
- Consistent collaboration
- Helping multiple students

### Quality of Collaboration
It's not just about helping - it's about HOW you help:

**Good peer teaching (full credit):**
```markdown
## My Explanation
[Clear, simple explanation in your own words]
[Examples you created]
[Checking if they understand]
```

**Bad peer teaching (little credit):**
```markdown
## My Explanation
Just read the textbook page 45.
```

---

## Privacy and Ethics

### What to Share
**OK to share:**
- Practice problem approaches
- Note-taking strategies
- Study techniques
- Explanations of concepts
- Your own understanding

**NOT OK to share:**
- Mastery check answers during assessment
- Direct answers without explanation
- Copy of your notes for them to submit as theirs

### Giving Appropriate Help

**During practice:** Help freely!
**Before mastery check:** Review together, explain concepts
**During mastery check:** Hands off! They need to show their own mastery

---

## Collaboration Examples

### Example 1: Successful Peer Teaching

**Branch:** `helping-taylor-geometry`
**Commits:**
```
commit abc1234
Peer teaching: Created triangle proof examples for Taylor
20 minutes ago

commit def5678
Peer teaching: Worked through 3 practice problems with Taylor
10 minutes ago

commit ghi9012
Peer teaching: Taylor now understands SSS vs SAS - Success!
5 minutes ago
```

**Result:** Teacher sees quality teaching, awards extra credit

### Example 2: Good Study Group

**Branch:** `study-group-physics-unit2`
**Commits:**
```
commit abc1234
Study group: Meeting 1 - discussed Newton's laws - Alex, Jordan, Sam
1 week ago

commit def5678
Study group: Meeting 2 - practice problems - Alex
1 week ago

commit ghi9012
Study group: Added my solutions to problems 5-7 - Jordan
1 week ago

commit jkl3456
Study group: Summary of what we learned - Sam
1 week ago
```

**Result:** Teacher sees collaborative learning, everyone benefits

### Example 3: Excellent Group Project

**Branch:** `physics-lab-momentum-team2`
**Commits:**
```
commit abc1234
Lab setup: Created experiment structure - Sam (team leader)
2 days ago

commit def5678
Lab: Collected trial data 1-5 - Alex
2 days ago

commit ghi9012
Lab: Data analysis and calculations - Jordan
1 day ago

commit jkl3456
Lab: Graphed results - Taylor
1 day ago

commit mno7890
Lab: Wrote conclusions - Sam
1 day ago

commit pqr1234
Lab: Final review and submission - Team
1 day ago
```

**Result:** Teacher sees equal contribution, clear roles, quality work

---

## Troubleshooting

### "I can't push - it says rejected"

```bash
# Someone else pushed first
# Solution: Pull their changes first
git pull origin branch-name

# If there are conflicts, resolve them (see above)
# Then try pushing again
git push origin branch-name
```

### "My partner's changes disappeared"

```bash
# They probably forgot to push
# Ask them to push their commits
# Then you can pull them
git pull origin branch-name
```

### "We both edited the same thing"

```bash
# Merge conflict (see conflict section above)
# Talk to your partner
# Decide together what to keep
```

### "I don't know which branch I'm on"

```bash
# Check current branch
git branch

# The one with * is your current branch
# Switch if needed:
git checkout branch-name
```

---

## Collaboration Checklist

### Starting Collaboration:
- [ ] Created appropriate branch
- [ ] Documented who's collaborating
- [ ] Assigned roles (if group project)
- [ ] Everyone knows what to do

### During Collaboration:
- [ ] Pulling before editing
- [ ] Committing with clear messages
- [ ] Including your name in commits
- [ ] Communicating with team
- [ ] Taking turns (avoiding conflicts)

### Ending Collaboration:
- [ ] All work committed and pushed
- [ ] Created submission tag (if needed)
- [ ] Merged to main (if teacher requires)
- [ ] Individual reflections completed
- [ ] Extra credit tagged appropriately

---

## FAQ

**Q: Can I work with anyone, anytime?**
A: Ask your teacher - they might have guidelines about when collaboration is appropriate.

**Q: Does collaboration hurt my grade?**
A: No! It can help (extra credit) if done properly.

**Q: What if my partner doesn't pull their weight?**
A: Git shows exactly who did what. Talk to your teacher.

**Q: Can I collaborate on mastery checks?**
A: NO! Those must be individual to show YOUR mastery.

**Q: What if we have a merge conflict?**
A: Talk to your partner and resolve it together, or ask teacher for help.

**Q: How many times can I help peers for extra credit?**
A: Ask your teacher - usually unlimited (within reason)!

**Q: Can I collaborate with students in other class periods?**
A: Ask your teacher about cross-period collaboration.

---

## Remember

**Collaboration is about:**
- Learning together
- Teaching each other
- Supporting classmates
- Building understanding

**Collaboration is NOT about:**
- Copying work
- Avoiding effort
- Cheating on assessments
- Taking credit for others' work

**Git makes collaboration visible, fair, and rewarding!**

---

**Last Updated:** 2025-11-16
