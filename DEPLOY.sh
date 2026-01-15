#!/bin/bash
# Quick deployment script for GitHub Pages

# This script helps you deploy the Reverse Chess Trainer PWA to GitHub Pages

echo "🚀 Reverse Chess Trainer - GitHub Pages Deployment"
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    exit 1
fi

# Variables
REPO_NAME="chess-trainer"
GITHUB_USERNAME="${1:-yourusername}"

echo "📋 Steps to deploy:"
echo ""
echo "1. Create a GitHub repository:"
echo "   - Go to https://github.com/new"
echo "   - Repository name: $REPO_NAME"
echo "   - Make it Public"
echo "   - Create repository"
echo ""

echo "2. Clone the repository:"
echo "   git clone https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"
echo "   cd $REPO_NAME"
echo ""

echo "3. Copy these files into the folder:"
echo "   - reverse_chess_trainer.html"
echo "   - manifest.json"
echo "   - sw.js"
echo ""

echo "4. Commit and push:"
echo "   git add ."
echo "   git commit -m 'Initial commit: Reverse Chess Trainer PWA'"
echo "   git push origin main"
echo ""

echo "5. Enable GitHub Pages:"
echo "   - Go to repository Settings"
echo "   - Navigate to Pages (left sidebar)"
echo "   - Source: Deploy from a branch"
echo "   - Branch: main"
echo "   - Save"
echo ""

echo "✅ Your app will be available at:"
echo "   https://$GITHUB_USERNAME.github.io/$REPO_NAME/"
echo ""

echo "📱 To install on your phone:"
echo "   - Android: Open in Chrome → Click 'Install app'"
echo "   - iPhone: Open in Safari → Tap Share → Add to Home Screen"
echo ""
