#!/bin/bash

# Quick GitHub Authentication Fix and Push Script
# Run this to authenticate and push your Bean Board changes

echo "🔐 GitHub Authentication & Push Helper"
echo "======================================"
echo ""

# Navigate to project directory
cd "$(dirname "$0")"

echo "📍 Current directory: $(pwd)"
echo ""

echo "🔧 Setting correct GitHub username..."
git config credential.username Akhi3011

echo ""
echo "🚀 Attempting to push to GitHub..."
echo ""
echo "⚠️  If prompted for credentials:"
echo "   Username: Akhi3011"
echo "   Password: Use your Personal Access Token (NOT your GitHub password)"
echo ""
echo "Don't have a token? Get one here: https://github.com/settings/tokens"
echo ""

# Attempt push
if git push origin main; then
    echo ""
    echo "✅ SUCCESS! Changes pushed to GitHub!"
    echo ""
    echo "🌐 Vercel is now automatically deploying your changes..."
    echo ""
    echo "Check deployment status at:"
    echo "   https://vercel.com/dashboard"
    echo ""
    echo "Your Bean Board updates will be live in 1-2 minutes! 🎉"
else
    echo ""
    echo "❌ Push failed. Please try one of these solutions:"
    echo ""
    echo "1️⃣  Create Personal Access Token:"
    echo "   https://github.com/settings/tokens/new"
    echo "   → Select 'repo' scope"
    echo "   → Use token as password when prompted"
    echo ""
    echo "2️⃣  Clear old credentials and try again:"
    echo "   printf 'host=github.com\nprotocol=https\n' | git credential-osxkeychain erase"
    echo "   git push origin main"
    echo ""
    echo "3️⃣  Use SSH instead:"
    echo "   git remote set-url origin git@github.com:Akhi3011/Personal_2.git"
    echo "   git push origin main"
fi
