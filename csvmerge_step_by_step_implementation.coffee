```markdown
# Generic CSV Merge - Step-by-Step Implementation Guide

This guide walks you through implementing the generic CSV merge workflow for ANY project.

---

## Table of Contents

1. [Overview](#overview)
2. [Understanding the Concepts](#understanding-the-concepts)
3. [Pre-Implementation Checklist](#pre-implementation-checklist)
4. [Step-by-Step Implementation](#step-by-step-implementation)
5. [Configuration Deep Dive](#configuration-deep-dive)
6. [Common Use Cases](#common-use-cases)
7. [Testing Your Setup](#testing-your-setup)
8. [Troubleshooting](#troubleshooting)
9. [Advanced Customization](#advanced-customization)

---

## Overview

### What This Tool Does

Merges two CSV files based on a common identifier (merge key) while intelligently preserving unique columns from both sources.

### When to Use This

- Syncing data between two systems
- Updating records with new data while preserving custom fields
- Combining exports from different sources
- Automating repetitive copy/paste workflows

### Real-World Examples

- **Gradebook + Notion**: Merge grades from LMS with custom feedback/notes in Notion
- **CRM + Spreadsheet**: Update customer records with new data while preserving internal notes
- **Inventory Systems**: Sync stock levels while keeping purchase history
- **HR Systems**: Update employee data while preserving performance reviews
- **E-commerce**: Merge product data from suppliers with custom descriptions

---

## Understanding the Concepts

### Key Terminology

| Term | Definition | Example |
|------|------------|---------|
| **Source CSV** | The new/updated data you want to merge in | Gradebook export, API data dump |
| **Target CSV** | Your existing data with custom columns | Notion export, your master spreadsheet |
| **Merge Key** | Column used to match records | Email, ID, SKU, username |
| **Column Mapping** | Maps different column names | "Student Email" → "Email" |
| **Target-Only Columns** | Columns to preserve from target | Feedback, Notes, Custom Tags |

### How the Merge Works

```
SOURCE CSV (New Data)          TARGET CSV (Existing Data)
┌─────────────────────┐       ┌─────────────────────────────┐
│ ID  │ Name  │ Score │       │ ID  │ Name  │ Score │ Notes │
├─────┼───────┼───────┤       ├─────┼───────┼───────┼───────┤
│ 001 │ Alice │ 95    │       │ 001 │ Alice │ 90    │ Great!│
│ 002 │ Bob   │ 87    │       │ 003 │ Carol │ 92    │ Good  │
└─────────────────────┘       └─────────────────────────────┘
          ↓                              ↓
          └──────────── MERGE ───────────┘
                         ↓
         MERGED CSV (Result)
