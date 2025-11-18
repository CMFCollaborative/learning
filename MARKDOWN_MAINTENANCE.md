# Markdown Maintenance Guide

## Overview

This repository uses **markdownlint-cli** to maintain consistent, high-quality markdown files.

## Quick Start

### Daily Workflow

```bash
# Check for lint errors
npm run lint:md:check

# Auto-fix most errors
npm run lint:md:fix

# Review changes
git diff

# Commit if satisfied
git add .
git commit -m "docs: fix markdown lint errors"
```

## Installation

Dependencies are already installed. If you need to reinstall:

```bash
npm install
```

## Available Commands

### Using npm scripts (Recommended)

```bash
# Check for errors (doesn't modify files)
npm run lint:md

# Check with helpful message
npm run lint:md:check

# Auto-fix errors (modifies files)
npm run lint:md:fix

# Clean all markdown files (alias for fix)
npm run clean:md
```

### Using shell scripts

```bash
# Check for errors
./scripts/check-markdown.sh

# Auto-fix errors
./scripts/fix-markdown.sh

# Setup pre-commit hook (optional)
./scripts/setup-pre-commit.sh
```

## Understanding Lint Errors

### Common Errors and Fixes

#### MD022 - Headings should be surrounded by blank lines

**Bad:**

```markdown
## Heading
Text immediately below
```

**Good:**

```markdown
## Heading

Text with blank line above
```

**Fix:** Auto-fixable ✅

---

#### MD013 - Line length

**Bad:**

```markdown
This is a very long line that exceeds the 120 character limit and needs to be broken up into multiple lines for better readability.
```

**Good:**

```markdown
This is a very long line that exceeds the 120 character limit and needs to be
broken up into multiple lines for better readability.
```

**Fix:** Manual ❌ (requires rewording)

---

#### MD040 - Fenced code blocks should have a language

**Bad:**

````markdown
```
code here
```
````

**Good:**

````markdown
```bash
code here
```
````

**Fix:** Manual ❌ (you need to specify the language)

**Common languages:** `bash`, `javascript`, `python`, `json`, `yaml`, `markdown`, `text`

---

#### MD032 - Lists should be surrounded by blank lines

**Bad:**

```markdown
Text before list
- Item 1
- Item 2
Text after list
```

**Good:**

```markdown
Text before list

- Item 1
- Item 2

Text after list
```

**Fix:** Auto-fixable ✅

---

#### MD009 - No trailing spaces

**Bad:**

```markdown
Line with trailing spaces
```

**Good:**

```markdown
Line without trailing spaces
```

**Fix:** Auto-fixable ✅

---

#### MD047 - Files should end with a single newline

**Fix:** Auto-fixable ✅

---

## Configuration

### .markdownlint.json

The configuration file is located at `.markdownlint.json`:

```json
{
  "default": true,
  "MD013": {
    "line_length": 120
  },
  "MD033": {
    "allowed_elements": ["details", "summary", "img", "br", "h2"]
  },
  "MD041": false,
  "MD034": false,
  "MD036": false
}
```

**What this means:**

- **default: true** - Enable all rules by default
- **MD013** - Line length limit set to 120 characters (relaxed from default 80)
- **MD033** - Allow specific HTML elements (for GitHub-flavored markdown)
- **MD041** - Disabled (allows files to start with elements other than h1)
- **MD034** - Disabled (allows bare URLs)
- **MD036** - Disabled (allows emphasis used instead of headings)

### Customizing Rules

To disable a rule, add it to `.markdownlint.json`:

```json
{
  "MD013": false
}
```

To configure a rule:

```json
{
  "MD013": {
    "line_length": 100,
    "heading_line_length": 120
  }
}
```

## Pre-commit Hook (Optional)

To automatically check markdown files before each commit:

```bash
./scripts/setup-pre-commit.sh
```

This will:

- Check all staged `.md` files before commit
- Block commits if lint errors are found
- Show helpful error messages

**Bypass the hook** (when needed):

```bash
git commit --no-verify
```

## Maintenance Schedule

### Recommended workflow

1. **Before committing:** Run `npm run lint:md:fix`
2. **Before pushing:** Run `npm run lint:md:check`
3. **Weekly:** Review and fix any remaining manual errors
4. **When adding new files:** Run linter on new markdown files

## Troubleshooting

### "markdownlint-cli is not installed"

```bash
npm install
```

### "I want to ignore a specific rule for one line"

Add a comment above the line:

```markdown
<!-- markdownlint-disable MD013 -->
This is a really long line that I want to keep as-is for some reason
<!-- markdownlint-enable MD013 -->
```

### "I want to ignore a file"

Create `.markdownlintignore`:

```text
node_modules/
dist/
CHANGELOG.md
```

### "I want to see all available rules"

Visit: <https://github.com/DavidAnson/markdownlint/blob/main/doc/Rules.md>

## Best Practices

1. **Run linter before committing** - Catch errors early
2. **Use auto-fix first** - Let the tool handle most issues
3. **Fix manual errors gradually** - Don't need to fix everything at once
4. **Configure, don't disable** - Adjust rules to fit your needs rather than disabling them
5. **Keep line length reasonable** - Makes diffs easier to review
6. **Use consistent heading styles** - Improves readability

## Current Status

Last auto-fix run: Fixed **32 errors** automatically

Remaining issues: **29 errors** (mostly line length and missing code block languages)

Most common remaining errors:

- **MD013** - Line length violations (requires manual rewording)
- **MD040** - Missing language specifiers on code blocks
- **MD001** - Heading level increments
- **MD029** - Ordered list numbering

## Additional Tools (Optional)

### VS Code Extension

Install "markdownlint" extension by David Anson:

- Real-time linting as you type
- Quick fixes with one click
- Integrates with your `.markdownlint.json` config

### GitHub Actions (Future Enhancement)

Add automated markdown linting to PR checks:

```yaml
name: Markdown Lint
on: [pull_request]
jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: actions/setup-node@v3
      - run: npm install
      - run: npm run lint:md
```

## Resources

- [Markdownlint GitHub](https://github.com/DavidAnson/markdownlint)
- [Markdownlint Rules](https://github.com/DavidAnson/markdownlint/blob/main/doc/Rules.md)
- [Markdown Guide](https://www.markdownguide.org/)
- [GitHub Flavored Markdown Spec](https://github.github.com/gfm/)

---

**Last Updated:** 2025-11-18
**Repository:** learning (practice/educational use)
