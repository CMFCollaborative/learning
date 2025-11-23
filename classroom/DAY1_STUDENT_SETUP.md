# Day 1: Git Setup Guide
## Get Ready to Track Your Learning!

---

## What You Need

- [ ] A computer (school or personal)
- [ ] Internet connection
- [ ] 15 minutes
- [ ] The class repository URL (teacher will provide)

---

## Step-by-Step Setup

### Step 1: Install Git (5 minutes)

#### On Windows:
1. Go to [https://git-scm.com/download/win](https://git-scm.com/download/win)
2. Download the installer
3. Run the installer
4. Click "Next" through all options (defaults are fine)
5. Click "Finish"

#### On Mac:
1. Open Terminal (in Applications > Utilities)
2. Type: `git --version`
3. If it says "command not found", install Xcode Command Line Tools:
   - Type: `xcode-select --install`
   - Click "Install" in the popup
   - Wait 5-10 minutes for installation

#### On Chromebook/School Computer:
Ask your teacher - Git might already be installed!

**Test it worked:**
```bash
git --version
```
You should see something like: `git version 2.39.0`

---

### Step 2: Tell Git Who You Are (2 minutes)

Open Terminal (Mac) or Git Bash (Windows) and type:

```bash
git config --global user.name "Your Name"
```
Press Enter, then type:
```bash
git config --global user.email "youremail@school.edu"
```

**Example:**
```bash
git config --global user.name "Jane Smith"
git config --global user.email "jsmith@school.edu"
```

**Check it worked:**
```bash
git config --list
```

Look for your name and email in the output!

---

### Step 3: Create Your Class Folder (1 minute)

**Windows:**
```bash
cd Documents
mkdir ClassWork
cd ClassWork
```

**Mac:**
```bash
cd ~/Documents
mkdir ClassWork
cd ClassWork
```

**Chromebook:**
```bash
cd ~
mkdir ClassWork
cd ClassWork
```

---

### Step 4: Clone the Class Repository (3 minutes)

Your teacher will give you a URL. It looks like:
- `https://github.com/teacher-name/geometry-period3`
- `https://gitlab.com/teacher-name/physics-class`

```bash
git clone <PASTE-THE-URL-HERE>
```

**Example:**
```bash
git clone https://github.com/mrjones/geometry-period3
```

Press Enter and wait. You might see:
```
Cloning into 'geometry-period3'...
remote: Counting objects: 100, done.
...
```

**Success!** You'll see a message like:
```
Receiving objects: 100% (...), done.
```

---

### Step 5: Enter Your Class Folder (1 minute)

```bash
cd <repository-name>
```

**Example:**
```bash
cd geometry-period3
```

**Check you're in the right place:**
```bash
ls
```

You should see folders like `students`, `class-resources`, etc.

---

### Step 6: Test Everything Works (2 minutes)

```bash
git status
```

You should see:
```
On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean
```

**If you see that - YOU'RE DONE!** 🎉

---

## Quick Troubleshooting

### "git: command not found"
- Git isn't installed. Go back to Step 1.

### "Permission denied"
- Check the URL your teacher gave you
- Make sure you typed your email correctly in Step 2

### "fatal: not a git repository"
- You're not in the right folder
- Use `cd` to go back to your class folder (Step 5)

### "I don't know how to use Terminal/Git Bash"
- Don't worry! Ask your teacher or a classmate
- The commands are exactly as written - just copy and paste

---

## Daily Routine (Practice This!)

Now that you're set up, here's what you'll do every class:

```bash
# 1. Go to your class folder
cd ~/Documents/ClassWork/geometry-period3

# 2. Get updates
git pull origin main

# 3. Do your work (take notes, practice, etc.)

# 4. Save your work
git add .
git commit -m "Describe what you did today"
git push origin main
```

**Let's practice right now:**

1. Create a test file:
```bash
echo "Hello! I'm learning Git!" > test.txt
```

2. Check what changed:
```bash
git status
```

3. Add the file:
```bash
git add test.txt
```

4. Commit it:
```bash
git commit -m "My first commit - testing Git"
```

5. Push it:
```bash
git push origin main
```

**Did it work?** You should see:
```
Counting objects: 3, done.
...
To https://github.com/...
   abc1234..def5678  main -> main
```

---

## Your Checklist

By the end of today, you should have:

- [ ] Git installed on your computer
- [ ] Your name and email configured
- [ ] Class repository cloned
- [ ] Successfully made a test commit
- [ ] Successfully pushed to the cloud
- [ ] Know where to find the STUDENT_GIT_GUIDE.md for help

---

## Getting Help

**If you get stuck:**

1. Try the command again (sometimes it just works the second time!)
2. Ask the person next to you
3. Raise your hand for the teacher
4. Check STUDENT_GIT_GUIDE.md for more detailed help

**Don't stress!** Everyone finds Git confusing at first. It gets easier fast!

---

## Tomorrow

Tomorrow we'll start using Git with real classwork. Make sure:
- You know where your class folder is
- You remember the basic commands (or know where to find them)
- You can open Terminal/Git Bash

---

## Cheat Sheet (Print This!)

```
┌─────────────────────────────────────────┐
│          GIT CHEAT SHEET                │
├─────────────────────────────────────────┤
│ Go to class folder:                     │
│   cd ~/Documents/ClassWork/class-name   │
│                                         │
│ Get updates:                            │
│   git pull origin main                  │
│                                         │
│ Check what changed:                     │
│   git status                            │
│                                         │
│ Save work:                              │
│   git add .                             │
│   git commit -m "what I did"            │
│   git push origin main                  │
│                                         │
│ See history:                            │
│   git log --oneline                     │
│                                         │
│ Help!:                                  │
│   git status (shows where you are)      │
│   Ask teacher!                          │
└─────────────────────────────────────────┘
```

---

**Congratulations!** You're now set up to track your learning journey with Git!

**Last Updated:** 2025-11-16
