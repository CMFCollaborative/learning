# Notion Page Templates
## Copy-Paste Ready Templates for Your Classroom

---

## How to Use These Templates

1. Create a new page in Notion
2. Copy the markdown/text below
3. Paste into Notion
4. Notion will auto-format most of it!
5. Adjust as needed for your class

**Note:** Some formatting may need manual adjustment in Notion (like callouts, toggle blocks, etc.)

---

## Template 1: Class Homepage

```
🏠 Geometry - Period 3
Welcome to our classroom!

━━━━━━━━━━━━━━━━━━━━━━━━━━

📌 IMPORTANT LINKS

🔗 Class GitHub Repository
[Paste your GitHub repo URL here]

📖 Git Setup Guide
[Link to your setup guide]

💾 How to Submit Work
[Link to workflow guide]

━━━━━━━━━━━━━━━━━━━━━━━━━━

📅 CURRENT UNIT

Unit: Angles and Proof
Status: In Progress

Lessons:
✅ Lesson 1: One Hundred Eighty (Triangle Angle Sum)
🔄 Lesson 2: Transformations, Transversals
⏳ Mastery Check (Available when ready!)

━━━━━━━━━━━━━━━━━━━━━━━━━━

🎯 THIS WEEK'S FOCUS

This week we're proving angle relationships! You'll:
• Prove the Triangle Angle Sum Theorem
• Use transformations to prove transversal theorems
• Apply multiple theorems together

By Friday, you should be ready for the mastery check!

━━━━━━━━━━━━━━━━━━━━━━━━━━

📊 MY PROGRESS

[Link to your personal dashboard]

━━━━━━━━━━━━━━━━━━━━━━━━━━

📚 QUICK ACCESS

• Reference Charts
• Formulas & Theorems
• Past Lessons
• Extra Practice Problems
• Video Library
• Ask for Help

━━━━━━━━━━━━━━━━━━━━━━━━━━

💬 ANNOUNCEMENTS

[Date] - Mastery checks starting Wednesday!
[Date] - Great work on Lesson 1, everyone!
[Date] - Remember: Commit your work regularly!

━━━━━━━━━━━━━━━━━━━━━━━━━━

❓ NEED HELP?

Git Issues? → [Troubleshooting Guide]
Content Questions? → Check your Reference Chart first
Stuck? → Raise your hand or ask a classmate
Absent? → Everything is in Git - you can catch up!
```

**In Notion, add:**
- Callout boxes for IMPORTANT LINKS (use `/callout`)
- Color-code sections
- Add icons to headers
- Make links actual hyperlinks

---

## Template 2: Lesson Page

