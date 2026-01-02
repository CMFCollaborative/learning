# Learning Pathway Tracker - Implementation Guide

## Table of Contents
1. [Google Classroom Implementation](#google-classroom-implementation)
2. [Notion Implementation](#notion-implementation)
3. [Customizing for Different Subjects](#customizing-for-different-subjects)
4. [Troubleshooting](#troubleshooting)

---

## Google Classroom Implementation

### Method 1: Individual Student HTML Files (Recommended for Google Classroom)

#### Step 1: Generate Student Files
1. Open the Learning Pathway Tracker
2. Click **"Teacher Dashboard"**
3. Add all your student names using the input field
4. For each student, click **"Export HTML"**
5. Save the files in a folder (e.g., `Geometry-Pathways/`)

#### Step 2: Upload to Google Classroom

**Option A: As Assignment**
1. Go to your Google Classroom course
2. Click **Classwork** → **Create** → **Assignment**
3. Title: "Learning Pathway Tracker - Systems of Equations"
4. Instructions:
   ```
   Download your personalized Learning Pathway file below.
   
   HOW TO USE:
   1. Download the HTML file
   2. Double-click to open in your browser
   3. Click boxes to mark lessons complete as you finish them
   4. Your progress saves automatically in your browser
   5. Submit a screenshot when you reach 100%
   
   Keep this file - your progress will be saved each time you use it!
   ```
5. Under **Add**, click **Upload** and select student files
6. **Important:** Use "Individual students" distribution
7. Assign each student their specific HTML file
8. Set due date (optional)
9. Click **Assign**

**Option B: As Material (Self-Paced)**
1. Go to **Classwork** → **Create** → **Material**
2. Title: "Learning Pathway Tracker"
3. Upload all HTML files
4. Students download their own file by name

#### Step 3: Student Instructions (Share with Students)

Create a Google Doc with these instructions:

```markdown
# How to Use Your Learning Pathway Tracker

## First Time Setup
1. Download your HTML file from Google Classroom
2. Move it to a folder you can find easily (like "My Documents" or "Desktop")
3. Double-click the file - it will open in your web browser
4. Bookmark the page so you can find it easily

## Daily Use
1. Open the file (double-click or use your bookmark)
2. Click on any lesson box when you complete it
3. Watch your progress percentage increase!
4. Your progress saves automatically

## Tips
- Keep the file in the same location - don't move it or rename it
- Your progress stays even if you close your browser
- If using a school computer, make sure you're logged in to save progress
- Works on ANY device with a web browser (laptop, tablet, phone)

## Getting Help
- Lost your file? Download it again from Google Classroom
- Progress not saving? Make sure you're using the same computer/browser
- Questions? Ask Coach Tacks!
```

#### Step 4: Tracking Student Progress

**Method 1: Self-Reporting**
- Students submit screenshots at milestones (25%, 50%, 75%, 100%)
- Use Google Forms for quick check-ins

**Method 2: Weekly Check-ins**
- During class, have students open their tracker
- Walk around and visually check progress
- Update your gradebook/Notion database

**Method 3: Progress Report Submissions**
- Students submit their HTML file periodically
- You can open them to see their checked items
- (Progress is stored in the HTML file itself)

---

## Notion Implementation

### Method 1: Embedded Web App (Centralized Tracking)

This method hosts ONE version that all students access, with centralized progress tracking.

#### Step 1: Host the Application

**Using Replit (Easiest - Free)**

1. Go to [replit.com](https://rep
lit.com)
2. Click **Create Repl**
3. Choose **HTML, CSS, JS**
4. Name it: `learning-pathway-tracker`
5. Delete the default code in `index.html`
6. Copy the ENTIRE Learning Pathway Tracker code:
   - Go back to Claude
   - Click the download button on the artifact
   - Copy ALL the code
7. Paste it into Replit's `index.html`
8. Click **Run**
9. Copy the preview URL (looks like: `https://learning-pathway-tracker.username.repl.co`)

**Alternative: Netlify Drop (Even Easier)**

1. Go to [app.netlify.com/drop](https://app.netlify.com/drop)
2. Save the Learning Pathway as `index.html` on your computer
3. Drag and drop the file into Netlify
4. Copy the generated URL

#### Step 2: Create Notion Database Structure

**Option A: Simple Student Tracker**

1. Create a new page in Notion: **"Student Learning Pathways"**
2. Type `/database` and select **Table - Inline**
3. Create these columns:
   - **Student Name** (Title)
   - **Period** (Select: 1, 2, 3, 4, etc.)
   - **Subject** (Select: Geometry, Physics, Algebra)
   - **Pathway Link** (URL)
   - **Last Updated** (Date)
   - **Notes** (Text)

4. For each student, create a row:
   - Enter student name
   - Paste the Replit URL in "Pathway Link"
   - Add `?student=StudentName` to the end (future enhancement)

**Option B: Integrated with Existing Student Database**

If you already have a student database:

1. Open your existing student database
2. Add a new property: **Learning Pathway** (URL type)
3. Paste the Replit URL for each student
4. Create a linked database view filtered by current unit

#### Step 3: Embed in Student Pages

**For Individual Student Pages:**

1. Open a student's Notion page
2. Type `/embed`
3. Paste your Replit URL
4. Click **Embed link**
5. Resize the embed to full width
6. (Optional) Add a heading: "## 📊 My Learning Pathway"

**For Class Dashboard:**

1. Create a page: **"Class Pathways Dashboard"**
2. Type `/embed` and paste Replit URL
3. Add instructions above the embed:

```markdown
## 🎯 How to Use This Tracker

**Students:**
1. Find your name in the list
2. Click to open your pathway
3. Mark lessons complete as you finish them
4. Track your progress percentage

**Check with Coach Tacks if you don't see your name!**
```

#### Step 4: Student Workflow

**First Time:**
1. Student opens their Notion page (or class dashboard)
2. Clicks their name from the list
3. Sees their personalized pathway
4. Clicks lesson boxes to mark complete

**Daily Use:**
1. Open Notion page
2. Tracker loads with saved progress
3. Continue marking lessons complete
4. Progress persists across sessions

---

### Method 2: Notion-Hosted Static Files (Alternative)

If you prefer to keep everything in Notion without external hosting:

#### Step 1: Prepare Files
1. Export individual HTML files (like Google Classroom method)
2. Upload them to Google Drive or Dropbox
3. Get shareable links for each file

#### Step 2: Add to Notion
1. In your student database, add a **File** property
2. Upload the HTML file directly to Notion
3. Students can download and use locally

---

## Customizing for Different Subjects

### Quick Subject Swap

The current tracker is set up for **Geometry - Systems of Equations**. Here's how to adapt it:

#### Example 1: Physics - Kinematics Unit

**Modify the lessons object in the code:**

```javascript
const lessons = {
  start: { title: 'Start', subtitle: 'Intro to Motion', color: 'red' },
  prc1: { title: 'PRC1', subtitle: 'Distance-Time Graphs', color: 'darkblue' },
  prc2: { title: 'PRC2', subtitle: 'Velocity Calculations', color: 'teal' },
  prc3: { title: 'PRC3', subtitle: 'Vector Components', color: 'blue' },
  
  l1_main: { title: 'Lesson 1', subtitle: 'Position and Displacement', color: 'red' },
  l1_notes: { title: 'Lesson 1', subtitle: 'Guided Notes', color: 'blue' },
  l1_skills: { title: 'Lesson 1', subtitle: 'Practice Problems', color: 'orange' },
  l1_assess: { title: 'Lesson 1', subtitle: 'Assessment', color: 'teal' },
  
  l2_main: { title: 'Lesson 2', subtitle: 'Velocity and Speed', color: 'red' },
  l2_notes: { title: 'Lesson 2', subtitle: 'Guided Notes', color: 'teal' },
  l2_skills: { title: 'Lesson 2', subtitle: 'Practice Problems', color: 'orange' },
  l2_assess: { title: 'Lesson 2', subtitle: 'Assessment', color: 'teal' },
  
  // ... continue pattern
  
  unit: { title: 'Unit Test', subtitle: 'Kinematics Assessment', color: 'red' }
};
```

**Update the subject name:**
```javascript
const [subject, setSubject] = useState('PHYSICS');
```

**Update title in student view:**
```javascript
<h1>[PHYSICS][Kinematics]: Learning Pathway</h1>
```

#### Example 2: Algebra - Quadratic Functions

```javascript
const lessons = {
  start: { title: 'Start', subtitle: 'Intro to Quadratics', color: 'red' },
  prc1: { title: 'PRC1', subtitle: 'Perfect Square Trinomials', color: 'darkblue' },
  prc2: { title: 'PRC2', subtitle: 'Factoring Review', color: 'teal' },
  
  l1_main: { title: 'Lesson 1', subtitle: 'Graphing Parabolas', color: 'red' },
  l1_notes: { title: 'Lesson 1', subtitle: 'Vertex Form Notes', color: 'blue' },
  l1_skills: { title: 'Lesson 1', subtitle: 'Graphing Practice', color: 'orange' },
  l1_assess: { title: 'Lesson 1', subtitle: 'Graphing Quiz', color: 'teal' },
  
  l2_main: { title: 'Lesson 2', subtitle: 'Solving by Factoring', color: 'red' },
  // ... etc
};
```

### Creating Multiple Unit Trackers

**Organization Strategy:**

1. **By Subject Folder:**
   ```
   Learning-Pathways/
   ├── Geometry/
   │   ├── Unit-1-Systems-tracker.html
   │   ├── Unit-2-Triangles-tracker.html
   │   └── Unit-3-Circles-tracker.html
   ├── Physics/
   │   ├── Unit-1-Kinematics-tracker.html
   │   └── Unit-2-Forces-tracker.html
   └── Algebra/
       └── Unit-1-Quadratics-tracker.html
   ```

2. **Notion Setup:**
   - Create a "Units" database
   - Link trackers to each unit
   - Students access current unit tracker

3. **Google Classroom Setup:**
   - Create separate assignments per unit
   - Students download new tracker each unit
   - Archive old trackers in a "Completed Units" folder

---

## Troubleshooting

### Common Issues

#### **Progress Not Saving**

**Problem:** Student clicks boxes but progress disappears when they reload

**Solutions:**
- Ensure they're using the same browser
- Check if browser cookies/localStorage are enabled
- School computers: Make sure student is logged into their account
- Try a different browser (Chrome recommended)

#### **File Won't Open**

**Problem:** Double-clicking HTML file doesn't open in browser

**Solutions:**
- Right-click → Open With → Chrome (or preferred browser)
- On Chromebook: Upload to Google Drive, then open
- Check file extension is `.html` not `.txt`

#### **Student Can't Find Their Name**

**Problem:** Student name missing from login screen

**Solutions:**
- Teacher needs to add student in Teacher Dashboard first
- Export new HTML file with updated student list
- Re-upload to Google Classroom

#### **Notion Embed Not Loading**

**Problem:** Embedded tracker shows blank or error

**Solutions:**
- Check Replit is still running (free tier sleeps after inactivity)
- Refresh the Replit page to wake it up
- Verify embed URL is correct
- Try using Netlify instead (doesn't sleep)

#### **Multiple Students, Same Computer**

**Problem:** Students share a computer and overwrite each other's progress

**Solutions:**
- Use the Google Classroom method (separate files)
- Or: Have students use different browsers
- Or: Implement user profiles (ask me to add this feature!)

### Getting More Help

**Need Custom Modifications?**
- Different lesson structure
- More/fewer lessons
- Color scheme changes
- Additional features

Just ask Coach Tacks (that's you!) or ask Claude to modify the code!

---

## Quick Start Checklist

### For Google Classroom:
- [ ] Open Teacher Dashboard
- [ ] Add all student names
- [ ] Export HTML file for each student
- [ ] Create Google Classroom assignment
- [ ] Upload files (assign individually)
- [ ] Share student instructions
- [ ] Test with one student first

### For Notion:
- [ ] Create Replit account
- [ ] Upload and host tracker code
- [ ] Copy Replit URL
- [ ] Create/update Notion student database
- [ ] Add URL to student pages
- [ ] Test embed on one student page
- [ ] Roll out to all students
- [ ] Train students on usage

---

## Pro Tips

1. **Start Small:** Test with one class/unit before rolling out everywhere
2. **Student Buy-In:** Show them the cool progress percentage!
3. **Weekly Checks:** Make pathway review part of class routine
4. **Celebrate Milestones:** Recognize students at 50%, 75%, 100%
5. **Backup:** Export CSV from Teacher Dashboard weekly
6. **Version Control:** Keep old versions when creating new units
7. **Student Ownership:** Let them customize their pathway view (future feature!)

---

**Questions? Find something unclear? Let me know and I'll update this guide!**