#!/bin/bash
# setup-pre-commit.sh - Install pre-commit hook for markdown linting
# Usage: ./scripts/setup-pre-commit.sh

set -e

HOOK_FILE=".git/hooks/pre-commit"

echo "⚙️  Setting up pre-commit hook for markdown linting..."
echo ""

# Create the pre-commit hook
cat > "$HOOK_FILE" << 'EOF'
#!/bin/bash
# Pre-commit hook - Check markdown files before commit

echo "🔍 Running markdown lint check..."

# Get list of staged markdown files
STAGED_MD_FILES=$(git diff --cached --name-only --diff-filter=ACM | grep '\.md$' || true)

if [ -z "$STAGED_MD_FILES" ]; then
    echo "ℹ️  No markdown files to check"
    exit 0
fi

# Check if markdownlint is installed
if ! command -v markdownlint &> /dev/null; then
    echo "⚠️  markdownlint-cli is not installed, skipping check"
    echo "💡 Install with: npm install"
    exit 0
fi

# Run markdownlint on staged files
echo "📄 Checking:"
echo "$STAGED_MD_FILES" | sed 's/^/  - /'
echo ""

if echo "$STAGED_MD_FILES" | xargs markdownlint; then
    echo "✅ Markdown lint check passed!"
    exit 0
else
    echo ""
    echo "❌ Markdown lint errors found!"
    echo "💡 Fix with: npm run lint:md:fix"
    echo "⏭️  Or commit anyway with: git commit --no-verify"
    exit 1
fi
EOF

# Make the hook executable
chmod +x "$HOOK_FILE"

echo "✅ Pre-commit hook installed at: $HOOK_FILE"
echo ""
echo "🎯 Now markdown files will be checked automatically before each commit!"
echo "💡 To bypass the check, use: git commit --no-verify"
