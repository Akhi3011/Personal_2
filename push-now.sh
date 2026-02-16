#!/bin/bash

# Bean Board - Final Push to GitHub
# Follow the steps below to complete the deployment

echo "🚀 Bean Board - GitHub Push Assistant"
echo "======================================"
echo ""
echo "✅ Changes are committed and ready to push!"
echo ""
echo "📋 FOLLOW THESE STEPS:"
echo ""
echo "STEP 1: Create Personal Access Token (OPEN IN YOUR BROWSER NOW)"
echo "--------------------------------------------------------------"
echo "I've opened GitHub for you. In the browser window:"
echo ""
echo "  1. Make sure you're logged in as 'Akhi3011' (check top-right corner)"
echo "  2. If not, click 'Sign out' and sign in as 'Akhi3011'"
echo "  3. You should see 'New personal access token (classic)' page"
echo "  4. Settings already filled:"
echo "     - Note: Bean Board Deployment"
echo "     - Scopes: ✅ repo, ✅ workflow"
echo "  5. Choose expiration: 90 days (recommended)"
echo "  6. Scroll down and click 'Generate token'"
echo "  7. COPY THE TOKEN (you won't see it again!)"
echo ""
echo "Press ENTER when you have copied the token..."
read

echo ""
echo "STEP 2: Push to GitHub"
echo "----------------------"
echo ""
echo "Now I'll push your changes. When prompted:"
echo ""
echo "  Username: Akhi3011"
echo "  Password: PASTE YOUR TOKEN (Cmd+V)"
echo ""
echo "Ready? Press ENTER to push..."
read

echo ""
echo "🔄 Pushing to GitHub..."
echo ""

if git push origin main; then
    echo ""
    echo "✅ SUCCESS! Your changes are now on GitHub! 🎉"
    echo ""
    echo "🌐 Vercel Deployment Status"
    echo "============================"
    echo ""
    echo "Vercel is automatically deploying your changes now..."
    echo ""
    echo "📍 Check status at: https://vercel.com/dashboard"
    echo ""
    echo "⏱️  Deployment usually takes 1-2 minutes"
    echo ""
    echo "✨ Your Bean Board logo will be live soon!"
    echo ""
    
    # Open Vercel dashboard
    open "https://vercel.com/dashboard"
    echo "📱 Opening Vercel dashboard for you..."
    
else
    echo ""
    echo "❌ Push failed. Let's try again..."
    echo ""
    echo "Common issues:"
    echo "  - Wrong username: Make sure you used 'Akhi3011'"
    echo "  - Wrong token: Make sure you pasted the full token"
    echo "  - Token expired: Generate a new one"
    echo ""
    echo "Want to try again? Run: ./push-now.sh"
fi
