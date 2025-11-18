#!/bin/bash
# fix-markdown.sh - Automatically fix markdown lint errors
# Usage: ./scripts/fix-markdown.sh

set -e

echo "🔧 Fixing markdown files..."
echo ""

# Check if markdownlint is installed
if ! command -v markdownlint &> /dev/null; then
    echo "❌ markdownlint-cli is not installed"
    echo "📦 Install it with: npm install"
    exit 1
fi

# Count files before fixing
MD_FILES=$(find . -name "*.md" -not -path "./node_modules/*" | wc -l)
echo "📄 Found $MD_FILES markdown file(s)"
echo ""

# Run markdownlint with --fix
if markdownlint '**/*.md' --ignore node_modules --fix; then
    echo ""
    echo "✅ Markdown files fixed successfully!"
    echo "💡 Review the changes with: git diff"
else
    echo ""
    echo "⚠️  Some issues couldn't be auto-fixed"
    echo "📖 Check the errors above and fix manually"
    exit 1
fi

# Show what changed
echo ""
echo "📊 Summary of changes:"
git diff --stat -- "*.md" || echo "No changes made"