```
📐 Lesson: One Hundred Eighty

━━━━━━━━━━━━━━━━━━━━━━━━━━

🎯 LEARNING GOAL

By the end of this lesson, you will prove that the sum of the measures of the angles in a triangle is 180°.

━━━━━━━━━━━━━━━━━━━━━━━━━━

⏱️ TIME: 50 minutes

━━━━━━━━━━━━━━━━━━━━━━━━━━

📋 BEFORE YOU START

✅ Git Setup

Open your terminal and run:

cd ~/Documents/ClassWork/geometry-class
git pull origin main
cd Unit-Angles-Proof/Lesson-One-Hundred-Eighty


✅ Check You Have These Files

□ Warmup-What-Went-Wrong.md
□ Activity1-Angle-Sum-Proof.md
□ Activity2-Another-Proof.md
□ Cooldown-Third-Proof.md

If you don't see these files, ask for help!

━━━━━━━━━━━━━━━━━━━━━━━━━━

📚 LESSON ACTIVITIES

┌─────────────────────────────────┐
│ WARM-UP (10 minutes)            │
└─────────────────────────────────┘

File: Warmup-What-Went-Wrong.md

Task: Find the errors in a flawed proof. The "proof" shows that a specific triangle's angles sum to 180°, but there are logical errors!

What you'll learn:
• Difference between checking one example vs. proving for all cases
• What makes a valid proof

When done:
git add Warmup-What-Went-Wrong.md
git commit -m "Warm-up: Found proof errors"
git push origin main


┌─────────────────────────────────┐
│ ACTIVITY 1 (15 minutes)         │
└─────────────────────────────────┘

File: Activity1-Angle-Sum-Proof.md

Task: Prove the Triangle Angle Sum Theorem using the auxiliary line method

What you'll do:
1. Draw an auxiliary line parallel to one side
2. Use alternate interior angles
3. Show angles form a straight line (180°)
4. Write a formal proof

💡 Tip: Commit TWICE during this activity!

After step 3:
git add Activity1-Angle-Sum-Proof.md
git commit -m "Activity 1: Completed proof steps"
git push origin main

After finishing:
git add Activity1-Angle-Sum-Proof.md
git commit -m "Activity 1: Complete with reasoning"
git push origin main


┌─────────────────────────────────┐
│ ACTIVITY 2 (10 minutes)         │
└─────────────────────────────────┘

File: Activity2-Another-Proof.md

Task: Prove the same theorem using a DIFFERENT method (paper folding, rotation, etc.)

Why a second method?
• Deepens understanding
• Shows flexibility in mathematical thinking
• Proves it's not a coincidence!

When done:
git add Activity2-Another-Proof.md
git commit -m "Activity 2: Second proof method complete"
git push origin main


┌─────────────────────────────────┐
│ COOL-DOWN (5 minutes)           │
│ ⚠️ This is your exit ticket!    │
└─────────────────────────────────┘

File: Cooldown-Third-Proof.md

Task: Prove using a THIRD method - on your own!

This shows YOUR understanding. Work independently.

When done:
git add Cooldown-Third-Proof.md
git commit -m "Cool-down: Third proof complete (EXIT TICKET)"
git tag -a lesson-one-eighty-complete-$(date +%Y%m%d) -m "Complete"
git push origin main --tags


The tag tells your teacher you're finished!

━━━━━━━━━━━━━━━━━━━━━━━━━━

📖 KEY CONCEPTS

• Triangle Angle Sum Theorem: m∠A + m∠B + m∠C = 180°
• Auxiliary line: A line added to help with a proof
• Alternate interior angles: Created when parallel lines are cut by a transversal

━━━━━━━━━━━━━━━━━━━━━━━━━━

🎥 RESOURCES

Videos:
• Introduction to Triangle Angle Sum [Link]
• Example Proof Walkthrough [Link]

Reference:
• Student Git Guide [Link]
• Geometry Reference Chart [Link]

━━━━━━━━━━━━━━━━━━━━━━━━━━

🆘 NEED HELP?

Git Issues:
1. Check Troubleshooting Guide
2. Ask a classmate
3. Raise your hand

Content Questions:
1. Review the activity instructions
2. Check your Reference Chart
3. Ask your teacher

Computer Crashed?
Don't panic! Your last commit is saved. Just pull and continue from there.

━━━━━━━━━━━━━━━━━━━━━━━━━━

✨ FINISHED EARLY?

□ Update your Reference Chart
□ Review your proofs - could you explain them to someone?
□ Help a classmate (peer teaching = extra credit!)
□ Work ahead on Lesson 2
□ Try the extension problem (if available)

━━━━━━━━━━━━━━━━━━━━━━━━━━

➡️ WHAT'S NEXT?

After completing this lesson:
• Move to Lesson 2: Transformations, Transversals
• Update your progress tracker
• After both lessons, you can tag for mastery readiness!
```

**In Notion:**
- Use toggle blocks for each activity (type `/toggle`)
- Use code blocks for Git commands (type `/code`)
- Add checkboxes (type `/todo`)
- Color-code sections (Activity 1 = blue, Activity 2 = green, Cool-down = red)

---

## Template 3: Student Personal Dashboard

