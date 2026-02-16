#!/bin/bash

# Bean Board - GitHub and Vercel Deployment Script
# This script will push your changes to GitHub and trigger Vercel deployment

echo "🚀 Starting Bean Board Deployment..."
echo ""

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Check if we're in the right directory
if [ ! -d "frontend" ]; then
    echo -e "${RED}❌ Error: frontend directory not found. Please run this script from the project root.${NC}"
    exit 1
fi

echo -e "${YELLOW}📋 Current Changes:${NC}"
git status --short
echo ""

# Check if there are changes to commit
if [ -z "$(git status --porcelain)" ]; then
    echo -e "${GREEN}✅ No changes to commit. Repository is up to date.${NC}"
else
    echo -e "${YELLOW}⚠️  You have uncommitted changes.${NC}"
    echo "Please commit them first using:"
    echo "  git add ."
    echo "  git commit -m 'your message'"
fi

echo ""
echo -e "${YELLOW}🔐 Checking GitHub Authentication...${NC}"

# Try to push to GitHub
echo "Attempting to push to GitHub..."
if git push origin main 2>&1 | tee /tmp/git_push_output.txt; then
    echo -e "${GREEN}✅ Successfully pushed to GitHub!${NC}"
    echo ""
    
    echo -e "${YELLOW}🔄 Vercel Deployment Status:${NC}"
    echo "Vercel is automatically deploying your changes..."
    echo ""
    echo "Check your deployment status at:"
    echo "  📱 https://vercel.com/dashboard"
    echo ""
    echo -e "${GREEN}✅ Deployment initiated!${NC}"
    echo ""
    echo "Your site will be live at your Vercel URL in 1-2 minutes."
    
else
    echo -e "${RED}❌ Failed to push to GitHub${NC}"
    echo ""
    echo -e "${YELLOW}Common Issues and Solutions:${NC}"
    echo ""
    echo "1. Authentication Error (403):"
    echo "   - You may need to authenticate with GitHub"
    echo "   - Run: git credential-osxkeychain erase"
    echo "   - Then try pushing again - you'll be prompted for credentials"
    echo ""
    echo "2. Use Personal Access Token:"
    echo "   a. Go to: https://github.com/settings/tokens"
    echo "   b. Click 'Generate new token (classic)'"
    echo "   c. Select scopes: repo, workflow"
    echo "   d. Copy the token"
    echo "   e. When prompted for password, use the token instead"
    echo ""
    echo "3. Switch to SSH (Recommended):"
    echo "   - Run: git remote set-url origin git@github.com:Akhi3011/Personal_2.git"
    echo "   - Set up SSH keys: https://docs.github.com/en/authentication/connecting-to-github-with-ssh"
    echo ""
    
    cat /tmp/git_push_output.txt
fi

# Cleanup
rm -f /tmp/git_push_output.txt

echo ""
echo -e "${YELLOW}📝 Manual Deployment Steps (if automatic failed):${NC}"
echo ""
echo "1. Push to GitHub manually:"
echo "   git push origin main"
echo ""
echo "2. Vercel will auto-deploy from GitHub"
echo "   Or manually deploy:"
echo "   - Go to https://vercel.com/dashboard"
echo "   - Click on your project"
echo "   - Click 'Deploy' or wait for auto-deployment"
echo ""
echo "3. Check deployment logs:"
echo "   - Visit: https://vercel.com/dashboard"
echo "   - Select your project"
echo "   - View deployment status and logs"
echo ""
