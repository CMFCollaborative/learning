# Git Repository Management Guide
## Industry Standard Best Practices for Beginners

---

## Table of Contents
1. [Initial Setup (New Repository)](#initial-setup-new-repository)
2. [Daily Workflow](#daily-workflow)
3. [Branch Management](#branch-management)
4. [Cleanup & Recovery](#cleanup--recovery)
5. [Best Practices](#best-practices)
6. [Common Scenarios](#common-scenarios)
7. [Emergency Fixes](#emergency-fixes)

---

## Initial Setup (New Repository)

### Option A: Cloning an Existing Repository

```bash
# 1. Clone the repository
git clone <repository-url>

# 2. Navigate into the repository
cd <repository-name>

# 3. Check the current status
git status

# 4. See all branches (local and remote)
git branch -a

# 5. Create local main branch if it doesn't exist
git checkout -b main origin/main

# 6. Verify you're on the main branch
git branch
```

### Option B: Creating a New Repository from Scratch

```bash
# 1. Create a new directory
mkdir my-project
cd my-project

# 2. Initialize Git
git init

# 3. Create initial files
echo "# My Project" > README.md

# 4. Add files to staging
git add README.md

# 5. Make first commit
git commit -m "Initial commit"

# 6. Rename branch to main (if needed)
git branch -M main

# 7. Add remote repository
git remote add origin <repository-url>

# 8. Push to remote
git push -u origin main
```

### Configure Git (First Time Setup)

```bash
# Set your name (shows up in commits)
git config --global user.name "Your Name"

# Set your email (shows up in commits)
git config --global user.email "your.email@example.com"

# Check your settings
git config --list
```

---

## Daily Workflow

### The Standard Work Cycle

```bash
# STEP 1: Always start by updating your local repo
git checkout main
git pull origin main

# STEP 2: Create a new branch for your work
git checkout -b feature/my-new-feature

# STEP 3: Make your changes
# (edit files in your editor)

# STEP 4: Check what changed
git status

# STEP 5: See the actual changes
git diff

# STEP 6: Add files to staging area
git add <filename>           # Add specific file
# OR
git add .                    # Add all changed files

# STEP 7: Commit your changes
git commit -m "Description of what you changed"

# STEP 8: Push your branch to remote
git push -u origin feature/my-new-feature

# STEP 9: After work is reviewed/approved, merge to main
git checkout main
git pull origin main
git merge feature/my-new-feature
git push origin main

# STEP 10: Delete the feature branch (cleanup)
git branch -d feature/my-new-feature
git push origin --delete feature/my-new-feature
```

---

## Branch Management

### Understanding Branches

**Main Branch (main)**: Your stable, production-ready code
**Feature Branches**: Temporary branches for specific work

### Creating and Switching Branches

```bash
# Create a new branch and switch to it
git checkout -b branch-name

# Switch to an existing branch
git checkout branch-name

# List all local branches
git branch

# List all branches (including remote)
git branch -a

# Create branch from specific commit
git checkout -b branch-name <commit-hash>
```

### Naming Conventions

```bash
# Features
git checkout -b feature/user-authentication
git checkout -b feature/add-payment-system

# Bug fixes
git checkout -b fix/login-error
git checkout -b fix/database-connection

# Experiments/learning
git checkout -b experiment/try-new-library
git checkout -b learning/practice-merging
```

### Merging Branches

```bash
# 1. Switch to the branch you want to merge INTO (usually main)
git checkout main

# 2. Pull latest changes
git pull origin main

# 3. Merge your feature branch
git merge feature/my-feature

# 4. Push the merged changes
git push origin main
```

---

## Cleanup & Recovery

### Undoing Uncommitted Changes

```bash
# See what changed
git status

# Discard changes to a specific file
git checkout -- <filename>

# Discard ALL uncommitted changes (BE CAREFUL!)
git reset --hard HEAD

# Discard all changes but keep new untracked files
git checkout .
```

### Undoing Staged Changes (After `git add`)

```bash
# Unstage a specific file (changes still exist)
git reset HEAD <filename>

# Unstage everything (changes still exist)
git reset HEAD
```

### Undoing Commits

```bash
# Undo last commit but keep changes (safe)
git reset --soft HEAD~1

# Undo last commit and unstage changes (changes still exist)
git reset HEAD~1

# Undo last commit and delete changes (DANGEROUS!)
git reset --hard HEAD~1

# Undo multiple commits (e.g., last 3)
git reset --soft HEAD~3
```

### Fixing a Bad Commit Message

```bash
# If you haven't pushed yet
git commit --amend -m "New better message"

# If you already pushed (use with caution)
git commit --amend -m "New better message"
git push --force origin branch-name
```

### Deleting Branches

```bash
# Delete local branch (safe - won't delete if unmerged)
git branch -d branch-name

# Force delete local branch (even if unmerged)
git branch -D branch-name

# Delete remote branch
git push origin --delete branch-name

# Clean up references to deleted remote branches
git fetch --prune
```

### Stashing Changes (Temporary Save)

```bash
# Save your current work without committing
git stash

# See list of stashed changes
git stash list

# Apply the most recent stash
git stash apply

# Apply and remove the most recent stash
git stash pop

# Apply a specific stash
git stash apply stash@{2}

# Delete a stash
git stash drop stash@{0}

# Delete all stashes
git stash clear
```

---

## Best Practices

### Commit Messages

**Good Commit Messages:**
```bash
git commit -m "Add user authentication feature"
git commit -m "Fix bug in login validation"
git commit -m "Update README with installation instructions"
git commit -m "Refactor database connection logic"
```

**Bad Commit Messages:**
```bash
git commit -m "stuff"
git commit -m "fixed it"
git commit -m "asdf"
git commit -m "changes"
```

**Format Convention:**
```
<type>: <short description>

Types:
- feat: New feature
- fix: Bug fix
- docs: Documentation changes
- style: Formatting, missing semicolons, etc
- refactor: Code restructuring
- test: Adding tests
- chore: Maintenance tasks

Examples:
git commit -m "feat: add password reset functionality"
git commit -m "fix: resolve login timeout issue"
git commit -m "docs: update API documentation"
```

### When to Commit

**DO Commit When:**
- You've completed a logical unit of work
- You've fixed a bug
- You've added a feature (even if small)
- You're about to try something risky
- End of your work session

**DON'T Commit When:**
- Code doesn't work/run
- Code has syntax errors
- You're in the middle of something

### When to Branch

**Create a New Branch When:**
- Starting a new feature
- Fixing a bug
- Experimenting with something
- Each separate task

**Work Directly on Main When:**
- Almost never! (exception: very simple docs-only repos)

### Pull Before Push

**Always do this:**
```bash
git pull origin main
# Then resolve any conflicts
git push origin main
```

**Not this:**
```bash
git push origin main  # May fail if remote has changes
```

---

## Common Scenarios

### Scenario 1: I Made Changes but I'm on the Wrong Branch

```bash
# 1. Stash your changes
git stash

# 2. Switch to correct branch (or create it)
git checkout -b correct-branch

# 3. Apply your changes
git stash pop

# 4. Continue working
```

### Scenario 2: I Need to Update My Feature Branch with Main

```bash
# You're on your feature branch
git checkout feature/my-feature

# Pull latest from main
git checkout main
git pull origin main

# Go back to your feature branch
git checkout feature/my-feature

# Merge main into your feature
git merge main

# Resolve any conflicts, then
git add .
git commit -m "Merge main into feature branch"
git push origin feature/my-feature
```

### Scenario 3: Merge Conflicts

```bash
# When you try to merge and get conflicts:
git merge main
# Auto-merging file.txt
# CONFLICT (content): Merge conflict in file.txt

# 1. Open the conflicted files
# Look for conflict markers:
# <<<<<<< HEAD
# your changes
# =======
# their changes
# >>>>>>> main

# 2. Edit the file to resolve conflicts
# Remove the markers and keep what you want

# 3. Stage the resolved files
git add <resolved-file>

# 4. Complete the merge
git commit -m "Resolve merge conflicts"

# 5. Push
git push origin branch-name
```

### Scenario 4: I Committed to Main Instead of a Feature Branch

```bash
# 1. Create a new branch with your changes
git branch feature/my-work

# 2. Reset main to remote state
git reset --hard origin/main

# 3. Switch to your new feature branch
git checkout feature/my-work

# Your commits are now on the correct branch!
```

### Scenario 5: Pull Latest Changes from Remote

```bash
# Update all remote references
git fetch origin

# Pull changes for current branch
git pull origin <branch-name>

# Pull changes for main
git pull origin main
```

---

## Emergency Fixes

### "I Completely Messed Up - Start Over"

```bash
# See what you messed up
git status
git log --oneline -10

# Option 1: Reset to last known good commit
git reset --hard <commit-hash>

# Option 2: Reset to remote state
git fetch origin
git reset --hard origin/main

# Option 3: Nuclear option - fresh clone
cd ..
rm -rf my-repo
git clone <repository-url>
```

### "I Pushed Bad Code to Main"

```bash
# 1. Find the last good commit
git log --oneline

# 2. Create a revert commit (safe)
git revert <bad-commit-hash>

# 3. Push the revert
git push origin main

# Alternative: Reset (only if no one else pulled)
git reset --hard <last-good-commit>
git push --force origin main  # DANGEROUS - use with caution
```

### "I Deleted Something Important"

```bash
# Find the commit with the deleted file
git log --all --full-history -- <file-path>

# Restore file from specific commit
git checkout <commit-hash> -- <file-path>

# Or restore from previous commit
git checkout HEAD~1 -- <file-path>
```

### "I Can't Push - Remote Has Changes"

```bash
# 1. Pull remote changes first
git pull origin main

# 2. Resolve any conflicts (see Scenario 3)

# 3. Now push
git push origin main
```

### "I Have Uncommitted Changes but Need to Switch Branches"

```bash
# Option 1: Stash changes
git stash
git checkout other-branch
# Later: git stash pop

# Option 2: Commit changes
git add .
git commit -m "WIP: work in progress"
git checkout other-branch
```

---

## Quick Reference Commands

### Status & Information
```bash
git status                    # See what's changed
git log                       # See commit history
git log --oneline            # Compact commit history
git log --graph --all        # Visual branch history
git diff                     # See unstaged changes
git diff --staged            # See staged changes
git branch                   # List local branches
git branch -a                # List all branches
git remote -v                # Show remote repositories
```

### Basic Operations
```bash
git add <file>               # Stage specific file
git add .                    # Stage all changes
git commit -m "message"      # Commit staged changes
git push origin <branch>     # Push to remote
git pull origin <branch>     # Pull from remote
git fetch origin             # Update remote references
```

### Branching
```bash
git checkout -b <branch>     # Create and switch to branch
git checkout <branch>        # Switch to existing branch
git merge <branch>           # Merge branch into current
git branch -d <branch>       # Delete local branch
```

### Undoing
```bash
git checkout -- <file>       # Discard changes to file
git reset HEAD <file>        # Unstage file
git reset --soft HEAD~1      # Undo last commit, keep changes
git reset --hard HEAD        # Discard all changes
git stash                    # Temporarily save changes
```

---

## Safety Checklist Before Risky Operations

Before using `--force`, `--hard`, or deleting things:

- [ ] Is my work committed?
- [ ] Is my work pushed to remote?
- [ ] Do I have a backup?
- [ ] Did I check `git status`?
- [ ] Did I check `git log`?
- [ ] Am I on the correct branch?
- [ ] Do I know how to undo this?

**When in doubt, create a backup branch:**
```bash
git branch backup-$(date +%Y%m%d)
```

---

## Learning Resources

- **Practice**: Create a "sandbox" repository just for practicing
- **Visualize**: Use `git log --graph --all --oneline --decorate`
- **Experiment**: Try things on feature branches, not main
- **Ask**: When stuck, describe what you tried and what happened

---

## Notes for Future You

Remember:
1. **Commit often** - Small commits are better than large ones
2. **Pull before push** - Always sync before sharing
3. **Branch for everything** - Keep main clean
4. **Read error messages** - Git usually tells you what's wrong
5. **Don't panic** - Almost everything is recoverable
6. **Google is your friend** - You're not the first person with this problem

---

**Last Updated:** 2025-11-16
**Repository:** learning (practice/educational use)