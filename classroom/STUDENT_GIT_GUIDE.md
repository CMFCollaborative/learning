# Git Guide for Students
## Track Your Learning Journey

---

## What is Git?

Git is like a **super-powered save button** for your schoolwork. It:
- Saves every version of your work (so you can go back if you make a mistake)
- Shows your teacher what you've learned and when
- Lets you collaborate with classmates safely
- Builds a portfolio of your learning

**Real-world use:** Every app on your phone, every website you visit, was built using Git!

---

## Setup (You'll Do This Once)

### Day 1: Getting Started

```bash
# 1. Tell Git who you are
git config --global user.name "Your Name"
git config --global user.email "your.email@school.edu"

# 2. Go to your class folder
cd path/to/your/class/folder

# 3. Connect to the class repository
git clone <your-teacher-will-give-you-this-url>

# 4. Go into your folder
cd <repository-name>

# 5. Check that everything works
git status
```

**You're done!** You only do this once at the beginning of the year.

---

## Daily Classroom Workflow

### Every Class Period:

```bash
# STEP 1: Update your work from home/last class
git pull origin main

# STEP 2: Do your work (take notes, practice problems, etc.)
# Edit your files, watch videos, work on assignments

# STEP 3: Save your progress (at end of class or when done with a task)
git add .
git commit -m "Lesson 3.2: Triangle congruence notes"

# STEP 4: Back it up to the cloud
git push origin main
```

**That's it!** Four steps every day.

---

## What Each Command Does

### `git pull origin main`
**What it does:** Downloads any updates (like if you worked at home)
**When to use:** Beginning of class, before you start working
**Think of it as:** Syncing your work like Google Docs

### `git add .`
**What it does:** Marks all your changes to be saved
**When to use:** When you're ready to save your work
**Think of it as:** Selecting which files to save

### `git commit -m "message"`
**What it does:** Actually saves your work with a description
**When to use:** After `git add`, when you finish a task
**Think of it as:** Hitting "Save" with a note about what you did

### `git push origin main`
**What it does:** Uploads your saved work to the cloud
**When to use:** End of class or after committing
**Think of it as:** Backing up to Google Drive

### `git status`
**What it does:** Shows what's changed since your last save
**When to use:** Anytime you want to check what's different
**Think of it as:** Checking "unsaved changes"

---

## Writing Good Commit Messages

Your commit message should describe **what you did** in that work session.

### Good Examples:
```bash
git commit -m "Completed Lesson 2.1 notes on parallel lines"
git commit -m "Finished practice problems for sections 4.1-4.3"
git commit -m "Added lab data for velocity experiment"
git commit -m "Completed mastery check for Unit 3"
git commit -m "Fixed mistake in problem #5"
```

### Bad Examples:
```bash
git commit -m "stuff"
git commit -m "work"
git commit -m "idk"
git commit -m "done"
```

**Why it matters:** Your teacher can see your progress, and YOU can look back and see what you learned when!

---

## Submitting Mastery Checks

When you're ready to submit a mastery check:

```bash
# 1. Make sure all your work is saved
git add .
git commit -m "Mastery Check: Unit 3 - Triangles (Ready for grading)"

# 2. Create a special tag for this submission
git tag -a "mastery-unit3-$(date +%Y%m%d)" -m "Unit 3 Mastery Check"

# 3. Push everything including the tag
git push origin main
git push origin --tags

# 4. Let your teacher know you've submitted
# (Your teacher will tell you their preferred notification method)
```

---

## Working Ahead (For Fast-Paced Learners)

If you finish early and want to work on the next lesson:

```bash
# Create a branch for the next lesson
git checkout -b lesson-4.2

# Do your work on the new lesson
# (take notes, practice problems, etc.)

# Save your work
git add .
git commit -m "Started Lesson 4.2: Quadrilaterals"

# Push this branch
git push origin lesson-4.2

# When you're done, go back to main
git checkout main
```

**Why use branches?** Your teacher can see you're working ahead, but it keeps your required work separate from bonus work.

---

## Helping a Classmate (Peer Teaching)

When you help another student:

```bash
# 1. Create a branch for collaborative work
git checkout -b helping-student-name

# 2. Work together on their problems
# (You might add explanations, example problems, etc.)

# 3. Save your collaborative work
git add .
git commit -m "Peer teaching: Helped with triangle proofs"

# 4. Push the collaboration
git push origin helping-student-name

# 5. Go back to your own work
git checkout main
```

**Extra credit note:** Your teacher can see exactly how you helped!

---

## Common Problems & Solutions

### "I forgot to commit yesterday's work!"
```bash
# No problem! Just commit it now
git add .
git commit -m "Lesson 2.3 notes (from yesterday)"
git push origin main
```