┌──────────────────────────────────┐
│ ID  │ Name  │ Score │ Notes      │
├─────┼───────┼───────┼────────────┤
│ 001 │ Alice │ 95    │ Great!     │  ← Updated score, kept notes
│ 002 │ Bob   │ 87    │            │  ← New from source
│ 003 │ Carol │ 92    │ Good       │  ← Preserved from target
└──────────────────────────────────┘
```

**Merge Logic:**
1. **Record 001 (Alice)**: Exists in both → Update score to 95, keep "Great!" notes
2. **Record 002 (Bob)**: Only in source → Add as new record, empty notes
3. **Record 003 (Carol)**: Only in target → Preserve unchanged

---

## Pre-Implementation Checklist

Before you start, gather this information:

### ✅ Data Analysis

- [ ] **Source CSV location**: Where is your new data coming from?
- [ ] **Target CSV location**: Where is your existing data?
- [ ] **Merge key identified**: What column uniquely identifies each record?
- [ ] **Column names mapped**: Do column names differ between files?
- [ ] **Target-only columns listed**: What columns should be preserved?

### ✅ Technical Setup

- [ ] Python 3.7+ OR Node.js 14+ installed
- [ ] Access to both CSV files
- [ ] Write permissions for output location
- [ ] Backup plan for existing data

### ✅ Sample Data

- [ ] Have 5-10 sample records from each CSV
- [ ] Sample records include both matching and non-matching IDs
- [ ] Sample data covers edge cases (missing values, special characters)

---

## Step-by-Step Implementation

### Step 1: Analyze Your CSV Files

**Goal**: Understand the structure of both CSV files.

#### 1.1 Export Sample Data

Export a few records (5-10) from both your source and target systems.

**Example filenames:**
- `source_sample.csv`
- `target_sample.csv`

#### 1.2 Identify Columns

Open each CSV in a text editor or spreadsheet app and list all columns.

**Example - Source CSV (from external system):**
```csv
StudentID,StudentEmail,StudentName,AssignmentTitle,ScoreValue,MaxPoints
001,alice@school.edu,Alice Smith,Quiz 1,95,100
002,bob@school.edu,Bob Johnson,Quiz 1,87,100
```

**Columns**: `StudentID, StudentEmail, StudentName, AssignmentTitle, ScoreValue, MaxPoints`

**Example - Target CSV (from Notion):**
```csv
ID,Email,Name,Assignment,Score,MaxScore,Feedback,Tags,Status
001,alice@school.edu,Alice Smith,Quiz 1,90,100,Great work!,Excellent,Graded
003,carol@school.edu,Carol Williams,Quiz 1,92,100,Good job,Good,Graded
```

**Columns**: `ID, Email, Name, Assignment, Score, MaxScore, Feedback, Tags, Status`

#### 1.3 Identify Merge Key

Choose a column that:
- Exists in BOTH files
- Uniquely identifies each record
- Has consistent formatting

**Common merge keys**:
- Email addresses
- User IDs
- Product SKUs
- Order numbers
- Student IDs

**For our example**: `Email` (exists as `StudentEmail` in source, `Email` in target)

#### 1.4 Map Column Names

Create a mapping for columns that have different names but contain the same data:

| Source Column | Target Column |
|---------------|---------------|
| StudentID | ID |
| StudentEmail | Email |
| StudentName | Name |
| AssignmentTitle | Assignment |
| ScoreValue | Score |
| MaxPoints | MaxScore |

#### 1.5 Identify Target-Only Columns

List columns that ONLY exist in your target CSV and should be preserved:

**For our example**: `Feedback, Tags, Status`

---

### Step 2: Setup the Tool

#### 2.1 Choose Your Language

**Python:**
```bash
cd 08_Generic_CSV_Merge_Template
python csv_merge.py --create-config
```

**Node.js:**
```bash
cd 08_Generic_CSV_Merge_Template
npm install csv-parse csv-stringify
node csv_merge.js --create-config
```

This creates `merge_config.json`.

#### 2.2 Verify Installation

**Python:**
```bash
python csv_merge.py --help
```

**Node.js:**
```bash
node csv_merge.js --help
```

You should see the help message.

---

### Step 3: Configure for Your Use Case

Edit `merge_config.json` with your specific settings.

#### 3.1 Basic Configuration

```json
{
  "merge_key": "Email",
  "source_file": "path/to/source_sample.csv",
  "target_file": "path/to/target_sample.csv",
  "output_file": "merged_output.csv",
  "create_backup": true
}
```

**Settings Explained:**
- `merge_key`: The column name (after mapping) used to match records
- `source_file`: Path to your new data CSV
- `target_file`: Path to your existing data CSV
- `output_file`: Where to save the merged result
- `create_backup`: Whether to backup target file before merging

#### 3.2 Add Column Mapping

Map source column names to target column names:

```json
{
  "column_mapping": {
    "StudentID": "ID",
    "StudentEmail": "Email",
    "StudentName": "Name",
    "AssignmentTitle": "Assignment",
    "ScoreValue": "Score",
    "MaxPoints": "MaxScore"
  }
}
```

**Rules:**
- Left side: Source CSV column name (as it appears in the file)
- Right side: Target CSV column name (what it should become)
- Only include columns that have DIFFERENT names
- Skip columns that already match

#### 3.3 List Target-Only Columns

Specify columns that exist ONLY in target CSV and should be preserved:

```json
{
  "target_only_columns": [
    "Feedback",
    "Tags",
    "Status"
  ]
}
```

**Important**: These columns will be preserved from target records and left empty for new records.

#### 3.4 Complete Example Configuration

```json
{
  "_comment": "Configuration for merging gradebook with Notion",
  "merge_key": "Email",
  "source_file": "gradebook_export.csv",
  "target_file": "notion_export.csv",
  "output_file": "merged_grades.csv",
  "create_backup": true,

  "column_mapping": {
    "StudentID": "ID",
    "StudentEmail": "Email",
    "StudentName": "Name",
    "AssignmentTitle": "Assignment",
    "ScoreValue": "Score",
    "MaxPoints": "MaxScore"
  },

  "source_columns": [
    "ID",
    "Email",
    "Name",
    "Assignment",
    "Score",
    "MaxScore"
  ],

  "target_only_columns": [
    "Feedback",
    "Tags",
    "Status"
  ]
}
```

---

### Step 4: Test with Sample Data

#### 4.1 Create Test CSV Files

Create small test files with known data:

**test_source.csv:**
```csv
StudentID,StudentEmail,StudentName,ScoreValue
001,alice@test.com,Alice Smith,95
002,bob@test.com,Bob Johnson,87
```

**test_target.csv:**
```csv
ID,Email,Name,Score,Feedback
001,alice@test.com,Alice Smith,90,Great work!
003,carol@test.com,Carol Williams,92,Excellent!
```

#### 4.2 Create Test Configuration

**test_config.json:**
```json
{
  "merge_key": "Email",
  "source_file": "test_source.csv",
  "target_file": "test_target.csv",
  "output_file": "test_output.csv",
  "create_backup": false,
  "column_mapping": {
    "StudentID": "ID",
    "StudentEmail": "Email",
    "StudentName": "Name",
    "ScoreValue": "Score"
  },
  "target_only_columns": ["Feedback"]
}
```

#### 4.3 Run Test Merge

```bash
# Python
python csv_merge.py --config test_config.json