```
🎓 [Student Name]'s Geometry Journey

Welcome, [Student Name]!

━━━━━━━━━━━━━━━━━━━━━━━━━━

📊 MY PROGRESS AT A GLANCE

Current Unit: Angles and Proof
Lessons Complete: 1/2
Mastery Status: In Progress
Overall Grade: [Teacher fills in]

━━━━━━━━━━━━━━━━━━━━━━━━━━

✅ COMPLETED WORK

╔═══════════════════════════════════════╗
║ Lesson 1: One Hundred Eighty          ║
╚═══════════════════════════════════════╝

Status: ✅ Complete
Date Completed: Nov 16, 2025

Activities:
✓ Warm-up: Found proof errors
✓ Activity 1: Auxiliary line proof
✓ Activity 2: Alternative proof method
✓ Cool-down: Independent proof

Score: Proficient (3/4)

Teacher Feedback:
"Great work on all three proof methods! Your reasoning in Activity 1 was particularly clear. For mastery level, work on being more precise with geometric terminology."

[View my work on GitHub] →


╔═══════════════════════════════════════╗
║ Lesson 2: Transformations             ║
╚═══════════════════════════════════════╝

Status: 🔄 In Progress
Current Activity: Activity 2

Completed:
✓ Warm-up: Transformation properties
✓ Activity 1: Alternate interior angles

To Do:
□ Activity 2: Other angle relationships
□ Activity 3: Complex diagrams
□ Cool-down: Proof challenge

━━━━━━━━━━━━━━━━━━━━━━━━━━

🎯 MY NEXT STEPS

1. Finish Activity 2 in Transformations lesson
2. Complete Activity 3 and Cool-down
3. Tag as ready for mastery check
4. Wait for teacher approval
5. Take mastery check!

━━━━━━━━━━━━━━━━━━━━━━━━━━

📚 MY RESOURCES

Quick Links:
• [My Reference Chart]
• [My Git Repository]
• [Class Resources]
• [Extra Practice Problems]

My Notes:
[Add your own notes here!]

━━━━━━━━━━━━━━━━━━━━━━━━━━

💬 TEACHER NOTES

[Teacher can add personalized feedback and reminders here]

Recent Notes:
• Nov 16: Great improvement in proof writing!
• Nov 15: Remember to commit more frequently
• Nov 14: Excellent peer teaching with Sarah on triangle problems

━━━━━━━━━━━━━━━━━━━━━━━━━━

📈 MY GOALS

This Unit:
□ Master all angle relationships
□ Score 75+ on mastery check (Mastery level)
□ Help 2 classmates (peer teaching for extra credit)

This Semester:
□ Maintain Proficient or higher on all mastery checks
□ Build complete reference chart
□ Improve proof-writing skills

━━━━━━━━━━━━━━━━━━━━━━━━━━

🔗 MY GIT STATS

Last Commit: Nov 16, 2:45 PM
Total Commits This Week: 12
Completion Tags: 1
Mastery Ready: Not yet

[View my GitHub activity] →

━━━━━━━━━━━━━━━━━━━━━━━━━━

❓ QUESTIONS FOR TEACHER

[Add questions here - teacher checks daily]

```

**In Notion:**
- Use callout boxes for progress summary
- Add student's profile picture at top
- Use progress bars (Notion templates have these)
- Color-code: Complete = green, In Progress = yellow, Not Started = gray

---

## Template 4: Teacher Dashboard

