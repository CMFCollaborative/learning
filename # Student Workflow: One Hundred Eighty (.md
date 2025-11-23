# Student Workflow: One Hundred Eighty (Triangle Angle Sum Theorem)

## Lesson with Git Integration

 

---

 

## Before Class Starts

 

### Step 1: Sync Your Work (2 minutes)

 

```bash

# Navigate to your class folder

cd ~/Documents/ClassWork/geometry-class

 

# Get latest updates

git pull origin main

 

# Verify you're in the right place

git status

```

 

---

 

## Lesson Overview (50 minutes)

 

Today you'll prove that the angles in any triangle add up to 180°. You'll:

- Fix a proof that has errors (Warm-up)

- Prove the theorem three different ways (Activities 1, 2, Cool-down)

- Track all your work using Git

 

**Git commits today: Minimum 5 (one after each activity)**

 

---

 

## Warm-up: What Went Wrong? (10 minutes)

 

### Step 1: Open Your Warm-up File (1 minute)

 

```bash

# Navigate to today's lesson folder

cd Unit-Angles-Proof/Lesson-One-Hundred-Eighty

 

# Open the warm-up file

# File: Warmup-What-Went-Wrong.md

```

 

**Your file already has:**

- A triangle with angles: 50°, 60°, 70°

- A proof with mistakes in it

- Your job: Find and fix the errors

 

### Step 2: Complete the Warm-up (7 minutes)

 

In your file, you'll see:

```markdown

## Given Proof (Contains Errors!)

[The incorrect proof will be here]

 

## My Work: Finding the Errors

 

### Error 1:

**What's wrong:**

**Why it's wrong:**

**How to fix it:**

 

### Error 2:

**What's wrong:**

**Why it's wrong:**

**How to fix it:**

```

 

Fill in your analysis!

 

### Step 3: Commit Your Warm-up (2 minutes)

 

```bash

# Check what you changed

git status

 

# Add your work

git add Warmup-What-Went-Wrong.md

 

# Commit with clear message

git commit -m "Lesson One-Eighty: Completed warm-up - found proof errors"

 

# Push to backup

git push origin main

```

 

**Teacher will review:** Your teacher can now see your error analysis in real-time!

 

---

 

## Activity 1: Triangle Angle Sum One Way (15 minutes)

 

### Step 1: Open Activity 1 File (1 minute)

 

```bash

# File: Activity1-Angle-Sum-Proof.md

```

 

### Step 2: Work Through the Proof (10 minutes)

 

**What you'll do:**

1. Look at the triangle provided (or use the digital applet)

2. Follow the proof method shown

3. Write your own version of the proof

4. Justify each step

 

**In your file:**

```markdown

## Triangle Information

**Vertices:** A, B, C

**Given information:** [What you're told]

 

## My Proof (Method 1: Auxiliary Line)

 

**Step 1:**

**What I did:**

**Why this is valid:**

 

**Step 2:**

**What I did:**

**Why this is valid:**

 

...

 

**Conclusion:**

Therefore, m∠A + m∠B + m∠C = 180°

 

## My Reasoning

[Explain in your own words WHY this proof works]

 

## Questions I Have

[Any confusion or things you want to ask]

```

 

### Step 3: Save Progress During Activity (twice during 10 min)

 

```bash

# After completing proof steps

git add Activity1-Angle-Sum-Proof.md

git commit -m "Activity 1: Completed proof steps 1-3"

git push origin main

 

# After finishing reasoning

git add Activity1-Angle-Sum-Proof.md

git commit -m "Activity 1: Finished proof and reasoning"

git push origin main

```

 

**Why commit twice?**

- Saves your work if computer crashes

- Teacher can see if you're stuck

- You can see your thinking process later

 

### Step 4: Collaboration Time (4 minutes)

 

**Compare with a partner:**

 

```bash

# If doing peer review (optional)

git checkout -b peer-review-with-[partner-name]

 

# Add notes from discussion

echo "## Peer Discussion with [Partner Name]

**What we agreed on:**

**What we disagreed on:**

**How we resolved it:**

" >> Activity1-Peer-Notes.md

 

git add Activity1-Peer-Notes.md

git commit -m "Activity 1: Peer discussion notes"

git checkout main

git merge peer-review-with-[partner-name]

git push origin main

```

 

---

 

## Activity 2: Triangle Angle Sum Another Way (10 minutes)

 

### Step 1: Open Activity 2 File (1 minute)

 

```bash

# File: Activity2-Another-Proof.md

```

 

### Step 2: Second Proof Method (7 minutes)

 

**This time:**

- Different approach (maybe paper folding or rotation)

- Same conclusion (angles = 180°)

- Your job: Follow the method and explain each step

 

**In your file:**

```markdown

## Triangle Setup

[Describe your triangle - you can use the same 50°, 60°, 70° triangle]

 

## My Proof (Method 2: [Name of method])

 

**Diagram/Sketch:**

[Draw or describe what you're doing]

 

**Step-by-step:**

1.

2.

3.

 

**Conclusion:**

 

## Comparing Methods

**How is this different from Method 1?**

**Which method do I prefer and why?**

**Do both methods work for ANY triangle?**

```

 

### Step 3: Commit Activity 2 (2 minutes)

 

```bash

git add Activity2-Another-Proof.md

git commit -m "Activity 2: Completed second proof method"

git push origin main

```

 

### Extension (If You Finish Early): "Are You Ready for More?"

 

