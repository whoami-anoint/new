#!/bin/bash

# Ensure the script stops if any command fails
set -e

# Ensure your local repository is up to date
git checkout main
git pull origin main
git checkout dev
git pull origin dev

# Merge changes from dev into main locally
git merge dev

# Handle merge conflicts if any
# Add your conflict resolution logic here

# Push changes to GitHub
git push origin main