```
👨‍🏫 Teacher Dashboard - Geometry Period 3

Today: [Auto-updating date]

━━━━━━━━━━━━━━━━━━━━━━━━━━

📊 CLASS OVERVIEW

╔══════════════════════════════════╗
║        QUICK STATS               ║
╚══════════════════════════════════╝

Total Students: 28
Lesson 1 Complete: 25 (89%)
Lesson 2 Complete: 18 (64%)
Ready for Mastery: 12 (43%)
Mastery Submitted: 5 (18%)
Need Follow-up: 3

━━━━━━━━━━━━━━━━━━━━━━━━━━

🎯 TODAY'S FOCUS

Lesson: Transformations, Transversals (Day 2)
Expected: Most students finish Activities 2-3

⚠️ Students to Check On:
□ Alex - Hasn't committed in 25 minutes
□ Jordan - Tagged mastery ready (needs review)
□ Sam - Submitted mastery check yesterday (needs grading)
□ Taylor - Absent today (send catch-up message)

━━━━━━━━━━━━━━━━━━━━━━━━━━

📋 PROGRESS TRACKER

[Embed your Student Progress Database here]

View Options:
• Board by Lesson Status (default)
• Mastery Check Queue
• Grade Overview
• This Week's Activity

━━━━━━━━━━━━━━━━━━━━━━━━━━

🏷️ MASTERY CHECK QUEUE

Students Ready for Review:

1. Jordan Smith
   - Lesson 1: Complete (3/4)
   - Lesson 2: Complete (3/4)
   - Tagged: Nov 16, 10:30 AM
   - Action: [Review commits] [Approve] [Request revision]

2. Morgan Lee
   - Lesson 1: Complete (4/4)
   - Lesson 2: Complete (4/4)
   - Tagged: Nov 16, 11:15 AM
   - Action: [Review commits] [Approve] [Request revision]

━━━━━━━━━━━━━━━━━━━━━━━━━━

📝 GRADING QUEUE

Mastery Checks to Grade:

1. Sam Johnson
   - Submitted: Nov 15, 2:30 PM
   - [Open in GitHub] [Grade Now]

2. Alex Chen
   - Submitted: Nov 16, 9:00 AM
   - [Open in GitHub] [Grade Now]

━━━━━━━━━━━━━━━━━━━━━━━━━━

🔧 QUICK GIT COMMANDS

Check Recent Activity:
git fetch --all
git log --all --since="today" --oneline


Check Completions:
git tag -l "lesson-one-eighty-complete-*" | wc -l
git tag -l "lesson-transformations-complete-*" | wc -l
git tag -l "mastery-angles-proof-ready"


Grant Mastery Access:
cp Mastery-Check-Angles-Proof.md Unit-Angles-Proof/
git add Unit-Angles-Proof/Mastery-Check-Angles-Proof.md
git commit -m "Mastery check: Access granted for [Student]"
git push origin student-name/main


━━━━━━━━━━━━━━━━━━━━━━━━━━

📅 THIS WEEK'S PLAN

✅ Monday: Lesson 1 (One Hundred Eighty)
   - 25/28 completed

✅ Tuesday: Lesson 2 (Transformations)
   - In progress: 18/28 complete

□ Wednesday: Review Day / Begin Mastery Checks
   - Plan: Review session for those who need it
   - Start granting mastery check access

□ Thursday: Mastery Checks Continue
   - Goal: 50% complete mastery checks

□ Friday: Finish Mastery Checks / Start Next Unit
   - Advanced students begin next unit
   - Others finish mastery checks

━━━━━━━━━━━━━━━━━━━━━━━━━━

💡 NOTES & IDEAS

Lesson Observations:
• Students struggled with alternate interior angles initially - add more scaffolding next year
• Triangle Angle Sum proof went really well - most students got it!
• Transformation warm-up was effective - keep this!

Student Highlights:
• Jamie created an excellent challenge problem - share with class
• Chris excellent peer teaching with 3 classmates - award extra credit
• Morgan working 2 lessons ahead - provide enrichment

Next Time:
• Create more visual aids for angle relationships
• Add video explanation for same-side interior angles
• Consider flipping Activity 3 (make it pre-lesson homework?)

━━━━━━━━━━━━━━━━━━━━━━━━━━

📧 PARENT COMMUNICATIONS

This Week's Updates:

□ Send weekly progress update (Friday)
□ Contact Taylor's parents (absence)
□ Share success story with Jordan's parents

Template: [Weekly Parent Update Email]

━━━━━━━━━━━━━━━━━━━━━━━━━━

📈 METRICS & ANALYTICS

This Unit Performance:

Average Mastery Score: TBD
Mastery Rate (Score 75+): TBD
Average Time to Complete: 3.2 days
Revision Rate: TBD

Compare to Last Unit:
[Add comparison data]
```

**In Notion:**
- Use linked databases for all student lists
- Add filters and views
- Use board view for visual student progress
- Add buttons for common actions
- Color-code priority items

---

## Template 5: Unit Overview Page