```bash

# File: Activity2-Extension.md

 

# Work on extension problem

# Commit when done

git add Activity2-Extension.md

git commit -m "Activity 2: Completed extension problem"

git push origin main

```

 

---

 

## Lesson Synthesis (10 minutes)

 

### Class Discussion (8 minutes)

**No Git work during discussion** - listen and take mental notes!

 

### Update Your Reference Chart (2 minutes)

 

```bash

# File: Reference-Chart.md

# Add today's theorem

 

# Your reference chart should include:

## Triangle Angle Sum Theorem

**Statement:** The sum of the measures of the angles in a triangle is 180°.

**Proof methods I know:**

1. [Method from Activity 1]

2. [Method from Activity 2]

**Key vocabulary:**

- [Terms you learned]

**When to use:**

- [Applications]

```

 

```bash

git add Reference-Chart.md

git commit -m "Reference chart: Added Triangle Angle Sum Theorem"

git push origin main

```

 

---

 

## Cool-down: Triangle Angle Sum a Third Way (5 minutes)

 

### Step 1: Final Proof (4 minutes)

 

```bash

# File: Cooldown-Third-Proof.md

```

 

**Your task:**

- THIRD way to prove the same theorem

- Write it independently (this shows YOUR understanding)

- This is your exit ticket!

 

**In your file:**

```markdown

# Cool-down: Triangle Angle Sum Theorem (Method 3)

**Name:** Your Name

**Date:** [Today's date]

 

## The Triangle

[Describe or sketch the triangle]

 

## My Proof

 

**Given:**

 

**To Prove:** m∠A + m∠B + m∠C = 180°

 

**Proof:**

[Your proof here - be clear and complete!]

 

## Reflection

**Which of the three methods makes the most sense to me?**

**Do I feel confident I could prove this for ANY triangle?** (Yes/Somewhat/Not yet)

**Questions I still have:**

```

 

### Step 2: Submit Cool-down (1 minute)

 

```bash

# This is graded as your exit ticket!

git add Cooldown-Third-Proof.md

git commit -m "Cool-down: Completed third proof method (EXIT TICKET)"

 

# Tag it so teacher knows it's complete

git tag -a lesson-one-eighty-complete-$(date +%Y%m%d) -m "One Hundred Eighty lesson complete"

 

# Push everything

git push origin main --tags

```

 

**Important:** The tag tells your teacher you've finished the lesson!

 

---

 

## After Class

 

### Check Your Work (Optional but recommended)

 

```bash

# See everything you did today

git log --oneline --since="today"

 

# Should show approximately:

# - Warm-up commit

# - Activity 1 commits (2)

# - Activity 2 commit

# - Reference chart commit

# - Cool-down commit

# - Tag for completion

```

 

### If You Need to Finish at Home

 

```bash

# All your work is saved - just pull it at home

cd ~/Documents/ClassWork/geometry-class

git pull origin main

 

# Continue working

# Commit when done

# Push before next class

```

 

---

 

## Git Checklist for This Lesson

 

By the end of class, you should have:

- [ ] Pulled at start of class

- [ ] Committed warm-up work

- [ ] Committed Activity 1 (at least once)

- [ ] Committed Activity 2

- [ ] Updated reference chart

- [ ] Committed cool-down

- [ ] Tagged lesson as complete

- [ ] Pushed all work to origin

 

**Minimum commits:** 5

**Recommended commits:** 6-7

 

---

 

## Troubleshooting

 

### "I can't find my lesson folder"

```bash

cd ~/Documents/ClassWork/geometry-class

ls Unit-Angles-Proof/

cd Unit-Angles-Proof/Lesson-One-Hundred-Eighty

```

 

### "Git says I have uncommitted changes when I try to pull"

```bash

# Commit what you have first

git add .

git commit -m "Work in progress"

git pull origin main

```

 

### "I made a mistake in my proof"

```bash

# Just edit the file and commit again

git add [filename]

git commit -m "Fixed error in proof step 2"

git push origin main

```

 

### "I forgot to commit during the lesson"

```bash

# That's okay! Commit everything now

git add .

git commit -m "One Hundred Eighty: All lesson work"

git push origin main

```

 

---

 

## What Your Teacher Will See

 

Your teacher can see:

- ✓ When you started working (first commit timestamp)

- ✓ Your thought process (commits throughout the lesson)

- ✓ Which activities you completed

- ✓ Your questions and confusion points

- ✓ When you finished (tag timestamp)

- ✓ Your complete work (all files)

 

**This is GOOD!** Your teacher can:

- Help if you get stuck

- See your effort

- Grade your understanding

- Provide specific feedback

 

---

 

## Learning Goals Check

 

At the end of this lesson, can you:

- [ ] Prove the Triangle Angle Sum Theorem in at least two ways?

- [ ] Explain WHY the angles add to 180°?

- [ ] Apply this theorem to find missing angles?

- [ ] Justify each step in your proof?

 

If you answered "yes" to all four - great work!

If "no" to any - that's okay! Check:

1. Your committed work (review what you wrote)

2. Your peer notes (what did classmates say?)

3. Your questions (ask teacher tomorrow!)

 

---

 

## Preview: Next Lesson

 

**Next:** Transformations, Transversals and Proof

- You'll use today's theorem

- Similar Git workflow

- Build on your reference chart

 

**Make sure** your work is committed so you can reference it next lesson!

 

---

 

**Ready to prove some triangles? Let's go!**

 

**Last Updated:** 2025-11-16