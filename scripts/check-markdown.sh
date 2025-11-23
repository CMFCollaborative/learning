#!/bin/bash
# check-markdown.sh - Check markdown files for lint errors
# Usage: ./scripts/check-markdown.sh

set -e

echo "🔍 Checking markdown files for lint errors..."
echo ""

# Check if markdownlint is installed
if ! command -v markdownlint &> /dev/null; then
    echo "❌ markdownlint-cli is not installed"
    echo "📦 Install it with: npm install"
    exit 1
fi

# Run markdownlint
if markdownlint '**/*.md' --ignore node_modules; then
    echo ""
    echo "✅ All markdown files are clean!"
    exit 0
else
    echo ""
    echo "⚠️  Lint errors found!"
    echo "💡 Run './scripts/fix-markdown.sh' to auto-fix most issues"
    exit 1
fi