```
📚 Unit: Angles and Proof

Status: 🔄 In Progress
Start Date: November 15, 2025
Target Completion: November 22, 2025

━━━━━━━━━━━━━━━━━━━━━━━━━━

🎯 UNIT OVERVIEW

In this unit, you'll prove fundamental theorems about angles in triangles and with parallel lines cut by transversals.

By the end of this unit, you will:
• Prove the Triangle Angle Sum Theorem using multiple methods
• Use transformations as a proof tool
• Identify and prove angle relationships with transversals
• Apply multiple theorems to solve complex problems
• Write clear, justified mathematical proofs

━━━━━━━━━━━━━━━━━━━━━━━━━━

📖 LESSONS

┌────────────────────────────────────────┐
│ LESSON 1: One Hundred Eighty           │
│ Status: ✅ Complete (most students)    │
└────────────────────────────────────────┘

Focus: Triangle Angle Sum Theorem
Time: 50 minutes
Completion: 25/28 students

[Go to Lesson 1 →]


┌────────────────────────────────────────┐
│ LESSON 2: Transformations, Transversals│
│ Status: 🔄 In Progress                 │
└────────────────────────────────────────┘

Focus: Angle relationships with parallel lines
Time: 50 minutes
Completion: 18/28 students

[Go to Lesson 2 →]

━━━━━━━━━━━━━━━━━━━━━━━━━━

✅ MASTERY CHECK

Available After: Completing both lessons
Time Allowed: 40 minutes
Points: 85
Passing Score: 55 (Developing), 65 (Proficient), 75 (Mastery)

How to Access:
1. Complete both lessons
2. Tag yourself as ready in Git
3. Teacher reviews your work
4. Teacher grants access
5. Take the check when ready!

Revision Policy:
• Can revise for higher score
• See feedback for areas to improve
• Review, then resubmit

[View Mastery Check Info →]

━━━━━━━━━━━━━━━━━━━━━━━━━━

📚 RESOURCES

Reference Materials:
• [Unit Reference Chart]
• [Theorem Summary]
• [Formula Sheet]

Extra Practice:
• [Practice Problem Set 1: Triangles]
• [Practice Problem Set 2: Transversals]
• [Mixed Review Problems]

Videos:
• [Triangle Angle Sum Explanation]
• [Transversal Angle Relationships]
• [Complex Problem Walkthroughs]

━━━━━━━━━━━━━━━━━━━━━━━━━━

🔑 KEY CONCEPTS

This unit covers:

Theorems:
• Triangle Angle Sum Theorem
• Alternate Interior Angles Theorem
• Corresponding Angles Theorem
• Same-Side Interior Angles Theorem

Skills:
• Writing formal proofs
• Using transformations in proofs
• Identifying angle relationships
• Multi-step problem solving

Vocabulary:
• Auxiliary line
• Transversal
• Alternate interior angles
• Corresponding angles
• Same-side interior angles
• Congruent
• Supplementary

━━━━━━━━━━━━━━━━━━━━━━━━━━

📊 MY PROGRESS

Personal Stats:
• Lesson 1: [Status]
• Lesson 2: [Status]
• Mastery Check: [Status]

[View My Detailed Progress →]

━━━━━━━━━━━━━━━━━━━━━━━━━━

➡️ WHAT'S NEXT?

After this unit:
• Unit: Congruent Triangles
• You'll use the theorems from this unit!
• Build on your proof-writing skills
```

**In Notion:**
- Use progress bars for completion stats
- Add linked database showing all students' progress on this unit
- Color-code lesson status
- Add icons for each section

---

## Template 6: Reference Chart