# Node.js
node csv_merge.js --config test_config.json
```

#### 4.4 Verify Results

Open `test_output.csv` and verify:

**Expected Output:**
```csv
ID,Email,Name,Score,Feedback
001,alice@test.com,Alice Smith,95,Great work!
002,bob@test.com,Bob Johnson,87,
003,carol@test.com,Carol Williams,92,Excellent!
```

**Verify:**
- ✅ Alice's score updated from 90 to 95
- ✅ Alice's feedback preserved ("Great work!")
- ✅ Bob added as new record
- ✅ Bob's feedback is empty (new record)
- ✅ Carol preserved unchanged (not in source)
- ✅ Carol's feedback preserved ("Excellent!")

#### 4.5 Check Statistics

The output should show:
```
📊 Merge Statistics:
   ✓ Updated existing records: 1  (Alice)
   ✓ New records from source: 1   (Bob)
   ✓ Target-only records preserved: 1  (Carol)
   ✓ Total merged records: 3
```

---

### Step 5: Run Production Merge

Once testing succeeds:

#### 5.1 Update Configuration

Point to your actual CSV files:

```json
{
  "source_file": "path/to/actual_gradebook.csv",
  "target_file": "path/to/actual_notion_export.csv",
  "output_file": "production_merged.csv",
  "create_backup": true
}
```

#### 5.2 Export Fresh Data

1. Export latest data from your source system
2. Export latest data from your target system (Notion, etc.)
3. Place both files in the correct locations

#### 5.3 Run the Merge

```bash
# Python
python csv_merge.py --config merge_config.json

# Node.js
node csv_merge.js --config merge_config.json
```

#### 5.4 Review Output

1. Open the merged CSV file
2. Spot-check a few records
3. Verify statistics make sense
4. Check for any error messages

#### 5.5 Import to Target System

**For Notion:**
1. Open your Notion database
2. Click `···` → Import → CSV
3. Select your merged CSV
4. Choose "Merge with existing database"
5. Map columns if prompted
6. Import

**For other systems:**
- Follow your system's CSV import process
- Choose "merge" or "update" option (not "replace")

---

### Step 6: Automate (Optional)

#### 6.1 Create Automation Script

**bash_automation.sh:**
```bash
#!/bin/bash

