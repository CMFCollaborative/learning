# Notion Quick Start Guide
## Get Your Classroom Dashboard Running in 2 Hours

---

## Time Investment

**Total: 2 hours (one-time setup)**
- Hour 1: Create basic structure
- Hour 2: Add content and customize

**After setup: 10 minutes/day** to update

---

## Hour 1: Basic Structure (60 minutes)

### Step 1: Create Workspace (5 min)

1. Go to notion.so
2. Click "Get Notion free"
3. Sign up with your school email
4. Create workspace: "[Your Class Name]"
5. Choose "Education" template (optional starting point)

### Step 2: Create Homepage (15 min)

1. Create new page (click "+ New page" in sidebar)
2. Title: "🏠 Geometry - Period 3" (or your class)
3. Copy content from **NOTION_PAGE_TEMPLATES.md** → Template 1
4. Paste into Notion
5. Customize:
   - Add your GitHub repo URL
   - Update current unit
   - Add your announcements

**Result:** Students land here and see everything they need!

### Step 3: Create First Unit Page (15 min)

1. Create new page under homepage
2. Title: "📚 Unit: Angles and Proof"
3. Copy content from **NOTION_PAGE_TEMPLATES.md** → Template 5
4. Paste and customize
5. Add links to your lesson pages (you'll create next)

**Result:** Unit overview ready!

### Step 4: Create First Lesson Page (20 min)

1. Create new page under unit page
2. Title: "📐 Lesson: One Hundred Eighty"
3. Copy content from **NOTION_PAGE_TEMPLATES.md** → Template 2
4. Paste and customize:
   - Update file names if different
   - Add your GitHub paths
   - Customize timing if needed

**Result:** Complete lesson guide ready for students!

### Step 5: Share with Students (5 min)

1. Click "Share" button (top right)
2. Choose sharing option:
   - **Option A:** Invite students by email (they need Notion accounts - free for education)
   - **Option B:** Create shareable link (anyone with link can view)
3. Set permissions: "Can view" (or "Can comment" if you want feedback)
4. Share link with students (email, Google Classroom, etc.)

---

## Hour 2: Add Functionality (60 minutes)

### Step 6: Create Progress Tracker Database (30 min)

This is the powerful part!

1. **On homepage, create database:**
   - Type `/database`
   - Choose "Table - Full page"
   - Title: "Student Progress Tracker"

2. **Add properties (columns):**

   Click "+ Add a property" for each:

   | Property Name | Type | Options |
   |--------------|------|---------|
   | Student Name | Title | (default) |
   | Lesson 1 Status | Select | Not Started, In Progress, Complete |
   | Lesson 1 Date | Date | |
   | Lesson 2 Status | Select | Not Started, In Progress, Complete |
   | Lesson 2 Date | Date | |
   | Mastery Ready | Checkbox | |
   | Mastery Score | Number | |
   | Last Commit | Date | |
   | GitHub Link | URL | |

3. **Add your students:**
   - Click "+ New" for each student
   - Fill in Student Name
   - Leave rest blank for now
   - Add GitHub link (link to their branch/folder in your repo)

4. **Create views:**

   **View 1: Board by Status**
   - Click "..." menu → Add view → Board
   - Group by: Lesson 1 Status
   - Name: "Lesson 1 Progress Board"

   **View 2: Mastery Check Queue**
   - Click "..." menu → Add view → Table
   - Filter: Mastery Ready = Checked
   - Name: "Ready for Mastery"

   **View 3: Grading Queue**
   - Add view → Table
   - Filter: Mastery Score is empty
   - Name: "To Grade"

**Result:** Visual student progress tracking!

### Step 7: Create Student Dashboards (20 min for setup, then 2 min per student)

**Create template (once):**
1. Create new page under homepage
2. Title: "TEMPLATE - Student Dashboard"
3. Copy content from **NOTION_PAGE_TEMPLATES.md** → Template 3
4. Paste and customize
5. Mark as template (click "..." → Turn into template)

**Create for each student:**
1. Duplicate template
2. Rename with student's name
3. Link to their row in Progress Tracker
4. Add their GitHub link

**Faster method:**
- Create 3-5 student dashboards to start
- Create rest during prep period or after school
- OR students can create their own from template!

### Step 8: Create Teacher Dashboard (10 min)

1. Create new page (this is JUST for you)
2. Title: "👨‍🏫 Teacher Dashboard"
3. Copy content from **NOTION_PAGE_TEMPLATES.md** → Template 4
4. Paste and customize
5. Embed your Progress Tracker database (type `/linked database` → choose your tracker)
6. Set to private (Share → Restrict to "Only you")

**Result:** Your command center!

---

## Daily Usage (10 minutes/day)

### Morning Routine (5 min)

1. Open Teacher Dashboard
2. Check who completed lessons yesterday (in Git)
3. Update Progress Tracker:
   - Mark lessons complete
   - Add completion dates
   - Check mastery ready boxes
4. Plan who to check on today

### After Class (5 min)

1. Check Git for new completions:
   ```bash
   git tag -l "lesson-*-complete-*"
   git tag -l "mastery-*-ready"
   ```

2. Update Notion Progress Tracker
3. Grant mastery check access if needed (in Git)
4. Add notes to student dashboards

---

## Week 1: Student Onboarding

### Day 1: Introduce Notion

**Show students (10 min):**
1. Here's our Notion workspace
2. This is the homepage - bookmark it!
3. Click on lessons to see instructions
4. Git commands are in Notion - copy and paste them
5. You can see your progress here

**Practice:**
- Have students navigate to first lesson
- Find the Git commands
- Ask questions

### Day 2-5: Reinforce Workflow

**Each day, remind:**
1. Check Notion for today's lesson
2. Follow the instructions
3. Use Git commands from Notion
4. Commit your work

**By end of week:**
- Students automatically check Notion first
- Workflow becomes habit

---

## Tips for Success

### Do's:

✅ **Keep it simple at first**
   - Start with homepage + lesson pages
   - Add complexity as you're comfortable

✅ **Use templates**
   - Copy the templates provided
   - Customize don't create from scratch

✅ **Update regularly**
   - 10 min/day keeps it current
   - Better than batch updates weekly

✅ **Let students help**
   - Advanced students can help peers navigate Notion
   - Students can update their own dashboards

✅ **Use mobile app**
   - Update from your phone
   - Quick checks between classes

### Don'ts:

❌ **Don't try to automate everything at first**
   - Manual updates are fine to start
   - Automate later if needed

❌ **Don't make it too complex**
   - Students should find it helpful, not overwhelming
   - Simple > complicated

❌ **Don't abandon Git**
   - Notion is the front-end, Git is the engine
   - Both work together!

❌ **Don't stress about perfection**
   - Iterate and improve as you go
   - Students are forgiving!

---

## Troubleshooting

### "Students can't access Notion"

**Solutions:**
- Use shareable link instead of email invites
- Check school firewall isn't blocking notion.so
- Students can access from personal devices/home

### "Too time-consuming to update"

**Solutions:**
- Update once per day, not real-time
- Only track key metrics (lesson completion, mastery status)
- Skip detailed notes if time is short

### "Students prefer just Git"

**That's okay!**
- Notion is optional
- Some students will only use Git
- Make Notion available, don't force it

### "I want to try automation"

**Options:**
- Zapier (has Notion + GitHub integration)
- Make (formerly Integromat)
- GitHub Actions + Notion API
- See NOTION_INTEGRATION_GUIDE.md for details

---

## What Students See

### Their Experience:

**Monday Morning:**
1. Open Notion on phone (on bus to school)
2. See: "Today: Lesson 1 - One Hundred Eighty"
3. Read overview and goals
4. Get to class, open laptop
5. Follow Git commands from Notion lesson page
6. Do work in markdown files
7. Commit using commands from Notion
8. Check "Done!" and move on

**Simple for them:**
- One place to check (Notion) → What to do
- Simple commands (Git) → How to submit
- Visual progress (Notion) → Where they are

---

## What You See

### Your Experience:

**Planning:**
- Notion: Organize units and lessons
- Clean, visual interface
- Easy to update and rearrange

**Monitoring:**
- Git: Detailed student work and progress
- Notion: High-level overview
- Quick glance shows class status

**Grading:**
- Git: Read actual student work
- Notion: Record scores and track completion
- Both: Provide feedback

**Communication:**
- Notion: Announcements, resources, dashboards
- Students check one place
- You update one place

---

## Checklist: Is My Notion Ready?

Before sharing with students:

- [ ] Homepage created with welcome message
- [ ] At least one unit page ready
- [ ] At least one lesson page ready with Git instructions
- [ ] Progress Tracker database created
- [ ] Students added to Progress Tracker
- [ ] Sharing settings configured
- [ ] Shareable link copied (to share with students)
- [ ] Tested on student account (or asked colleague to test)
- [ ] Teacher Dashboard created (private)
- [ ] Reference chart template ready (optional)

**If all checked → You're ready to launch!**

---

## Next Steps

### This Week:
- [ ] Hour 1: Set up basic structure
- [ ] Hour 2: Add progress tracker
- [ ] Share with students
- [ ] Teach students to use it

### Next Week:
- [ ] Refine based on student feedback
- [ ] Add student dashboards
- [ ] Build out second unit

### This Month:
- [ ] Full unit structure complete
- [ ] Workflow running smoothly
- [ ] Consider automation if helpful

---

## Resources

**In This Repository:**
- `NOTION_INTEGRATION_GUIDE.md` - Complete integration guide
- `NOTION_PAGE_TEMPLATES.md` - Copy-paste templates
- `NOTION_QUICK_START.md` - This file!

**Notion Resources:**
- notion.so/help - Official help docs
- notion.so/templates - Template gallery
- YouTube: "Notion for teachers" tutorials

**GitHub + Notion:**
- github.com/integrations/notion - Official integration info
- Zapier.com - Automation platform
- Make.com - Automation platform

---

**You can do this! Two hours and you'll have a beautiful classroom dashboard.**

**Last Updated:** 2025-11-16