```
📐 Geometry Reference Chart

Your personal theorem & formula collection!

━━━━━━━━━━━━━━━━━━━━━━━━━━

📍 HOW TO USE THIS CHART

• Add to it after each lesson
• Include examples that make sense to YOU
• Use it for mastery checks (if teacher allows)
• Review it regularly
• Keep it updated!

━━━━━━━━━━━━━━━━━━━━━━━━━━

UNIT: ANGLES AND PROOF

┌─────────────────────────────────────┐
│ TRIANGLE ANGLE SUM THEOREM          │
└─────────────────────────────────────┘

Statement:
The sum of the measures of the angles in a triangle is 180°.

Formula:
m∠A + m∠B + m∠C = 180°

Proof Methods I Know:
1. Auxiliary line (parallel to one side)
   - Use alternate interior angles
   - Angles form straight line at vertex

2. Paper folding
   - Fold triangle corners to one vertex
   - Form straight line (180°)

3. Rotation
   - Rotate triangle
   - Angles fit together to form straight line

When to Use:
• Finding missing angle when two are known
• Checking if three angles can form a triangle
• Proving other angle relationships

Example:
Given: △ABC with ∠A = 52°, ∠B = 67°
Find: ∠C

Solution:
52° + 67° + ∠C = 180°
119° + ∠C = 180°
∠C = 61°

My Tip:
Always check your answer! The three angles should add to 180°.


┌─────────────────────────────────────┐
│ TRANSVERSAL ANGLE RELATIONSHIPS     │
└─────────────────────────────────────┘

When parallel lines are cut by a transversal:

╔══════════════════════╦═══════════════╦═══════════╗
║ Angle Pair           ║ Relationship  ║ Pattern   ║
╠══════════════════════╬═══════════════╬═══════════╣
║ Alternate Interior   ║ Congruent     ║ Z shape   ║
║ Corresponding        ║ Congruent     ║ F shape   ║
║ Same-Side Interior   ║ Supplementary ║ C shape   ║
╚══════════════════════╩═══════════════╩═══════════╝

Alternate Interior Angles:
• Opposite sides of transversal
• Between the parallel lines
• Equal measures
• Example: If ∠3 = 110°, then its alternate interior angle = 110°

Corresponding Angles:
• Same side of transversal
• One inside, one outside parallel lines
• Equal measures
• Example: If ∠1 = 75°, then its corresponding angle = 75°

Same-Side Interior Angles:
• Same side of transversal
• Between the parallel lines
• Sum to 180° (supplementary)
• Example: If ∠3 = 110°, then its same-side interior angle = 70°

My Diagram:
[Add your own diagram with labeled angles]

My Tip:
Look for the pattern shapes - Z, F, or C!


┌─────────────────────────────────────┐
│ PROBLEM-SOLVING STRATEGIES          │
└─────────────────────────────────────┘

When I see a triangle with missing angles:
1. Check what I know
2. Use Triangle Angle Sum: sum = 180°
3. Set up equation
4. Solve for unknown
5. Check answer

When I see parallel lines and a transversal:
1. Identify which angle pair it is
2. Choose correct theorem:
   - Z pattern → alternate interior (equal)
   - F pattern → corresponding (equal)
   - C pattern → same-side interior (sum to 180°)
3. Set up equation
4. Solve
5. Check answer

When I see BOTH (triangle AND parallel lines):
1. Use transversal theorems to find some angles
2. Use Triangle Angle Sum to find triangle angles
3. Work step-by-step
4. Label everything as I go!

━━━━━━━━━━━━━━━━━━━━━━━━━━

📝 MY NOTES

Common Mistakes I Make:
• [Add your common errors]
• [What to watch out for]

Things I Always Remember:
• [Your personal mnemonics]
• [Helpful tricks]

Questions I Still Have:
• [Add questions for teacher]

━━━━━━━━━━━━━━━━━━━━━━━━━━

🔄 KEEP UPDATING!

After each lesson, add:
• New theorems
• Examples that helped you
• Personal strategies
• Mistakes to avoid

This is YOUR study guide!
```

**In Notion:**
- Use tables for organized information
- Add toggle blocks for each theorem (hide details when not needed)
- Add your own diagrams (draw and upload images)
- Use different colors for different theorem types
- Add links to related lessons

---

## Quick Tips for Notion Formatting

### Useful Notion Commands:

- `/heading` - Create heading (1, 2, or 3)
- `/todo` - Checklist
- `/code` - Code block (for Git commands)
- `/callout` - Highlighted box
- `/toggle` - Collapsible section
- `/divider` - Horizontal line
- `/table` - Create table
- `/database` - Create database
- `/link` - Link to another Notion page

### Color Coding:

- **Red/Pink:** Urgent, important deadlines
- **Orange:** Warnings, need attention
- **Yellow:** In progress
- **Green:** Complete, success
- **Blue:** Information, resources
- **Purple:** Extra credit, extensions
- **Gray:** Not started, archived

### Icons:

- 📐 Geometry/Math
- ✅ Complete
- 🔄 In Progress
- ⏳ Waiting/Upcoming
- ⚠️ Important/Warning
- 💡 Tips/Ideas
- 📊 Data/Progress
- 🎯 Goals
- 📚 Resources
- 💬 Communication

---

**Copy these templates into Notion and customize for your class!**

**Last Updated:** 2025-11-16