# 1. Export from source system
# (Add your export command/API call here)

# 2. Export from target system
# (Add your export command/API call here)

# 3. Run merge
python csv_merge.py --config merge_config.json

# 4. Import to target system
# (Add your import command/API call here)

echo "Merge complete!"
```

#### 6.2 Schedule Regular Runs

**macOS/Linux (cron):**
```bash
# Run every day at 6 AM
0 6 * * * /path/to/bash_automation.sh
```

**Windows (Task Scheduler):**
- Create new task
- Set trigger (e.g., daily at 6 AM)
- Action: Run `python csv_merge.py --config merge_config.json`

---

## Configuration Deep Dive

### Understanding merge_key

The merge key is THE most important setting. It determines how records are matched.

**Requirements:**
- Must exist in BOTH source and target CSV (after column mapping)
- Must uniquely identify records
- Values must be consistent between files

**Good merge keys:**
```json
"merge_key": "email"        // Unique per person
"merge_key": "employee_id"  // Unique per employee
"merge_key": "sku"          // Unique per product
"merge_key": "order_number" // Unique per order
```

**Bad merge keys:**
```json
"merge_key": "name"         // Not unique (John Smith)
"merge_key": "status"       // Not unique (Active)
"merge_key": "category"     // Not unique
```

**Case Sensitivity:**
The tool normalizes keys (lowercase, trimmed) so these all match:
- `Alice@Example.com`
- `alice@example.com`
- ` alice@example.com ` (with spaces)

### Understanding column_mapping

Maps columns with different names but same data.

**Syntax:**
```json
"column_mapping": {
  "SourceColumnName": "TargetColumnName"
}
```

**When to use:**
- Source has "Student Email" → Target has "Email"
- Source has "Price" → Target has "Cost"
- Source has "SKU" → Target has "ProductCode"

**When NOT to use:**
- Both files have "Email" → Skip, already matches
- Column only exists in one file → Use target_only_columns instead

**Examples:**

**Scenario 1: Different names, same data**
```json
"column_mapping": {
  "FirstName": "first_name",
  "LastName": "last_name"
}
```

**Scenario 2: Concatenated columns**
If source has separate first/last names but target has "Full Name", you need to pre-process source CSV first, or map individually:
```json
"column_mapping": {
  "FullName": "Name"
}
```

### Understanding target_only_columns

Columns that exist ONLY in your target CSV and should be preserved.

**Examples:**

**Notion use case:**
```json
"target_only_columns": [
  "Feedback",
  "Tags",
  "Status",
  "Review Notes",
  "Revision Count"
]
```

**CRM use case:**
```json
"target_only_columns": [
  "Internal Notes",
  "Assigned Rep",
  "Last Contact Date",
  "Deal Stage"
]
```

**Product database use case:**
```json
"target_only_columns": [
  "Internal Category",
  "Supplier Notes",
  "Reorder Point",
  "Custom Description"
]
```

**What happens:**
- For updated records: These columns are preserved from target
- For new records: These columns are left empty

---

## Common Use Cases

### Use Case 1: E-commerce Product Sync

**Scenario**: Merge supplier product data with your custom descriptions and pricing.

**Source**: Supplier CSV
```csv
SKU,ProductName,WholesalePrice,Stock
ABC123,Widget Pro,19.99,500
XYZ789,Gadget Plus,29.99,200
```

**Target**: Your store database
```csv
SKU,Name,Cost,Inventory,RetailPrice,CustomDescription,Category
ABC123,Widget Pro,19.99,450,39.99,Premium quality widget,Electronics
DEF456,Old Product,9.99,10,19.99,Discontinued,Legacy
```

**Configuration:**
```json
{
  "merge_key": "SKU",
  "source_file": "supplier_catalog.csv",
  "target_file": "store_export.csv",
  "output_file": "updated_products.csv",
  "column_mapping": {
    "ProductName": "Name",
    "WholesalePrice": "Cost",
    "Stock": "Inventory"
  },
  "target_only_columns": [
    "RetailPrice",
    "CustomDescription",
    "Category"
  ]
}
```

**Result:**
- ABC123: Updated stock (500), kept custom description
- XYZ789: Added as new product, empty custom fields
- DEF456: Preserved (not in supplier catalog)

---

### Use Case 2: HR Employee Data Sync

**Scenario**: Update employee records from HR system while preserving manager notes.

**Source**: HR System
```csv
EmployeeID,FullName,Department,Salary,HireDate
E001,Alice Smith,Engineering,85000,2020-01-15
E002,Bob Johnson,Sales,75000,2019-06-20
```

**Target**: Manager spreadsheet
```csv
ID,Name,Dept,Salary,Performance,ManagerNotes,LastReview
E001,Alice Smith,Engineering,80000,Excellent,Strong performer,2024-12-01
E003,Carol Williams,Marketing,70000,Good,Needs training,2024-11-15
```

**Configuration:**
```json
{
  "merge_key": "ID",
  "source_file": "hr_export.csv",
  "target_file": "manager_records.csv",
  "output_file": "updated_employees.csv",
  "column_mapping": {
    "EmployeeID": "ID",
    "FullName": "Name",
    "Department": "Dept"
  },
  "target_only_columns": [
    "Performance",
    "ManagerNotes",
    "LastReview"
  ]
}
```

---

### Use Case 3: Customer Data from Multiple Sources

**Scenario**: Merge customer emails from marketing platform with CRM data.

**Source**: Email platform
```csv
EmailAddress,FirstName,LastName,SubscribeDate,EmailEngagement
alice@example.com,Alice,Smith,2024-01-01,High
bob@example.com,Bob,Johnson,2024-02-15,Medium
```

**Target**: CRM
```csv
Email,Name,EngagementScore,LastPurchase,LTV,Notes
alice@example.com,Alice Smith,0,2024-03-01,500,VIP customer
carol@example.com,Carol Williams,85,2024-04-01,1200,Loyal buyer
```

**Configuration:**
```json
{
  "merge_key": "Email",
  "source_file": "email_list.csv",
  "target_file": "crm_export.csv",
  "output_file": "unified_customers.csv",
  "column_mapping": {
    "EmailAddress": "Email",
    "EmailEngagement": "EngagementScore"
  },
  "target_only_columns": [
    "LastPurchase",
    "LTV",
    "Notes"
  ]
}
```

---

## Testing Your Setup

### Test Checklist

Run through these tests before production use:

#### ✅ Test 1: Matching Record Update
- [ ] Create source record with ID that exists in target
- [ ] Run merge
- [ ] Verify data updated from source
- [ ] Verify target-only columns preserved

#### ✅ Test 2: New Record Addition
- [ ] Create source record with ID that doesn't exist in target
- [ ] Run merge
- [ ] Verify record added to output
- [ ] Verify target-only columns are empty

#### ✅ Test 3: Target-Only Preservation
- [ ] Create target record with ID that doesn't exist in source
- [ ] Run merge
- [ ] Verify record preserved in output
- [ ] Verify all columns intact

#### ✅ Test 4: Column Mapping
- [ ] Use different column names in source
- [ ] Configure column_mapping
- [ ] Run merge
- [ ] Verify columns mapped correctly

#### ✅ Test 5: Missing Merge Key
- [ ] Create source record with empty merge key
- [ ] Run merge
- [ ] Verify error message appears
- [ ] Verify other records still merge

#### ✅ Test 6: Special Characters
- [ ] Test records with: commas, quotes, newlines
- [ ] Run merge
- [ ] Verify data integrity maintained

#### ✅ Test 7: Large Dataset
- [ ] Test with 1000+ records
- [ ] Run merge
- [ ] Verify performance acceptable
- [ ] Check memory usage

---

## Troubleshooting

### Issue: "Missing merge key in source row"

**Cause**: A row in your source CSV has an empty/missing merge key value.

**Solution:**
1. Open source CSV
2. Search

```