### "I accidentally deleted my notes!"
```bash
# See your recent commits
git log --oneline

# Go back to a previous version (before you deleted)
git checkout HEAD~1 -- filename.md

# Save the recovered file
git add filename.md
git commit -m "Recovered deleted notes"
```

### "I made changes but need to switch tasks"
```bash
# Save your work in progress
git add .
git commit -m "WIP: Working on problem set (not finished)"
git push origin main

# Come back later and keep working
```

### "Git says I have conflicts"
```bash
# This happens if you worked on two computers

# 1. Ask your teacher for help the first time
# 2. They'll show you how to resolve it

# Usually it's:
git pull origin main
# (Edit the file to fix conflicts)
git add .
git commit -m "Fixed sync conflict"
git push origin main
```

### "I don't know what I changed"
```bash
# See what's different
git status           # Shows which files changed
git diff            # Shows exactly what changed
```

---

## Checking Your Progress

### See your learning history:
```bash
# See all your commits (your learning timeline)
git log --oneline

# See visual timeline
git log --graph --oneline --all

# See what you did in a specific commit
git show <commit-hash>
```

---

## Quick Reference Card

**Print this and keep it by your computer!**

```
DAILY ROUTINE:
1. git pull origin main          (Get updates)
2. [Do your work]                (Learn!)
3. git add .                     (Mark changes)
4. git commit -m "what I did"    (Save with note)
5. git push origin main          (Backup to cloud)

CHECKING STATUS:
- git status                     (What changed?)
- git log --oneline             (What did I do?)

MASTERY CHECK:
1. git add .
2. git commit -m "Mastery Check: Unit X"
3. git tag -a "mastery-unitX-date" -m "Unit X Done"
4. git push origin main --tags

OOPS COMMANDS:
- git checkout -- filename       (Undo changes to file)
- git reset HEAD filename        (Unstage a file)
```

---

## Pro Tips

1. **Commit often** - At least once per class period, more is better!
2. **Write clear messages** - Your future self will thank you
3. **Pull before push** - Always start class with `git pull`
4. **Ask for help** - Git can seem weird at first, that's normal!
5. **Don't panic** - Almost everything can be undone

---

## Understanding Git Vocabulary

- **Repository (repo):** Your project folder that Git tracks
- **Commit:** A save point in your work
- **Push:** Upload to the cloud
- **Pull:** Download from the cloud
- **Branch:** A separate timeline for working ahead or experimenting
- **Main:** Your primary timeline where required work lives
- **Merge:** Combining two timelines (branches) together
- **Clone:** Making a copy of a repository
- **Tag:** A bookmark for important commits (like mastery checks)

---

## Why We Use Git in Class

1. **You can't lose your work** - It's backed up constantly
2. **Your teacher sees your effort** - Not just the final product
3. **You learn real tools** - Used by professionals everywhere
4. **You build a portfolio** - Show colleges/employers what you've learned
5. **You learn from mistakes** - You can always go back
6. **Collaboration is easier** - Work with classmates safely

---

## Getting Help

**In order of preference:**

1. Check this guide
2. Ask a classmate who knows Git
3. Ask your teacher
4. Google your error message
5. Check the full guide (GIT_GUIDE.md)

**When asking for help, share:**
- What command you ran
- What error message you got
- What you were trying to do

---

## Practice Challenges

### Challenge 1: Basic Workflow
```bash
# 1. Create a new file called practice.md
# 2. Write "Hello Git!" in it
# 3. Add, commit, and push it
# 4. Check git log to see your commit
```

### Challenge 2: Making Changes
```bash
# 1. Edit practice.md and add a new line
# 2. Use git diff to see your changes
# 3. Commit with a descriptive message
# 4. Push to backup
```

### Challenge 3: View History
```bash
# 1. Make 3 different commits
# 2. Use git log to see them all
# 3. Use git show to look at each one
```

---

## Success Checklist

By the end of Week 1, you should be able to:
- [ ] Clone the class repository
- [ ] Pull updates at the start of class
- [ ] Add and commit your work
- [ ] Push to backup your work
- [ ] Write good commit messages
- [ ] Check your status and history

By the end of Month 1, you should be able to:
- [ ] Do the daily routine without looking at notes
- [ ] Submit mastery checks properly
- [ ] Use branches for working ahead
- [ ] Recover from simple mistakes
- [ ] Help a classmate with basic Git

By the end of the semester:
- [ ] Use Git automatically without thinking
- [ ] Understand your full learning history
- [ ] Collaborate using branches
- [ ] Troubleshoot common problems
- [ ] Have a portfolio of your learning!

---

**Remember:** Everyone struggles with Git at first. It gets easier with practice!

**Last Updated:** 2025-11-16
